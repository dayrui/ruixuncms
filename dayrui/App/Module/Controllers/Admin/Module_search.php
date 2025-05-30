<?php namespace Phpcmf\Controllers\Admin;


class Module_search extends \Phpcmf\Common
{

    public function index() {

        $mid = \Phpcmf\Service::L('input')->get('dir');
        $all = \Phpcmf\Service::M('Module')->get_module_info();
        $module = \Phpcmf\Service::L('cache')->get('module-'.SITE_ID.'-content');

        // 设置url
        if ($module) {
            foreach ($module as $dir => $t) {
                if ($t['hlist'] == 1) {
                    unset($module[$dir]);
                    continue;
                }
                if (!$all[$dir]) {
                    unset($module[$dir]);
                    continue;
                }
                if ($mid && $mid != $dir) {
                    unset($module[$dir]);
                    continue;
                }
            }
        } else {
            $this->_admin_msg(0, dr_lang('系统没有安装内容模块'));
        }


        \Phpcmf\Service::V()->assign([
            'menu' => \Phpcmf\Service::M('auth')->_admin_menu(
                [
                    '模块搜索设置' => [APP_DIR.'/'.\Phpcmf\Service::L('Router')->class.'/index', 'fa fa-search'],
                    'help' => [1041],
                ]
            ),
            'module' => $all,
        ]);
        \Phpcmf\Service::V()->display('module_search.html');
    }

    public function hidden_edit() {

        $dir = \Phpcmf\Service::L('input')->get('dir');
        $all = \Phpcmf\Service::M('Module')->get_module_info();
        if (!$all[$dir]) {
            $this->_json(0, dr_lang('模块#%s不存在', $dir));
        }

        if ($all[$dir]['setting']['search']['use']) {
            $all[$dir]['setting']['search']['use'] = 0;
        } else {
            $all[$dir]['setting']['search']['use'] = 1;
        }

        \Phpcmf\Service::M()->db->table('module')->where('dirname', $dir)->update([
            'setting' => dr_array2string($all[$dir]['setting']),
        ]);

        // 自动更新缓存
        \Phpcmf\Service::M('cache')->sync_cache();

        $this->_json(1, dr_lang($all[$dir]['setting']['search']['use'] ? '已开启搜索功能' : '已关闭搜索功能'), [
            'value' => $all[$dir]['setting']['search']['use'] ? 0 : 1
        ]);
    }

    public function edit() {

        $dir = \Phpcmf\Service::L('input')->get('dir');
        $page = \Phpcmf\Service::L('input')->get('page');
        $cache = \Phpcmf\Service::L('cache')->get('module-'.SITE_ID.'-content');
        if (!$cache[$dir]) {
            $this->_json(0, dr_lang('模块#%s不存在', $dir));
        }

        $all = \Phpcmf\Service::M('Module')->get_module_info();
        if (!$all[$dir]) {
            $this->_json(0, dr_lang('模块#%s不存在', $dir));
        }

        $data = $all[$dir];
        // 搜索字段
        $data['search_field'] = [
            'catid' => dr_lang('栏目'),
            'keyword' => dr_lang('搜索词'),
            'order' => dr_lang('排序'),
            'page' => dr_lang('分页'),
        ];
        if (!$data['setting']['search']['field']) {
            $data['setting']['search']['field'] = 'title,keywords';
        }
        $field = \Phpcmf\Service::M()->db->table('field')
            ->where('disabled', 0)
            ->where('ismain', 1)
            ->where('relatedname', 'module')
            ->where('relatedid', $data['id'])
            ->orderBy('displayorder ASC,id ASC')
            ->get()->getResultArray();
        foreach ($field as $f) {
            $data['search_field'][$f['fieldname']] = $f['name'];
        }
        $data['field'] = $field;

        if (IS_POST) {

            $post = \Phpcmf\Service::L('input')->post('data');
            $data['setting']['search'] = $post;
            $data['setting']['search']['field'] = implode(',', (array)$_POST['search_field']);
            \Phpcmf\Service::M()->db->table('module')->where('dirname', $dir)->update([
                'setting' => dr_array2string($data['setting']),
            ]);
            // 自动更新缓存
            \Phpcmf\Service::M('cache')->sync_cache();

            $this->_json(1, dr_lang('操作成功'));
        }

        $data['save_url'] = dr_url(APP_DIR.'/'.\Phpcmf\Service::L('Router')->class.'/edit', ['dir' => $dir]);

        \Phpcmf\Service::V()->assign([
            'page' => $page,
            'form' => dr_form_hidden(),
            'data' => $data,
        ]);
        \Phpcmf\Service::V()->display('module_search_save.html');
    }

}
