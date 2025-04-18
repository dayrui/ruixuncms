<?php namespace Phpcmf\Model\Module;


// 模型类
// 文档状态
// 1 ~ 8 审核流程
// 0 被退回
// 9 正常
// 10 回收站

class Content extends \Phpcmf\Model {

    public $siteid; // 站点id
    public $dirname;
    public $mytable; // 模块表名称
    public $mysharetable; // 共享模块表名称
    public $is_hcategory; // 模块不使用栏目
    public $is_share; // 是否共享模块

    // 初始化模块
    public function _init($dir, $siteid = SITE_ID, $is_share = 'null') {
        $this->siteid = $siteid;
        $this->dirname = $dir;
        $this->mytable = dr_module_table_prefix($dir, $siteid);
        $this->mysharetable = $siteid.'_share';
        if ($is_share == 'null') {
            $this->is_share = (int)\Phpcmf\Service::L('cache')->get('module-'.$siteid.'-'.$dir, 'share');
        } else {
            $this->is_share = $is_share;
        }
        return $this;
    }

    // 兼容提示
    public function save($id, $name, $value, $where = '') {
        log_message('error', FC_NOW_URL.'->save()方法已经失效，请改为->save_content()，查看教程：https://www.xunruicms.com/doc/1076.html');
        return dr_return_data(0, '->save()方法已经失效，请改为->save_content()');
    }

    // 保存内容
    public function save_content($id, $data, $old = []) {


        // 二次开发函数
        $rt = $this->_content_post_before($id, $data, $old);

        // 特殊返回值
        if (isset($rt['code']) && isset($rt['msg'])) {
            if ($rt['code'] == 0) {
                return dr_return_data(0, $rt['msg']);
            }
            $data = $rt['data'];
        } else {
            // 兼容之前的写法
            $data = $rt;
        }

        // 挂钩点 模块内容发布或修改之前
        $rt = \Phpcmf\Hooks::trigger_callback('module_content_before', $data);
        if ($rt && isset($rt['code'])) {
            // 钩子中存在特殊返回值
            if ($rt['code'] == 0) {
                return dr_return_data(0, $rt['msg']);
            }
            $data = $rt['data'];
        }

        // 防止时间字段入库为空
        !$data[1]['updatetime'] && $data[1]['updatetime'] = SYS_TIME;

        $data[1]['uid'] = intval($data[1]['uid']);
        $data[1]['author'] = (string)$data[1]['author'];

        // 昵称为空的情况下
        /*
        if (!$data[1]['author'] && $data[1]['uid']) {
            $user = $this->table('member')->get($data[1]['uid']);
            if ($user) {
                $data[1]['author'] = $user['username'];
            }
        }*/

        if (!$id) {
            // 新增
            !$data[1]['inputtime'] && $data[1]['inputtime'] = $data[1]['updatetime']; // 防止时间字段入库为空
            // 生成索引id
            $nid = $this->index($id, $data);
            if (!$nid) {
                return dr_return_data(0, dr_lang('内容索引id生成失败'));
            }
            $data[0]['id'] = $data[1]['id'] = $nid;
            $is_add = 1;
        } else {
            // 更新
            $is_add = 0;
            $this->index($id, array( 1 => array(
                'uid' => $data[1]['uid'],
                'catid' => $data[1]['catid'],
                'status' => $data[1]['status'],
                'inputtime' => $data[1]['updatetime'],
            )));
            $data[0]['id'] = $data[1]['id'] = $id;
            // 如果来自审核页面,且本次通过
            if (defined('IS_MODULE_VERIFY') && $data[1]['status'] == 9
               && !$this->db->table($this->mytable)->where('id', $id)->countAllResults()) {
                $id = 0;
            }
        }

        // 表示审核文章机制
        if ($data[1]['status'] >= 0 && $data[1]['status'] < 9) {
            // 存储到审核表中去
            if (\Phpcmf\Service::L('input')->post('sync_cat')) {
                // 同步栏目设置进审核表
                $data[0]['sync_cat'] = \Phpcmf\Service::L('input')->post('sync_cat');
            }
            $backinfo = '';
            if (IS_ADMIN) {
                if (!\Phpcmf\Service::M('auth')->is_post_user()) {
                    $backinfo = dr_array2string([
                        'uid' => $this->uid,
                        'author' => \Phpcmf\Service::C()->admin['username'],
                        'optiontime' => SYS_TIME,
                        'flag' => $_POST['flag'],
                        'delete' => $_POST['delete'],
                        'backcontent' => $_POST['verify']['msg']
                    ]);
                } else {
                    $backinfo = dr_array2string([
                        'flag' => $_POST['flag'],
                    ]);
                }
            }
            $verify = $this->table($this->mytable.'_verify')->get($data[1]['id']);
            if ($verify) {
				// 修改审核
                // 防止空标题通知
                if (!$data[1]['title']) {
                    if (isset($old['title']) && $old['title']) {
                        $data[1]['title'] = $old['title'];
                    } else {
                        $data[1]['title'] = '#id#'.$data[1]['id'].'#';
                    }
                }
                $value = array_merge($data[0], $data[1]);
                $update = [
                    'catid' => $data[1]['catid'],
                    'status' => (int)$data[1]['status'],
					'islock' => IS_ADMIN ? 1 : 0,
                    'content' => dr_array2string($value),
                    'backuid' => IS_ADMIN && !\Phpcmf\Service::M('auth')->is_post_user() ? $this->uid : 0,
                    'backinfo' => $backinfo,
                ];
                $rt = $this->table($this->mytable.'_verify')->update($data[1]['id'], $update);
                if (!$rt['code']) {
                    return $rt;
                }
                // 清除以前的提醒
                $this->db->table('admin_notice')->where('uri', $this->dirname.'/verify/edit:id/'.$data[1]['id'])->update([
                    'status' => 3,
                    'updatetime' => SYS_TIME,
                ]);

                // 挂钩点 模块内容审核处理之后
                $verify['old'] = $old;
                $verify = array_merge($verify, $update);
                \Phpcmf\Hooks::trigger('module_verify_after', $verify);
                // 执行审核后的回调
                $this->_call_verify($value, $verify);
                // 通知管理员
                if ($data[1]['status'] > 0) {
                    \Phpcmf\Service::M('member')->admin_notice(
                        $this->siteid,
                        'content',
                        IS_ADMIN ? dr_member_info($data[1]['uid']) : \Phpcmf\Service::C()->member,
                        dr_lang('%s【%s】审核', \Phpcmf\Service::C()->module['name'], $data[1]['title']), $this->dirname.'/verify/edit:id/'.$data[1]['id'],
                        $this->_get_verify_roleid($data[1]['catid'], $data[1]['status'],  IS_ADMIN ? dr_member_info($data[1]['uid']) : \Phpcmf\Service::C()->member)
                    );
                }
                // 通知用户
                if (IS_ADMIN && !\Phpcmf\Service::M('auth')->is_post_user() && $data[1]['status'] == 0) {
                    \Phpcmf\Service::M('member')->notice(
                        $data[1]['uid'],
                        3,
                        dr_lang('《%s》审核被拒绝', $data[1]['title']),
                        \Phpcmf\Service::L('router')->member_url($this->dirname.'/verify/index')
                    );
                    // 投稿者通知
                    $member = dr_member_info($data[1]['uid']);
                    if ($member && $member['is_admin']) {
                        \Phpcmf\Service::M('member')->admin_notice(
                            SITE_ID,
                            'content',
                            $member,
                            dr_lang('《%s》审核被拒绝', $data[1]['title']),
                            $this->dirname.'/verify/edit:id/'.$data[1]['id'],
                            ['to_uid' => $data[1]['uid'], 'to_rid' => 0]
                        );
                    }
                }
            } else {
				// 新增审核
                $role = $this->_get_verify_roleid($data[1]['catid'], $data[1]['status'], IS_ADMIN ? dr_member_info($data[1]['uid']) : \Phpcmf\Service::C()->member);

                // 防止空标题通知
                if (!$data[1]['title']) {
                    if (isset($old['title']) && $old['title']) {
                        $data[1]['title'] = $old['title'];
                    } else {
                        $data[1]['title'] = '#id#'.$data[1]['id'].'#';
                    }
                }
                $value = array_merge($data[0], $data[1]);
                $verify = [
                    'id' => (int)$data[1]['id'],
                    'uid' => (int)$data[1]['uid'],
                    'vid' => (int)$role['verify_id'],
                    'isnew' => $id && $this->table(dr_module_ctable($this->mytable, dr_cat_value($data[1]['catid'])))->where('id', $id)->counts() ? 0 : 1,
					'islock' => 0,
                    'catid' => (int)$data[1]['catid'],
                    'author' => $data[1]['author'],
                    'status' => (int)$data[1]['status'],
                    'content' => dr_array2string($value),
                    'backuid' => IS_ADMIN ? $this->uid : 0,
                    'backinfo' => $backinfo,
                    'inputtime' => SYS_TIME
                ];
                $rt = $this->table($this->mytable.'_verify')->replace($verify);
                if (!$rt['code']) {
                    // 删除索引
                    $this->table($this->mytable.'_index')->delete($data[1]['id']);
                    return $rt;
                }
				if (IS_ADMIN && defined('IS_MODULE_TG') && $data[1]['status'] == 0) {
					// 后台退稿
					if (\Phpcmf\Service::L('input')->get('clear')) {
                        // 删除文件
                        $this->_delete_show_file($old);
						$this->table($this->mytable)->delete($data[1]['id']);
						$this->table($this->mytable.'_category_data')->delete($data[1]['id']);
						$this->table($this->mytable.'_data_'.(int)$data[1]['tableid'])->delete($data[1]['id']);
					}
					// 通知用户
					\Phpcmf\Service::M('member')->notice(
						$data[1]['uid'],
						3,
						dr_lang('《%s》审核被拒绝', $data[1]['title']),
						\Phpcmf\Service::L('router')->member_url($this->dirname.'/verify/index')
					);
                    // 投稿者通知
                    $member = dr_member_info($data[1]['uid']);
                    if ($member && $member['is_admin']) {
                        \Phpcmf\Service::M('member')->admin_notice(
                            SITE_ID,
                            'content',
                            $member,
                            dr_lang('《%s》审核被拒绝', $data[1]['title']),
                            $this->dirname.'/verify/edit:id/'.$data[1]['id'],
                            ['to_uid' => $data[1]['uid'], 'to_rid' => 0]
                        );
                    }
				} else {
					// 通知管理员
					\Phpcmf\Service::M('member')->admin_notice(
						$this->siteid,
						'content',
						\Phpcmf\Service::C()->member,
						dr_lang('%s【%s】审核', \Phpcmf\Service::C()->module['name'], $data[1]['title']), $this->dirname.'/verify/edit:id/'.$data[1]['id'],
                        $role
					);
				}
                // 挂钩点 模块内容审核处理之后
                $verify['old'] = $old;
                \Phpcmf\Hooks::trigger('module_verify_after', $verify);
                // 执行审核后的回调
                $this->_call_verify($value, $verify);
            }
            return dr_return_data($verify['id'], 'ok', $verify);
        } elseif (defined('IS_MODULE_VERIFY') && $data[1]['status'] == 9 &&
            isset($_POST['verify_posttime']) && $_POST['verify_posttime'] ) {
            // 审核完成进行定时发布的动作
            $post_time = (int)strtotime(\Phpcmf\Service::L('input')->post('verify_posttime'));
            if (SYS_TIME > $post_time) {
                return dr_return_data(0, dr_lang('定时发布时间不正确'), $data);
            }
            // 保存定时发布数据
            $rt = $this->save_post_time($id, $data, $post_time);
            if ($rt['code']) {
                $rs = $this->_verify_post($data);
                if ($rs) {
                    return dr_return_data(0, $rs, $data);
                }
                $this->_verify_success($data, $old);
                \Phpcmf\Service::C()->_json(1, dr_lang('操作成功，已设为定时发布'));
            }
            return $rt;
        } elseif (defined('IS_MODULE_VERIFY') && $data[1]['status'] == 9
            && isset($old['verify']['isnew']) && $old['verify']['isnew'] == 2) {
            //审核完成 删除回收站
            $msg = dr_lang('审核成功');
            if (isset($old['verify']['backinfo']['delete']) && $old['verify']['backinfo']['delete']) {
                $msg = $old['verify']['backinfo']['delete'];
            }
            $this->delete_to_recycle([$data[1]['id']], $msg, 1);
            // 删除审核表
            $this->table($this->mytable.'_verify')->delete($data[1]['id']);
            \Phpcmf\Service::C()->_json(1, dr_lang('删除成功'));
        }

        if (defined('IS_MODULE_VERIFY') && isset($old['verify']['isnew']) && $old['verify']['isnew']) {
            // 新增审核成功的
            $rs = $this->_verify_post($data);
            if ($rs) {
                return dr_return_data(0, $rs, $data);
            }
        }

        $cdata = [];

        // 筛选出来栏目模型字段
        if (!$this->is_hcategory && $catfield = \Phpcmf\Service::C()->module['category_data_field']) {
            foreach ($data[1] as $i => $t) {
                if (strpos($i, '_lng') || strpos($i, '_lat')) {
                    $i = str_replace(array('_lng', '_lat'), '', $i);
                    if (isset($catfield[$i]) && $catfield[$i]['ismain'] == 1 && !isset($cdata[$i.'_lng'])) {
                        $cdata[$i.'_lng'] = $data[1][$i.'_lng'];
                        $cdata[$i.'_lat'] = $data[1][$i.'_lat'];
                        unset($data[1][$i.'_lng'], $data[1][$i.'_lat']);
                    }
                } else {
                    if (isset($catfield[$i]) && $catfield[$i]['ismain'] == 1) {
                        $cdata[$i] = $t;
                        unset($data[1][$i]);
                    }
                }
            }
        }

        // 主表数据
        $main = isset($data[1]) ? $data[1] : $data;
        $mtable = dr_module_ctable($this->mytable, dr_cat_value($data[1]['catid']));
        if ($id) {
            // 更新数据
            //$main['hits'] = 0;\
            $rt = $this->table($mtable)->update($id, $main);
            if (!$rt['code']) {
                return $rt;
            }
            if (defined('MODULE_CTABLE_CP_MAIN') && $this->mytable != $mtable) {
                $this->table($this->mytable)->update($id, $main);
            }
            $tid = intval($old['tableid']);
        } else {
            // 新增数据
            $main['hits'] = (int)$main['hits'];
            $main['tableid'] = 0;
            $main['displayorder'] = (int)$main['displayorder'];
            $rt = $this->table($mtable)->replace($main);
            if (!$rt['code']) {
                // 删除索引
                $this->table($this->mytable.'_index')->delete($data[1]['id']);
                return $rt;
            }
            if (defined('MODULE_CTABLE_CP_MAIN') && $this->mytable != $mtable) {
                $this->table($this->mytable)->replace($main);
            }
            // 副表数据量无限分表
            $tid = $this->_table_id($data[1]['id']);
            $this->table($mtable)->update($data[1]['id'], ['tableid' => $tid]);
        }

        // 判断附表是否存在,不存在则创建
        $this->is_data_table($this->mytable.'_data_', $tid);
        $table = $this->mytable.'_data_'.$tid;
        if ($id) {
            if ($data[0]) {
                $rt = $this->table($table)->update($id, $data[0]);
                if ($rt['msg']) {
                    // 删除主表
                    $this->table($this->mytable)->delete($id);
                    // 删除索引
                    $this->table($this->mytable.'_index')->delete($id);
                    return $rt;
                }
            } else {
                // 有种情况就是附表没有数据;
            }
        } else {
            $data[0]['id'] = $data[1]['id']; // 录入主表id
            $rt = $this->table($table)->replace($data[0]);
            if ($rt['msg']) {
                // 删除主表
                $this->table($this->mytable)->delete($data[1]['id']);
                // 删除索引
                $this->table($this->mytable.'_index')->delete($data[1]['id']);
                return $rt;
            }
        }

        // 存储栏目表
        if ($cdata) {
            $cdata['id'] = $cid = $data[1]['id'];
            $cdata['uid'] = $data[1]['uid'];
            $cdata['catid'] = $data[1]['catid'];
            // 查询栏目数据表是否存在该数据
            $table = $this->mytable.'_category_data';
            $is_update = $this->db->table($table)->where('id', $cid)->countAllResults();
            if ($is_update) {
                // 更新
                $this->table($table)->update($cid, $cdata);
            } else {
                // 新增
                $this->table($table)->replace($cdata);
            }
        }

        // 更新url
        $data[1]['url'] = $this->update_url($data[1], dr_module_show_url(\Phpcmf\Service::C()->module, $data[1]));

        // 修改内容是更新同步栏目相关数据
        if ($id && $old['link_id']) {
            $this->sync_update_cat($old['link_id'], $data);
        }

        // 来源判断
        if (defined('IS_MODULE_VERIFY')) {
            // 如果来自审核页面,表示完成审核
            $this->_verify_success($data, $old);
            if (isset($old['verify']['isnew']) && $old['verify']['isnew'] == 1) {
                $is_add = 1; // 新增审核成功的
            }
        } elseif (defined('IS_MODULE_RECYCLE')) {
            // 如果来自回收站就删除回收站内容
            $this->db->table($this->mytable.'_recycle')->where('cid', $id)->delete();
        }

        // 表示新发布
        if ($is_add) {
            $member = dr_member_info($data[1]['uid']);
            if ($member && IS_USE_MEMBER) {
                // 发布内容之后
                $mob = \Phpcmf\Service::M('member', 'member');
                if (method_exists($mob, 'module_content_after')) {
                    $mob->module_content_after(\Phpcmf\Service::C()->module, $data, $member);
                }
            }
        } else {
            // 修改内容
            if ($data[1]['catid'] != $old['catid']) {
                // 变更栏目的一些联动操作
                $this->_edit_category_id($data[1], $data[1]['catid']);
            }
            if ($data[1]['uid'] != $old['uid']) {
                // 变更作者的一些联动操作
                $this->_edit_author_id($data[1]);
            }
        }

        // 挂钩点 模块内容发布或修改完成之后
        \Phpcmf\Hooks::trigger('module_content_after', $data, $old);

        // 二次开发函数
        $this->_content_post_after($id, $data, $old);

        \Phpcmf\Service::L('cache')->clear('module_'.$this->dirname.'_show_id_'.$id);

        return dr_return_data($data[1]['id'], 'ok', $data);
    }

    // 定时发布
    public function post_time($row) {

        if (!$row) {
            return dr_return_data(0, dr_lang('内容不存在'));
        }

        $data = dr_string2array($row['content']);
        if (!$data) {
            return dr_return_data(0, dr_lang('内容不存在'));
        }

        // 主表字段
        $fields[1] = \Phpcmf\Service::C()->get_cache('table-'.$this->siteid, $this->dbprefix($this->siteid.'_'.$this->dirname));
        $cache = \Phpcmf\Service::C()->get_cache('table-'.$this->siteid, $this->dbprefix($this->siteid.'_'.$this->dirname.'_category_data'));
        $cache && $fields[1] = array_merge($fields[1], $cache);
        // 附表字段
        $fields[0] = \Phpcmf\Service::C()->get_cache('table-'.$this->siteid, $this->dbprefix($this->siteid.'_'.$this->dirname.'_data_0'));

        // 去重复
        $fields[0] = array_unique($fields[0]);
        $fields[1] = array_unique($fields[1]);

        $save = [];

        // 主表附表归类
        foreach ($fields as $ismain => $field) {
            foreach ($field as $name) {
                isset($data[$name]) && $save[$ismain][$name] = $data[$name];
            }
        }

        // 系统字段
        foreach (['inputip', 'hits', 'displayorder', 'author', 'uid', 'catid'] as $name) {
            $save[1][$name] = $data[$name];
        }

        $save[0]['uid'] = $data['uid'];
        $save[0]['catid'] = $data['catid'];

        $save[1]['url'] = '';
        $save[1]['status'] = 9;
        $save[1]['link_id'] = 0;

        $time = min(SYS_TIME, $row['posttime']);
        !$time && $time = SYS_TIME;
        $save[1]['updatetime'] = $save[1]['inputtime'] = $time;

        if ($save[1]['title'] && $this->db->table($this->mytable)->where('title', $save[1]['title'])->countAllResults()) {
            $msg = dr_lang('已经有相同的%s存在', isset(\Phpcmf\Service::C()->module['field']['title']['name']) ? \Phpcmf\Service::C()->module['field']['title']['name'] : dr_lang('主题'));
            $this->db->table($this->mytable.'_time')->where('id', $row['id'])->update(['result' => $msg]);
            return dr_return_data(0, $msg);
        }

        $rt = $this->save_content(0, $save);
        if ($rt['code']) {
            // 发布成功
            $save[1]['id'] = $rt['code'];
            $this->db->table($this->mytable.'_time')->where('id', $row['id'])->delete();
            $prefix = $this->dbprefix($this->siteid.'_'.$this->dirname);
            $this->db->table('attachment')->where('related', $prefix.'_time-'.$row['id'])->update([
                'related' => $prefix.'-'.$rt['code']
            ]);
            $this->db->table('attachment_data')->where('related', $prefix.'_time-'.$row['id'])->update([
                'related' => $prefix.'-'.$rt['code']
            ]);
            // 推荐位
            if ($data['flag']) {
                $this->delete_flag($save[1]['id'], 'all');
                foreach ($data['flag'] as $i) {
                    if (isset(\Phpcmf\Service::C()->module['setting']['flag'][$i])) {
                        $this->insert_flag((int)$i, $save[1]['id'], $save[1]['uid'], $save[1]['catid']);
                    }
                }
            }
            // 生成权限文件
            $cat = dr_cat_value(\Phpcmf\Service::C()->module['mid'], $data['catid']);
            if ($cat['setting']['html']) {
                $rt['data'] = dr_web_prefix('index.php?'.($this->is_share ? '' : 's='.$this->dirname.'&').'c=html&m=showfile&id='.$rt['code']);
                // 生成内容
                $atcode = 'chtml_'.$this->siteid.'_'.$this->dirname.'_'.$rt['code'];
                \Phpcmf\Service::L('cache')->set_auth_data($atcode, $rt['code'], $this->siteid);
                dr_catcher_data(SITE_URL.'index.php?s='.MOD_DIR.'&c=html&m=showfile&id='.$rt['code'].'&atcode='.$atcode);
                // 生成列表
                $atcode = 'chtml_cat_'.$this->siteid.'_'.$this->dirname.'_'.$data['catid'];
                \Phpcmf\Service::L('cache')->set_auth_data($atcode, $data['catid'], $this->siteid);
                dr_catcher_data(SITE_URL.'index.php?s='.MOD_DIR.'&c=html&m=categoryfile&id='.$data['catid'].'&atcode='.$atcode);
            }
        } else {
            $this->db->table($this->mytable.'_time')->where('id', $row['id'])->update(['result' => $rt['msg']]);
        }

        return $rt;
    }

    // 二次验证
    protected function _verify_post($data) {

        // 新增审核成功的 二次验证
        $member = \Phpcmf\Service::M('member')->member_info($data[1]['uid']);
        if ($member) {
            // 金币验证
            $score = \Phpcmf\Service::M('member_auth')->category_auth(\Phpcmf\Service::C()->module, $data[1]['catid'], 'score', $member);
            if ((int)$score + (int)$member['score'] < 0) {
                return dr_lang(SITE_SCORE.'不足，当前栏目需要%s'.SITE_SCORE, abs($score));
            }
            // 金额验证
            $money = \Phpcmf\Service::M('member_auth')->category_auth(\Phpcmf\Service::C()->module, $data[1]['catid'], 'money', $member);
            if ((float)$money + (float)$member['money'] < 0) {
                return dr_lang('余额不足，当前栏目需要%s元', abs($money));
            }
        }

        return '';
    }

    // 审核成功执行
    protected function _verify_success($data, $old) {

        // 投稿者通知管理员
        $member = dr_member_info($data[1]['uid']);
        if ($member && $member['is_admin']) {
            \Phpcmf\Service::M('member')->admin_notice(
                SITE_ID,
                'content',
                $member,
                dr_lang('《%s》审核成功', $data[1]['title']),
                $this->dirname.'/home/edit:id/'.$data[1]['id'],
                ['to_uid' => $data[1]['uid'], 'to_rid' => 0]
            );
        }
        if (IS_USE_MEMBER) {
            // 通知用户
            \Phpcmf\Service::L('Notice')->send_notice('module_content_verify_1', $data[1]);
        }
        $value = array_merge($data[1], $data[0]);
        $verify = $this->table($this->mytable.'_verify')->get($data[1]['id']);
        $verify['status'] = 9;
        $verify['content'] = dr_array2string($value);
        $verify['backuid'] = IS_ADMIN ? $this->uid : 0;
        $verify['backinfo'] = dr_array2string($old['verify']['backinfo']);

        // 删除审核表
        $this->table($this->mytable.'_verify')->delete($data[1]['id']);

        // 挂钩点 模块内容审核处理之后
        \Phpcmf\Hooks::trigger('module_verify_after', $verify);

        // 执行审核后的回调
        $this->_call_verify($value, $verify);

        return '';
    }

    // 验证栏目操作权限 后台
    public function admin_category_auth($cat, $act) {
        return 1;
    }

    // 验证栏目操作权限 会员
    public function member_category_auth($cat, $act) {
        return 1;
    }

    // 查询id
    public function find_id($field, $value) {

        $row = $this->db->table($this->mytable)->select('id')->where($field, $value)->get()->getRowArray();

        return $row ? intval($row['id']) : 0;
    }

    // 删除推荐位
    public function delete_flag($id, $flag) {
        if (is_array($flag)) {
            $this->db->table($this->mytable.'_flag')->where('id', $id)->whereIn('flag', $flag)->delete();
        } elseif ($flag == 'all') {
            $this->db->table($this->mytable.'_flag')->where('id', $id)->delete();
        } else {
            $this->db->table($this->mytable.'_flag')->where('id', $id)->where('flag', (int)$flag)->delete();
        }
    }

    // 新增推荐位
    public function insert_flag($flag, $id, $uid, $catid) {

        if ($this->table($this->mytable.'_flag')
            ->where('id', $id)
            ->where('uid', $uid)
            ->where('flag', $flag)
            ->where('catid', $catid)->counts()) {
            return;
        }

        $this->db->table($this->mytable.'_flag')->replace([
            'id' => $id,
            'uid' => $uid,
            'flag' => $flag,
            'catid' => $catid,
        ]);
    }

    // 获取推荐位
    public function get_flag($id) {

        $rt = [];
        $data = $this->table($this->mytable.'_flag')->where('id', $id)->getAll();
        if ($data) {
            foreach ($data as $t) {
                $rt[] = $t['flag'];
            }
        }

        return $rt;
    }

    // 获取关键词列表
    public function get_tag_url($name) {
        return \Phpcmf\Service::L('router')->get_tag_url($name, $this->dirname);
    }

    /**
     * 保存内容的草稿
     *
     * @param	intval	$id 	草稿id
     * @param	array	$data	数据数组
     * @return  intval  $id     草稿id
     */
    public function insert_draft($id, $data) {

        $save = [
            'uid' => $this->uid,
            'cid' => intval($data[1]['id']),
            'catid' => intval($data[1]['catid']),
            'content' => dr_array2string($data[0] ? array_merge($data[0], $data[1]) : $data[1]),
            'inputtime' => SYS_TIME
        ];

        // 判断草稿是否存在，不存在就插入
        if ($id && $this->db->table($this->mytable.'_draft')->where('id', $id)->countAllResults()) {
            $rt = $this->table($this->mytable.'_draft')->update($id, $save);
        } else {
            $rt = $this->table($this->mytable.'_draft')->insert($save);
        }

        return $rt;
    }

    /**
     * 保存定时发布内容
     *
     * @param	intval	$id 	id
     * @param	array	$data	数据数组
     * @param	intval	$time 	发布时间
     */
    public function save_post_time($id, $data, $time) {

        $post = $data[0] ? array_merge($data[0], $data[1]) : $data[1];
        $post['flag'] = \Phpcmf\Service::L('input')->post('flag');

        $save = [
            'uid' => intval($data[1]['uid']),
            'catid' => intval($data[1]['catid']),
            'content' => dr_array2string($post),
            'result' => '',
            'posttime' => $time,
            'inputtime' => SYS_TIME
        ];

        // 判断是否存在，不存在就插入
        if ($id) {
            $rt = $this->table($this->mytable.'_time')->update($id, $save);
        } else {
            $rt = $this->table($this->mytable.'_time')->insert($save);
        }

        return dr_return_data($rt['code'], $rt['code'] ? dr_lang('定时内容保存成功') : $rt['msg']);
    }

    // 更新阅读量
    public function update_hits($id, $is_qx = 0) {

        $table = $this->mytable;
        $data = $this->db->table($this->mytable)->where('id', $id)->select('hits,updatetime')->get()->getRowArray();
        if (!$data) {
            // 主表不存在尝试判断分表
            $index = $this->table($this->mytable.'_index')->get($id);
            if (!$index) {
                return dr_return_data(0, dr_lang('阅读统计: 模块内容不存在'));
            }
            $table = dr_module_ctable($this->mytable, dr_cat_value($index['catid']));
            $data = $this->table($table)->get($id);
            if (!$data) {
                return dr_return_data(0, dr_lang('阅读统计: 模块内容不存在'));
            }
        }

        $name = 'module-'.md5($table).'-'.$id;
        if (!$is_qx && \Phpcmf\Service::L('input')->get_cookie($name)) {
            return dr_return_data(1, $data['hits'], '不重复统计');
        }

        $plus = max(1, defined('IS_HITS_PLUS') && is_numeric(IS_HITS_PLUS) ? intval(IS_HITS_PLUS) : 1);
        $hits = (int)$data['hits'] + $plus;

        // 更新主表
        $this->db->table($table)->where('id', $id)->set('hits', $hits)->update();

        // 获取统计数据
        $total = $this->db->table($this->mytable.'_hits')->where('id', $id)->get()->getRowArray();
        if (!$total) {
            $total['day_hits'] = $total['week_hits'] = $total['month_hits'] = $total['year_hits'] = 0;
            $total['day_time'] = $total['week_time'] = $total['month_time'] = $total['year_time'] = SYS_TIME;
        } else {
            // 按类别归零
            if (date('Ymd', $total['day_time']) != date('Ymd', SYS_TIME)) {
                $total['day_time'] = SYS_TIME;
                $total['day_hits'] = 0;
            }
            if (date('YW', $total['week_time']) != date('YW', SYS_TIME)) {
                $total['week_time'] = SYS_TIME;
                $total['week_hits'] = 0;
            }
            if (date('Ym', $total['month_time']) != date('Ym', SYS_TIME)) {
                $total['month_time'] = SYS_TIME;
                $total['month_hits'] = 0;
            }
            if (date('Y', $total['year_time']) != date('Y', SYS_TIME)) {
                $total['year_time'] = SYS_TIME;
                $total['year_hits'] = 0;
            }
        }

        // 更新到统计表
        $save = [
            'id' => $id,
            'hits' => $hits,
            'day_hits' => $total['day_hits'] + $plus,
            'day_time' => $total['day_time'],
            'week_hits' => $total['week_hits'] + $plus,
            'week_time' => $total['week_time'],
            'month_hits' => $total['month_hits'] + $plus,
            'month_time' => $total['month_time'],
            'year_hits' => $total['year_hits'] + $plus,
            'year_time' => $total['year_time'],
        ];
        \Phpcmf\Service::M()->table($this->mytable.'_hits')->replace($save);

        //session()->save($name, $id, 300); 考虑并发性能还是不用session了
        \Phpcmf\Service::L('input')->set_cookie($name, $id, 300);

        // 输出
        return dr_return_data(1, $hits);

    }

    // 更新url
    public function update_url($row, $url) {
        $table = dr_module_ctable($this->mytable, dr_cat_value($row['catid']));
        $this->table($table)->update((int)$row['id'], ['url' => $url]);
        if (defined('MODULE_CTABLE_CP_MAIN') && $table != $this->mytable) {
            $this->table($this->mytable)->update((int)$row['id'], ['url' => $url]);
        }
        return $url;
    }

    // 获取草稿列表
    public function get_draft_list($where) {

        $rt = [];
        $data = $this->table($this->mytable.'_draft')->where('uid', $this->uid)->where($where)->order_by('inputtime desc')->getAll(10);
        if ($data) {
            foreach ($data as $t) {
                $rt[$t['id']] = dr_string2array($t['content']);
                $rt[$t['id']]['id'] = $t['id'];
                $rt[$t['id']]['inputtime'] = $t['inputtime'];
            }
        }

        return $rt;
    }

    // 获取草稿内容
    public function get_draft($id) {

        $data = $this->db
            ->table($this->mytable.'_draft')
            ->where('uid', $this->uid)
            ->where('id', $id)
            ->get()->getRowArray();
        if (!$data) {
            return NULL;
        }

        $body = dr_string2array($data['content']);
        $body['draft']['cid'] = $data['cid'];
        $body['draft']['catid'] = $body['catid'] = $data['catid'];

        return $body;
    }

    // 删除草稿
    public function delete_draft($id) {
        $this->table($this->mytable.'_draft')->delete($id, 'uid='.$this->uid);
        // 删附件
        SYS_ATTACHMENT_DB && \Phpcmf\Service::M('Attachment')->id_delete(
            $this->member,
            [$id],
            $this->dbprefix($this->mytable.'_draft-'.$id)
        );
    }

    /**
     * 生成/更新索引数据
     *
     * @param	array	$data
     * @return	array
     */
    public function index($id, $data) {

        $in = [
            'uid' => (int)$data[1]['uid'],
            'catid' => (int)$data[1]['catid'],
            'status' => (int)$data[1]['status'],
            'inputtime' => (int)$data[1]['inputtime'],
        ];

        if ($this->is_share) {
            // 共享模块
            if ($id) {
                // 修改
                //$this->table($this->mysharetable.'_index')->replace(['id' => $id, 'mid' => $this->dirname ]);
                $in['id'] = $id;
            } else {
                // 新增
                $rt = $this->table($this->mysharetable.'_index')->replace(['mid' => $this->dirname]);
                $id = $in['id'] = (int)$rt['code'];
            }
            // 更新模块索引
            $this->table($this->mytable.'_index')->replace($in);
        } else {
            // 独立模块
            if ($id) {
                // 修改
                $in['id'] = $id;
                $this->table($this->mytable.'_index')->replace($in);
            } else {
                // 新增
                $rt = $this->table($this->mytable.'_index')->replace($in);
                $id = (int)$rt['code'];
            }
        }

        return $id;
    }

    // 按自定义字段获取内容
    public function find_row($field, $value) {

        if (!$field) {
            return [];
        } elseif (!strlen($value)) {
            return [];
        } elseif (!$this->is_field_exists($this->mytable, $field)) {
            return [];
        }

        return $this->db->table($this->mytable)->where($field, dr_safe_replace($value))->get()->getRowArray();
    }

    // 获取内容
    public function get_data($id, $is_table = 0, $param = [], $is_more = 0) {

        $cdata = $tables = $row = [];

        // 主表
        $tables[] = $table = $this->mytable;

        if (!$id) {
            if (!$param) {
                return [];
            } elseif (!$param['field']) {
                return [];
            }
			$row = $this->find_row($param['field'], $param['value']);
            if (!$row) {
                return [];
            }
            $id = $row['id'];
        } else {
            if (defined('MODULE_CTABLE_CP_MAIN')) {
                // 复制表模式优先判断分表
                $index = $this->table($table.'_index')->get($id);
                if (!$index) {
                    return [];
                }
                $row = $this->table(dr_module_ctable($table, dr_cat_value($index['catid'])))->get($id);
                if (!$row) {
                    $row = $this->table($table)->get($id);
                    if (!$row) {
                        return [];
                    }
                }
            } else {
                $row = $this->table($table)->get($id);
                if (!$row) {
                    // 主表不存在尝试判断分表
                    $index = $this->table($table.'_index')->get($id);
                    if (!$index) {
                        return [];
                    }
                    $row = $this->table(dr_module_ctable($table, dr_cat_value($index['catid'])))->get($id);
                    if (!$row) {
                        return [];
                    }
                }
            }

		}

        $cdata[$table] = $row;

        // 附表id
        $tableid = intval($row['tableid']);

        // 副表
        $tables[] = $table = $this->mytable.'_data_'.$tableid;
        $cdata[$table] = $data = $this->table($table)->get($id);
        $data && $row = $row + $data;

        // 栏目模型数据
        if ((!$this->is_hcategory && \Phpcmf\Service::C()->module['category_data_field']) or $is_more) {
            $tables[] = $table = $this->mytable.'_category_data';
            $cdata[$table] = $data = $this->table($table)->get($id);
            if ($data) {
                $row = $row + $data;
            }
        }

        $row = $this->_format_content_data($row);

        if ($is_table) {
            return [$row, $tables, $cdata];
        }

        return $row;
    }

    // 判断用户前端权限
    public function check_member_auth($catid, $action) {

        if (!$this->is_hcategory) {
            $cat = \Phpcmf\Service::C()->_get_module_member_category(\Phpcmf\Service::C()->module, $action);
            if (!isset($cat[$catid])) {
                return 0;
            }
        } else {
            $rt = $this->_hcategory_member_del_auth();
            if (!$rt['code']) {
                return 0;
            }
        }

        return 1;
    }

    // 格式化入库数据
    public function format_data($data) {

        isset($data[1]['uid']) && $data[0]['uid'] = (int)$data[1]['uid'];
        isset($data[1]['hits']) && $data[1]['hits'] = (int)$data[1]['hits'];

        if (isset($data[1]['keywords']) && $data[1]['keywords']) {
			// 不要自动获取关键词，容易卡顿，引起发布延迟
            $kws = array_unique(explode(',', trim(str_replace('"', '', $data[1]['keywords']))));
            if (isset(\Phpcmf\Service::C()->module['setting']['kws_limit'])
                && \Phpcmf\Service::C()->module['setting']['kws_limit']) {
                $kws = dr_arraycut($kws, \Phpcmf\Service::C()->module['setting']['kws_limit']);
            }
            $data[1]['keywords'] = implode(',', $kws);
        }
        if (!$data[1]['description']) {
            if (isset(\Phpcmf\Service::C()->module['setting']['desc_auto'])
                && \Phpcmf\Service::C()->module['setting']['desc_auto']) {
                // 手动填充描述
            } else {
                // 自动填充描述
                if (isset($data[0]['content']) && $data[0]['content']) {
                    $data[1]['description'] = dr_get_description($data[0]['content']);
                } elseif (isset($data[1]['content']) && $data[1]['content']) {
                    $data[1]['description'] = dr_get_description($data[1]['content']);
                }
            }
        }

        return $data;
    }

    // 同步更新其他栏目
    public function sync_update_cat($lid, $data) {

        $id = $lid > 0 ? $lid : $data[1]['id'];

        unset($data[1]['id'],$data[1]['catid']);
        $this->db->table($this->mytable)->where('link_id', (int)$id)->update($data[1]);
    }

    // 同步到其他栏目
    public function sync_cat($catid, $data) {

        if (!$catid) {
            return;
        }

        $id = (int)$data[1]['id'];
        $sync = @explode(',', $catid);
        if ($sync && $id) {
            // 更新主表状态主表
            $this->table($this->mytable)->update($id, ['link_id' => -1]);
            // 同步记录
            foreach ($sync as $catid) {
                if ($catid && $catid != $data[1]['catid']) {
                    // 插入到同步栏目中
                    $new = $data;
                    $new[1]['catid'] = $catid;
                    $new[1]['link_id'] = $id;
                    $new[1]['tableid'] = 0;
                    $new[1]['id'] = $this->index(0, $new);
                    $new[1]['id'] && $this->table($this->mytable)->replace($new[1]);
                }
            }
        }
    }

    // 删除数据,放入回收站
    public function delete_to_recycle($ids, $note = '无', $qr = 0) {

        if (!$ids) {
            return dr_return_data(1);
        }

        $rts = [];
        // 格式化
        foreach ($ids as $id) {

            $id = intval($id);

            \Phpcmf\Service::L('cache')->clear('module_'.$this->dirname.'_show_id_'.$id);

            $index = $this->table($this->mytable.'_index')->get($id);
            if (!$index) {
                log_message('error', dr_lang('删除内容（%s）不存在', $id));
                continue;
            }
            $mtable = dr_module_ctable($this->mytable, dr_cat_value($index['catid']));
            // 主表
            $tables[$this->mytable] = $row = $this->table($this->mytable)->get($id);
            if (!$row) {
                if (XR_C()->module['is_ctable']) {
                    // 主表不存在尝试判断分表
                    $tables[$this->mytable] = $tables[$table] = $row = $this->table($table)->get($id);
                }
                if (!$row) {
                    log_message('error', dr_lang('删除内容（%s）不存在', $id));
                    continue;
                }
            }
            if (defined('MODULE_CTABLE_CP_MAIN') && $this->mytable != $mtable) {
                // 是否存在复制数据
                $tables[$mtable] = $tables[$mtable] = $this->table($mtable)->get($id);
            }

            // 附表id
            $tableid = intval($row['tableid']);

            // 副表
            $table = $this->mytable.'_data_'.$tableid;
            $tables[$table] = $fdata = $this->table($table)->get($id);

            $cdata = [];
            if (!$this->is_hcategory) {
                // 栏目模型数据
                $table = $this->mytable.'_category_data';
                $tables[$table] = $cdata = $this->table($table)->get($id);
            }

            // 判断是否审核流程
            if (!$qr && (\Phpcmf\Service::M('auth')->is_post_user() || !IS_ADMIN) ) {
                // 验证状态 投稿者或者用户删除
                $role = $this->is_verify_delete($row);
                if ($role) {
                    // 防止空标题通知
                    if (!$row['title']) {
                        $row['title'] = '#id#'.$row['id'].'#';
                    }
                    // 重复删除
                    if ($this->table($this->mytable.'_verify')
                        ->where('id', $row['id'])
                        ->where('isnew', 2)->counts()) {
                        return dr_return_data(0, dr_lang('%s正在审核中，请勿重复操作', $row['title']));
                    }
                    $value = dr_array22array($row, $fdata);
                    if ($cdata) {
                        $value = dr_array22array($value, $cdata);
                    }
                    $verify = [
                        'id' => (int)$row['id'],
                        'uid' => (int)$row['uid'],
                        'vid' => (int)$role,
                        'isnew' => 2,
                        'islock' => 0,
                        'catid' => (int)$row['catid'],
                        'author' => $row['author'],
                        'status' => 1,
                        'content' => dr_array2string($value),
                        'backuid' => 0,
                        'backinfo' => dr_array2string([
                            'delete' => $note,
                        ]),
                        'inputtime' => SYS_TIME
                    ];
                    $rt = $this->table($this->mytable.'_verify')->replace($verify);
                    if ($rt['code']) {
                        // 通知管理员
                        \Phpcmf\Service::M('member')->admin_notice(
                            $this->siteid,
                            'content',
                            \Phpcmf\Service::C()->member,
                            dr_lang('%s【%s】审核', \Phpcmf\Service::C()->module['name'], $row['title']), $this->dirname.'/verify/edit:id/'.$row['id'],
                            []
                        );
                        continue;
                    }
                }

            }

            if (IS_ADMIN && dr_is_app('cqx')
                && \Phpcmf\Service::M('content', 'cqx')->is_edit($row['catid'], $row['uid'])) {
                log_message('error', dr_lang('删除内容（%s）：当前角色无权限管理此栏目', $id));
                continue;
            }

            if ($row['link_id'] == '-1') {
                // 表示作为母内容
                // 查询其他栏目的内容
                $ort = $this->table($this->mytable)->where('link_id', $id)->getAll();
                if ($ort) {
                    $_ids = [];
                    foreach ($ort as $n) {
                        $_ids[] = $n['id'];
                    }
                    $this->delete_to_recycle($_ids, $note);
                }
            }

            $row['url'] = dr_url_prefix($row['url'], $this->dirname, $this->siteid, 0);

            // 站长工具
            if (dr_is_app('bdts')) {
                \Phpcmf\Service::M('bdts', 'bdts')->module_bdts($this->dirname, $row['url'], 'del');
            }
            if (dr_is_app('bdxz')) {
                \Phpcmf\Service::M('bdxz', 'bdxz')->module_bdxz($this->dirname, $row['url'], 'del');
            }


            // 删除表数据
            foreach ($tables as $table => $t) {
                if ($t) {
                    $rt = $this->table($table)->delete($id);
                    if (!$rt['code']) {
                        return $rt;
                    }
                }
            }

            // 改改状态
            $rt = $this->table($this->mytable.'_index')->update($id, ['status' => 10]);
            if (!$rt['code']) {
                continue;
            }

            \Phpcmf\Service::M('member')->delete_admin_notice($this->dirname.'/verify/edit:id/'.$id, $this->siteid);
            \Phpcmf\Service::L('cache')->clear('module_'.$this->dirname.'_show_id_'.$id);

            // 放入回收站
            $rt = $this->table($this->mytable.'_recycle')->insert([
                'uid' => intval($row['uid']),
                'cid' => $id,
                'catid' => intval($row['catid']),
                'content' => dr_array2string($tables),
                'result' => $note,
                'inputtime' => SYS_TIME
            ]);
            if (!$rt['code']) {
                continue;
            }

            $row['note'] = dr_clearhtml($note);

            // 回收站钩子
            \Phpcmf\Hooks::trigger('module_content_recycle', $row);

            // 通知用户
            $row['title'] = dr_strcut(dr_clearhtml($row['title']), 50);
            \Phpcmf\Service::L('Notice')->send_notice('module_content_delete', $row);

            // 删除文件
            $this->_delete_show_file($row);

            // 删除执行的方法
            $this->_recycle_content($id, $row, $note);
        }

        return dr_return_data(1, '', $rts);
    }

	// 删除静态文件
	protected function _delete_show_file($row) {

		if (!$row['url']) {
			return;
		}

		$file = \Phpcmf\Service::L('Router')->remove_domain($row['url']); // 从地址中获取要生成的文件名
		$root = \Phpcmf\Service::L('html')->get_webpath($this->siteid, $this->dirname);

		// 删除文件
		if (is_file($root.$file)) {
            unlink($root.$file);
        }
        if (is_file($root.SITE_MOBILE_DIR.'/'.$file)) {
            unlink($root.SITE_MOBILE_DIR.'/'.$file);
        }
	}

    // 删除回收站数据
    public function delete_for_recycle($ids) {

        foreach ($ids as $id) {
            $id = intval($id);
            $row = $this->table($this->mytable.'_recycle')->get($id);
            if (!$row) {
                return NULL;
            } elseif (\Phpcmf\Service::M('auth')->is_post_user() && $row['uid'] != $this->uid) {
                return NULL;
            }
            $cid = intval($row['cid']);
            if (!$cid) {
                return NULL;
            }
            \Phpcmf\Service::L('cache')->clear('module_'.$this->dirname.'_show_id_'.$cid);
            // 删除执行的方法
            $this->_delete_content($cid, $row);
            // 删除钩子
            \Phpcmf\Hooks::trigger('module_content_delete', dr_string2array($row['content']));
            // 删除回收站表
            $this->table($this->mytable.'_recycle')->delete($id);
            // 才彻底删除内容数据
            $this->delete_content($cid);
        }

        return dr_return_data(1);
    }

    // 删除全部内容数据
    public function delete_content($cid) {

        if (!$cid) {
            return;
        }

        $module = \Phpcmf\Service::L('cache')->get('module-'.$this->siteid.'-'.$this->dirname);

        // 删除索引表
        $this->table($this->mytable.'_index')->delete($cid);

        // 删除主表
        $this->table($this->mytable)->delete($cid);

        // 删除标记表
        $this->table($this->mytable.'_flag')->delete($cid);

        // 删除统计
        $this->table($this->mytable.'_hits')->delete($cid);
        $this->table($this->mytable.'_verify')->delete($cid);

        // 共享模块删除
        if ($this->is_share) {
            $this->table($this->mysharetable.'_index')->delete($cid);
        }
        // 删除草稿表
        $this->db->table($this->mytable.'_draft')->where('cid', $cid)->delete();
        // 删除相关插件表
        if ($this->is_table_exists($this->mytable.'_favorite')) {
            $this->db->table($this->mytable.'_favorite')->where('cid', $cid)->delete();
        }
        if ($this->is_table_exists($this->mytable.'_support')) {
            $this->db->table($this->mytable.'_support')->where('cid', $cid)->delete();
        }
        if ($this->is_table_exists($this->mytable.'_oppose')) {
            $this->db->table($this->mytable.'_oppose')->where('cid', $cid)->delete();
        }
        if ($this->is_table_exists($this->mytable.'_donation')) {
            $this->db->table($this->mytable.'_donation')->where('cid', $cid)->delete();
        }
        // 删除内容
        $tid = $this->_table_id($cid);
        if ($this->is_table_exists($this->mytable.'_data_'.$tid)) {
            $this->table($this->mytable.'_data_'.$tid)->delete($cid);
        }
        if (!$this->is_hcategory) {
            $this->table($this->mytable.'_category_data')->delete($cid);
        }
        // 模块表单
        if ($module['form']) {
            foreach ($module['form'] as $t) {
                $table = $this->mytable.'_form_'.$t['table'];
                if (!$this->is_table_exists($table)) {
                    break;
                }
                $this->db->table($table)->where('cid', $cid)->delete();
                for ($i = 0; $i < 200; $i ++) {
                    if (!$this->db->query("SHOW TABLES LIKE '".$this->dbprefix($table).'_data_'.$i."'")->getRowArray()) {
                        break;
                    }
                    $this->db->table($table.'_data_'.$i)->where('cid', $cid)->delete();
                }
                //\Phpcmf\Service::M('attachment')->related_delete($this->dbprefix($table), );
            }
        }

        // 执行删除同步
        \Phpcmf\Service::M('Sync')->delete_content($cid, $this->siteid, $this->dirname);

        // 删除归档的附件
        SYS_ATTACHMENT_DB && \Phpcmf\Service::M('attachment')->related_delete($this->dbprefix($this->mytable), $cid);
    }

    // 恢复数据
    public function recovery($ids) {

        $rt = [];
        foreach ($ids as $id) {

            $id = intval($id);
            $row = $this->table($this->mytable.'_recycle')->get($id);
            if (!$row) {
                return NULL;
            }

            $rt[] = $cid = intval($row['cid']);
            $tables = dr_string2array($row['content']);
            if (!$tables) {
                return NULL;
            }
            // 栏目分表储存
            if (XR_C()->module['is_ctable'] && isset($tables[dr_module_ctable($this->mytable, $row['catid'])])) {
                if (defined('MODULE_CTABLE_CP_MAIN')) {
                    // 是否存在复制数据
                } else {
                    unset($tables[$this->mytable]);
                }
            }
            // 内容恢复
            foreach ($tables as $table => $t) {
               if ($t) {
                   $rt = $this->table($table)->replace($t);
                   if (!$rt['code']) {
                       return $rt;
                   }
               }
            }
            $rt = $this->table($this->mytable.'_index')->update($cid, ['status' => 9]);
            if (!$rt['code']) {
                return $rt;
            }

            $this->db->table($this->mytable.'_recycle')->where('id', $id)->delete();
            $this->_recovery_content($cid, $row);
        }

        return dr_return_data(1, 'ok', $rt);
    }

    // 移动栏目
    public function move_category($ids, $catid) {

        if (!$catid) {
            return dr_return_data(0, dr_lang('目标栏目不存在'));
        }

        $all = $this->table($this->mytable)->where_in('id', $ids)->getAll();
        if ($all) {
            foreach ($all as $t) {

                $id = intval($t['id']);
                $this->table($this->mytable)->update($id, ['catid' => $catid]);
                $this->table($this->mytable.'_index')->update($id, ['catid' => $catid]);
                // 判断附表是否存在,不存在则创建
                $this->is_data_table($this->mytable.'_data_', $t['tableid']);
                $this->db->table($this->mytable.'_data_'.intval($t['tableid']))->where('id', $id)->update(['catid' => $catid]);
                $this->db->table($this->mytable.'_category_data')->where('id', $id)->update(['catid' => $catid]);

                // 变更栏目的一些联动操作
                $this->_edit_category_id($t, $catid);
            }
        }

        return dr_return_data(1);
    }

    // 批量更新其他表的栏目id号
    public function update_catids($oid, $catid) {

        if (!$catid) {
            return;
        } elseif (!$oid) {
            return;
        }

        $all = $this->table($this->mytable)->where('catid', $oid)->getAll();
        if ($all) {
            foreach ($all as $t) {

                $id = intval($t['id']);
                $this->table($this->mytable)->update($id, ['catid' => $catid]);
                $this->table($this->mytable.'_index')->update($id, ['catid' => $catid]);
                $this->db->table($this->mytable.'_data_'.intval($t['tableid']))->where('id', $id)->update(['catid' => $catid]);
                $this->db->table($this->mytable.'_category_data')->where('id', $id)->update(['catid' => $catid]);

                // 变更栏目的一些联动操作
                $this->_edit_category_id($t, $catid);
            }
        }


    }

    // 变更栏目的一些联动操作
    protected function _edit_category_id($t, $catid) {

        $id = intval($t['id']);
        $this->db->table($this->mytable.'_time')->where('id', $id)->update(['catid' => $catid]);
        $this->db->table($this->mytable.'_verify')->where('id', $id)->update(['catid' => $catid]);
        // 同步移动相关表单表
        $form = \Phpcmf\Service::L('cache')->get('module-'.$this->siteid.'-'.$this->dirname, 'form');
        if ($form) {
            foreach ($form as $r) {
                $table = $this->mytable.'_form_'.$r['table'];
                $this->db->table($table)->where('cid', $id)->update(['catid' => $catid]);
                for ($i = 0; $i < 200; $i ++) {
                    if (!$this->db->query("SHOW TABLES LIKE '".$table.'_data_'.$i."'")->getRowArray()) {
                        break;
                    }
                    $this->db->table($table.'_data_'.$i)->where('cid', $id)->update(['catid' => $catid]);
                }
            }
        }

        // 同步自定义接口
        $this->_edit_category_row($t, $catid);
    }

    // 移动栏目时的联动继承类
    protected function _edit_category_row($row, $catid) {

    }

    // 变更作者的一些联动操作
    protected function _edit_author_id($t) {

        $id = intval($t['id']);
        $uid = intval($t['uid']);

        $this->db->table($this->mytable.'_time')->where('id', $id)->update(['uid' => $uid]);
        $this->db->table($this->mytable.'_verify')->where('id', $id)->update(['uid' => $uid]);

        // 同步自定义接口
        $this->_edit_author_row($t);
    }

    // 作者时的联动继承类
    protected function _edit_author_row($row) {

    }

    // 用于表单和评论的公共方法==========================================

    // 获取主数据
    public function get_row($id, $myid = 'id') {

        if (!$id) {
            return [];
        }

        $data = $this->table($this->mytable)->get($id);
        if (!$data) {
            return [];
        }

        $data['url'] = dr_url_prefix($data['url'], $this->dirname, $this->siteid, 0);
        $data['is_comment'] = isset($data['is_comment']) ? $data['is_comment'] : 0;

        return $data;
    }

    // 获取评论对象
    public function comment() {
        return \Phpcmf\Service::M('comment', 'comment')->_init($this, \Phpcmf\Service::C()->module['comment']);
    }

    // 获取评论索引数据
    public function get_comment_index($cid, $catid = 0) {

        if (!dr_is_app('comment')) {
            return [];
        }

        return $this->comment()->get_comment_index($cid);
    }

    // 提交评论
    // $value 主题信息和回复人；$data评论内容和点评内容；$my自定义字段
    public function insert_comment($value, $data, $my = []) {

        if (!dr_is_app('comment')) {
            return dr_return_data(0, dr_lang('没有安装评论插件'));
        }

        return $this->comment()->insert_comment($value, $data, $my);
    }

    // 审核评论
    public function verify_comment($row) {

        if (!dr_is_app('comment')) {
            return dr_return_data(0, dr_lang('没有安装评论插件'));
        }

        return $this->comment()->verify_comment($row);
    }

    // 获取评论列表
    public function get_comment_result($cid, $order, $page, $pagesize, $total, $field) {

        if (!dr_is_app('comment')) {
            return [];
        }

        return $this->comment()->get_comment_result($cid, $order, $page, $pagesize, $total, $field);
    }

    // 删除评论
    public function delete_comment($id, $cid = 0) {

        if (!dr_is_app('comment')) {
            return 0;
        }

        return $this->comment()->delete_comment($id, $cid = 0);
    }

    // 更新统计
    public function comment_update_total($row) {

        if (!dr_is_app('comment')) {
            return;
        }

        return $this->comment()->comment_update_total($row);
    }

    // 更新评分
    public function comment_update_review($row) {

        if (!dr_is_app('comment')) {
            return;
        }

        return $this->comment()->comment_update_review($row);

    }

    // 获取表单数据
    public function get_form_row($id, $form) {

        if (!$id || !$form) {
            return [];
        }

        $rt = $this->table($this->mytable.'_form_'.$form)->get($id);
        if (!$rt) {
            return [];
        }

        $rt2 = $this->table($this->mytable.'_form_'.$form.'_data_'.intval($rt['tableid']))->get($id);
        if (!$rt2) {
            return $rt;
        }

        return $rt + $rt2;
    }

    // 更新统计字段
    public function update_form_total($cid, $form) {

        $total = $this->table($this->mytable.'_form_'.$form)->where('status', 1)->where('cid', $cid)->counts();
        $this->table($this->mytable)->update($cid, [
            $form.'_total' => $total,
        ]);
    }

    // 用户中心计算审核id
    public function get_verify_status($id, $member, $auth) {

        $verify = \Phpcmf\Service::C()->get_cache('verify');
        if (!$verify) {
            return 9;
        } elseif (!$auth) {
            return 9; // 默认不走审核
        }

        $v = $verify[$auth];
        if (!$v) {
            return 9;
        } elseif ($id && !$v['value']['edit']) {
            return 9; // 修改不审核
        }

        return 1; // 1 表示进入审核流程
    }

    // 用户中心计算审核id
    public function is_verify_delete($row) {

        $verify = \Phpcmf\Service::C()->get_cache('verify');
        if (!$verify) {
            return 0;
        }

        if (IS_ADMIN) {
            // 后台投稿者
            $auth = \Phpcmf\Service::M('auth')->is_post_user_status();
        } elseif (IS_USE_MEMBER) {
            // 前端用户
            $auth = \Phpcmf\Service::L('member_auth', 'member')->category_auth(
                \Phpcmf\Service::C()->module,
                $row['catid'], 'verify', $this->member);
        }

        if (!$auth) {
            return 0;
        }

        $v = $verify[$auth];
        if (!$v) {
            return 0;
        } elseif ($v['value']['del']) {
            return $auth; // 开启了审核
        }

        return 0; // 1 表示进入审核流程
    }

    // 审核时候的权限组,返回可用权限组的id
    // array(
    //     *      to_uid 指定人
    //     *      to_rid 指定角色组
    //     * )
    protected function _get_verify_roleid($catid, $status, $member) {
        return \Phpcmf\Service::M('verify', 'module')->_get_verify_roleid($catid, $status, $member);
    }

    // 更新时间
    public function update_time($ids) {
        $this->db->table($this->mytable)->whereIn('id', $ids)->update([
            'updatetime' => SYS_TIME,
        ]);
    }

    // 用户中心菜单
    public function module_menu() {

        return [
            'list' => [
                'name' => dr_lang('内容管理'),
                'icon' => dr_icon(\Phpcmf\Service::C()->module['icon']),
                'url' => \Phpcmf\Service::L('router')->member_url($this->dirname.'/home/index'),
            ],
            'verify' => [
                'name' => dr_lang('审核管理'),
                'icon' => 'fa fa-edit',
                'url' => \Phpcmf\Service::L('router')->member_url($this->dirname.'/verify/index'),
            ],
            'draft' => [
                'name' => dr_lang('草稿箱'),
                'icon' => 'fa fa-pencil',
                'url' => \Phpcmf\Service::L('router')->member_url($this->dirname.'/draft/index'),
            ],
            'add' => [
                'name' => dr_lang('发布内容'),
                'icon' => 'fa fa-plus',
                'url' => \Phpcmf\Service::L('router')->member_url($this->dirname.'/home/add'),
            ],
        ];

    }

    // 按附表分表
    public function _table_id($id) {
        return $this->get_table_id($id);
    }

    ////////////////////后台权限开放////////////////////

    // 后台审核列表条件
    public function get_admin_list_verify_where($where) {
        return '(' . (\Phpcmf\Service::M('auth')->is_post_user() ? 'uid='.$this->uid.' OR ' : '')
            . $this->get_admin_verify_status_list().')' . ($where ? ' AND '.$where : '');
    }

    // 后台内容审核列表的权限的sql语句
    public function get_admin_verify_status_list() {
        return \Phpcmf\Service::M('verify', 'module')->get_admin_verify_status_list();
    }

    // 后台内容列表条件
    public function get_admin_list_where($table = '') {

        if (\Phpcmf\Service::M('auth')->is_post_user()) {
            // 作为投稿者只能允许看自己的记录
            return 'uid = '.$this->uid;
        }

        $rs = \Phpcmf\Hooks::trigger_callback('module_admin_list_where', $table, \Phpcmf\Service::C()->module);
        if ($rs && isset($rs['code'])) {
            return $rs['msg'];
        } elseif (dr_is_app('cqx')) {
            return \Phpcmf\Service::M('content', 'cqx')->get_list_where($table);
        }

        return '';
    }

    // 后台内容编辑权限 true无权限、false有权限
    public function admin_is_edit($data) {

        if (\Phpcmf\Service::M('auth')->is_post_user()) {
            if ($data['uid'] == $this->uid) {
                return false;
            }
            return !$data['uid'] ? false : true;
        }

        $rs = \Phpcmf\Hooks::trigger_callback('module_admin_edit', $data, \Phpcmf\Service::C()->module);
        if ($rs && isset($rs['code'])) {
            return $rs['msg'];
        } elseif (dr_is_app('cqx')) {
            $cqx = \Phpcmf\Service::M('content', 'cqx');
            if (method_exists($cqx, 'is_edit')) {
                return $cqx->is_edit((int)$data['catid'], (int)$data['uid']);
            } elseif (method_exists($cqx, 'is_edit_v2')) {
                return $cqx->is_edit2($data);
            }
        }

        return  true;
    }

    ////////////////////二次开发调用////////////////////

    // 内容发布之前
    // 错误信息返回格式：return dr_return_data(0, '错误信息')
    public function _content_post_before($id, $data, $old) {
        return $data;
    }

    // 内容发布之后
    public function _content_post_after($id, $data, $old) { }

    // 内容删除之后
    public function _delete_content($id, $row) { }

    // 内容回收站之后
    public function _recycle_content($id, $row, $note) { }

    // 内容恢复之后
    public function _recovery_content($id, $row) { }

    // 打赏成功之后
    public function _content_donation_after($id, $pay) { }

    // 内复制成功之后
    public function _content_copy_after($id, $save) { }

    // 内容审核操作之后
    public function _call_verify($data, $verify) { }

    // 评论成功操作之后
    public function _comment_after($data) { }

    // 格式化处理内容，用于获取内容数据后的格式化
    public function _format_content_data($data) {
        return $data;
    }

    // 用于前端模块首页的执行方法
    public function _call_index() { }

    // 格式化显示内容,用于前端内容栏目页面的格式化
    public function _call_category($data) {
        return $data;
    }

    // 格式化显示内容,用于前端内容搜索页面的格式化
    public function _call_search($data) {
        return $data;
    }

    // 格式化显示内容,用于前端内容详情页面的格式化
    public function _call_show($data) {
        return $data;
    }

    // 格式化栏目seo信息
    public function _format_category_seo($mod, $catid, $page) {

        $cat = dr_cat_value($mod['mid'], $catid);
        $cat['page'] = intval($page);
        $cat['name'] = $cat['catname'] = $cat['name'];
        $cat['catpname'] = dr_get_cat_pname($mod, $catid, SITE_SEOJOIN);
        $cat['modulename'] = $cat['modname'] = $mod['dirname'] == 'share' ? '': dr_lang($mod['name']);

        if (!$mod['share'] && (!isset($mod['site'][SITE_ID]['is_cat']) || !$mod['site'][SITE_ID]['is_cat'])) {
            // 独立模块统一规则模式
            $seo = $mod['site'][SITE_ID];
        } else {
            $seo = $cat['setting']['seo'];
        }

        $meta_title = $seo['list_title'] ? $seo['list_title'] : '['.dr_lang('第%s页', '{page}').'{join}]{SITE_NAME}';
        $meta_title = $page > 1 ? str_replace(['[', ']'], '', $meta_title) : preg_replace('/\[(.+)\]/U', '', $meta_title);

        return \Phpcmf\Service::L('Seo')->get_seo_value($cat, [
            'meta_title' => $meta_title,
            'meta_keywords' => isset($seo['list_keywords']) && $seo['list_keywords'] ? $seo['list_keywords'] : ($mod['site'][SITE_ID]['module_keywords'] ? $mod['site'][SITE_ID]['module_keywords'] : \Phpcmf\Service::C()->get_cache('site', SITE_ID, 'seo', 'SITE_KEYWORDS')),
            'meta_description' => isset($seo['list_description']) && $seo['list_description'] ? $seo['list_description'] : ($mod['site'][SITE_ID]['module_description'] ? $mod['site'][SITE_ID]['module_description'] : \Phpcmf\Service::C()->get_cache('site', SITE_ID, 'seo', 'SITE_DESCRIPTION')),
        ]);


    }

    // 格式化首页seo信息
    public function _format_home_seo($mod) {

        $seo = [];

        $seo['meta_title'] =  $mod['site'][SITE_ID]['module_title'] ? $mod['site'][SITE_ID]['module_title'] : $mod['name'].SITE_SEOJOIN.SITE_NAME;
        $seo['meta_keywords'] = $mod['site'][SITE_ID]['module_keywords'];

        $seo['meta_title'] = htmlspecialchars(dr_clearhtml($seo['meta_title']));
        $seo['meta_description'] = $mod['site'][SITE_ID]['module_description'];
        $seo['meta_description'] = htmlspecialchars(dr_clearhtml($seo['meta_description']));

        if (strpos($seo['meta_title'], '{page}') !== false) {
            $page = max(1, intval($_GET['page']));
            if ($page > 1) {
                $seo['meta_title'] = str_replace(array('[', ']'), '', $seo['meta_title']);
                $seo['meta_title'] = str_replace('{join}', SITE_SEOJOIN, $seo['meta_title']);
                $seo['meta_title'] = str_replace('{page}', $page, $seo['meta_title']);
            } else {
                $seo['meta_title'] = preg_replace('/\[.+\]/U', '', $seo['meta_title']);
            }
        }

        if (!$seo['meta_keywords']) {
            // 留空时使用主站seo
            $seo['meta_keywords'] = \Phpcmf\Service::C()->get_cache('site', SITE_ID, 'seo', 'SITE_KEYWORDS');
        }

        if (!$seo['meta_description']) {
            // 留空时使用主站seo
            $seo['meta_description'] = \Phpcmf\Service::C()->get_cache('site', SITE_ID, 'seo', 'SITE_DESCRIPTION');
        }

        return \Phpcmf\Service::L('Seo')->get_seo_value([], $seo);
    }

    // 格式化内容页seo信息
    public function _format_show_seo($mod, $data, $page) {

        $data['cat'] = $cat = dr_cat_value($mod['mid'], $data['catid']);
        $data['page'] = $page;
        $data['name'] = $data['catname'] = $cat['name'];
        //$data['title'] = dr_clearhtml($data['title']);
        $data['catname'] = $data['cat.name'] = $cat['name'];
        $data['catpname'] = $data['cat.pname'] = dr_get_cat_pname($mod, $data['catid'], SITE_SEOJOIN);
        foreach ($cat as $i => $t) {
            $data['cat.'.$i] = $t;
        }
        $data['modulename'] = $data['modname'] = dr_lang($mod['name']);
        $data['modulename'] = $data['modname'] = $mod['dirname'] == 'share' ? '': dr_lang($mod['name']);

        $data['keywords'] = htmlspecialchars(dr_safe_replace(dr_clearhtml($data['keywords'])));
        $data['description'] = htmlspecialchars(dr_safe_replace(dr_clearhtml($data['description'])));

        $meta_title = isset($mod['site'][SITE_ID]['show_title']) && $mod['site'][SITE_ID]['show_title'] ? $mod['site'][SITE_ID]['show_title'] : '['.dr_lang('第%s页', '{page}').'{join}]{title}{join}{catpname}{join}{SITE_NAME}';
        $meta_title = $page > 1 ? str_replace(['[', ']'], '', $meta_title) : preg_replace('/\[(.+)\]/U', '', $meta_title);

        return \Phpcmf\Service::L('Seo')->get_seo_value($data, [
            'meta_title' => $meta_title,
            'meta_keywords' => isset($mod['site'][SITE_ID]['show_keywords']) && $mod['site'][SITE_ID]['show_keywords'] ? $mod['site'][SITE_ID]['show_keywords'] : $data['keywords'],
            'meta_description' => isset($mod['site'][SITE_ID]['show_description']) && $mod['site'][SITE_ID]['show_description'] ? $mod['site'][SITE_ID]['show_description'] : $data['description'],
        ]);

    }

    // 格式化内容搜索seo信息
    public function _format_search_seo($mod, $catid, $param, $page) {

        $seo = [];
        $seo['meta_keywords'] = '';

        $data['page'] = $page > 1 ? $page : '';
        $data['param'] = '';
        $data['keyword'] = '';
        $data['modulename'] = $data['modname'] = $mod['dirname'] == 'share' ? '': dr_lang($mod['name']);

        $param_value = [];
        if ($param['keyword']) {
            $param_value['keyword'] = $data['keyword'] = urldecode($param['keyword']);
            unset($param['keyword']);
        }
        if ($param['groupid']) {
            $data['groupid'] = $param['groupid'];
        }
        if ($param['updatetime']) {
            $param_value['updatetime'] = $param['updatetime'];
        }

        if ($catid) {
            $t = dr_get_cat_pname($mod, $catid, SITE_SEOJOIN);
            if ($t) {
                $param_value['catid'] = $t;
            }
            unset($param['catid']);
            unset($param['catdir']);
        }

        if ($param) {
            $myfield = $mod['field'];
            if ($catid) {
                $cat_field = $mod['category_data_field'];
                $cat_field && $myfield = dr_array22array($myfield, $cat_field);
            }

            $seofield = $myfield;
            foreach ($param as $name => $value) {
                $now_field = [];
                if (isset($myfield[$name])) {
                    // 模块字段
                    $now_field = $myfield[$name];
                } elseif ($name == 'flag') {
                    // 推荐位
                    if ($value) {
                        $flag = $mod['setting']['flag'];
                        $arr = explode('|', $value);
                        if ($arr) {
                            foreach ($arr as $a) {
                                if (isset($flag[$a]) && $flag[$a]) {
                                    $param_value[$name][] = $flag[$a]['name'];
                                }
                            }
                        }
                    }
                    continue;
                } elseif ($name == 'groupid') {
                    // 会员组名称
                    if ($value) {
                        $param_value[$name] = \Phpcmf\Service::C()->member_cache['group'][$value]['name'];
                    }
                    continue;
                } elseif (isset(\Phpcmf\Service::C()->member_cache['field'][$name])) {
                    // 会员字段
                    $now_field = \Phpcmf\Service::C()->member_cache['field'][$name];
                    $seofield[$name] = $now_field;
                }
                // 按字段属性组合
                if ($now_field) {
                    switch ($now_field['fieldtype']) {

                        case 'Radio':
                        case 'Select':
                        case 'Selects':
                        case 'Checkbox':
                            $opt = dr_format_option_array($now_field['setting']['option']['options']);
                            $arr = explode('|', $value);
                            if ($arr) {
                                foreach ($arr as $a) {
                                    if (isset($opt[$a]) && $opt[$a]) {
                                        $param_value[$name][] = $opt[$a];
                                    }
                                }
                            }
                            break;

                        case 'Linkages':
                        case 'Linkage':
                            $arr = explode('|', $value);
                            if ($arr) {
                                foreach ($arr as $a) {
                                    $param_value[$name][] = dr_linkagepos($now_field['setting']['option']['linkage'], $a, SITE_SEOJOIN);
                                }
                            }
                            break;

                        case 'Cat':
                        case 'Cats':
                        case 'Catid':
                            $arr = explode('|', $value);
                            if ($arr) {
                                foreach ($arr as $a) {
                                    $param_value[$name][] = dr_cat_value($now_field['setting']['option']['module'], $a, 'name');
                                }
                            }
                            break;
                        case 'Related':
                            if ($now_field['setting']['option']['module']) {
                                $arr = explode('|', $value);
                                if ($arr) {
                                    foreach ($arr as $a) {
                                        $row = $this->table_site($now_field['setting']['option']['module'])->get($a);
                                        $row && $param_value[$name][] = $row['title'];
                                    }
                                }
                            }
                            break;

                        default:
                            $value && $param_value[$name] = $value;
                            break;
                    }
                }
            }
        }

        $meta_title = $mod['site'][SITE_ID]['search_title'] ? $mod['site'][SITE_ID]['search_title'] : '['.dr_lang('第%s页', '{page}').'{join}][{keyword}{join}][{param}{join}]{SITE_NAME}';
        $seo['param_value'] = [];
        if ($param_value) {
            $str = [];
            $seofield['catid'] = $seofield['catdir'] = [ 'name' => dr_lang('栏目') ];
            $seofield['groupid'] = ['name' => dr_lang('用户组')];
            $seofield['flag'] = ['name' => dr_lang('推荐位')];
            $seofield['keyword'] = ['name' => dr_lang('关键词')];
            $seofield['updatetime'] = ['name' => dr_lang('更新时间')];
            $db = \Phpcmf\Service::C()->content_model;
            if ($db) {
                list($seofield, $param_value) = $db->_format_search_param_value($seofield, $param_value);
            }
            foreach ($param_value as $f => $t) {
                $seo['param_value'][$f] = [
                    'name' => $seofield[$f]['name'],
                    'value' => is_array($t) ? implode('|', $t) : $t,
                    'value_array' => is_array($t) ? $t : [],
                ];
                $str[$f] = is_array($t) ? implode('|', $t) : $t;
            }

            // 避免重复keyword
            if (isset($str['keyword']) && strpos($meta_title, 'keyword') !== false) {
                unset($str['keyword']);
            }
            $data['param'] = implode(SITE_SEOJOIN, $str);
        }

        if (preg_match_all('/\[.*\{(.+)\}.*\]/U', $meta_title, $m)) {
            $new = '';
            $replace = '';
            foreach ($m[1] as $i => $field) {
                $replace.= $m[0][$i];
                if (isset($data[$field]) && strlen($data[$field])) {
                    $new.= str_replace(['[', ']'], '', $m[0][$i]);
                }
            }
            $meta_title = str_replace($replace, $new, $meta_title);
        }
        return \Phpcmf\Service::L('Seo')->get_seo_value($data, [
            'meta_title' => $meta_title,
            'param_value' => $seo['param_value'],
            'meta_keywords' => $seo['meta_keywords'] ? $seo['meta_keywords'] : (isset($mod['site'][SITE_ID]['search_keywords']) && $mod['site'][SITE_ID]['search_keywords'] ? $mod['site'][SITE_ID]['search_keywords'] : \Phpcmf\Service::C()->get_cache('site', SITE_ID, 'seo', 'SITE_KEYWORDS')),
            'meta_description' => isset($mod['site'][SITE_ID]['search_description']) && $mod['site'][SITE_ID]['search_description'] ? $mod['site'][SITE_ID]['search_description'] : \Phpcmf\Service::C()->get_cache('site', SITE_ID, 'seo', 'SITE_DESCRIPTION'),
        ]);
    }

    // 格式化内容搜索的param参数名称值
    public function _format_search_param_value($myfield, $param) {
        return [$myfield, $param];
    }

    ////////////////////禁用栏目时，二次开发调用////////////////////

    // 禁用栏目时，用户保存内容之前的权限验证
    public function _hcategory_member_save_before($data) {
        return $data;
    }

    // 禁用栏目时，用户保存内容时的内容文章状态 $id 内容id
    public function _hcategory_member_post_status($id) {
        return 9;
    }

    // 禁用栏目时，用户评论时的状态
    public function _hcategory_member_comment_status() {
        return 1;
    }

    // 禁用栏目时，用户保存内容时是否启用验证码
    public function _hcategory_member_post_code() {
        return 0;
    }

    // 禁用栏目时，用户发布内容时的权限验证
    public function _hcategory_member_add_auth() {
        return dr_return_data(1, 'ok');
    }

    // 禁用栏目时，用户评论时的权限验证
    public function _hcategory_member_comment_auth() {
        return dr_return_data(1, 'ok');
    }

    // 禁用栏目时，用户修改内容时的权限验证
    public function _hcategory_member_edit_auth() {
        return dr_return_data(1, 'ok');
    }

    // 禁用栏目时，用户删除内容时的权限验证
    public function _hcategory_member_del_auth() {
        return dr_return_data(1, 'ok');
    }

    // 禁用栏目时，用户阅读内容时的权限验证
    public function _hcategory_member_show_auth() {
        return dr_return_data(1, 'ok');
    }

}


namespace Phpcmf\Model;
class Content extends \Phpcmf\Model\Module\Content {

}