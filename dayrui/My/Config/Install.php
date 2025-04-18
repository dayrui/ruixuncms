<?php
/**
 * 初始化安装数据
 */

// 不选择安装数据时不执行sql文件

$apps = ['Module'];  // 预装哪些app，首字母大写
foreach ($apps as $mid) {
    \Phpcmf\Service::M('app')->install($mid);
}

if (isset($_GET['is_install_db']) && $_GET['is_install_db']) {
    if (is_file(APPSPATH.'Module/install.lock')) {
        \Phpcmf\Service::M('module', 'module')->install('news', null, 0, 1);
        $sql = file_get_contents(MYPATH.'Config/demo.sql');
        if ($sql) {
            $sql = str_replace('{dbprefix}', \Phpcmf\Service::M()->prefix, $sql);
            \Phpcmf\Service::M()->query_all($sql);
            // 内容字段改为主表
            \Phpcmf\Service::M()->query("ALTER TABLE `".\Phpcmf\Service::M()->prefix."1_news`  ADD COLUMN `content` mediumtext DEFAULT NULL; ");
            \Phpcmf\Service::M()->query("UPDATE `".\Phpcmf\Service::M()->prefix."1_news` a, `".\Phpcmf\Service::M()->prefix."1_news_data_0` b SET a.`content` = b.`content` WHERE a.id = b.id;");
            \Phpcmf\Service::M()->query("ALTER TABLE `".\Phpcmf\Service::M()->prefix."1_news_data_0`  DROP COLUMN `content`; ");
            \Phpcmf\Service::M()->query("UPDATE `".\Phpcmf\Service::M()->prefix."field` SET `ismain` = 1 WHERE `relatedid` = 1 and fieldname='content' and relatedname='module'; ");
        }
    }
}

// 默认站点信息字段
$site_field = [];
$site_field['yqlj'] = '{"name":"'.dr_lang('友情链接').'","fieldname":"yqlj","fieldtype":"Ftable","isedit":"1","ismain":"1","issystem":"0","ismember":"1","issearch":"0","disabled":"0","setting":{"option":{"is_add":"1","is_first_hang":"0","count":"","first_cname":"","hang":{"1":{"name":""},"2":{"name":""},"3":{"name":""},"4":{"name":""},"5":{"name":""}},"field":{"1":{"type":"1","name":"'.dr_lang('网站名称').'","width":"200","option":""},"2":{"type":"1","name":"'.dr_lang('网站地址').'","width":"","option":""},"3":{"type":"0","name":"","width":"","option":""},"4":{"type":"0","name":"","width":"","option":""},"5":{"type":"0","name":"","width":"","option":""},"6":{"type":"0","name":"","width":"","option":""},"7":{"type":"0","name":"","width":"","option":""},"8":{"type":"0","name":"","width":"","option":""},"9":{"type":"0","name":"","width":"","option":""},"10":{"type":"0","name":"","width":"","option":""}},"width":"","height":"","css":""},"validate":{"required":"0","pattern":"","errortips":"","xss":"1","check":"","filter":"","tips":"","formattr":""},"is_right":"0"},"displayorder":"0"}';
$site_field['hdtp'] = '{"name":"'.dr_lang('幻灯图片').'","fieldname":"hdtp","fieldtype":"Ftable","isedit":"1","ismain":"1","issystem":"0","ismember":"1","issearch":"0","disabled":"0","setting":{"option":{"is_add":"1","is_first_hang":"0","count":"","first_cname":"","hang":{"1":{"name":""},"2":{"name":""},"3":{"name":""},"4":{"name":""},"5":{"name":""}},"field":{"1":{"type":"3","name":"'.dr_lang('图片').'","width":"200","option":""},"2":{"type":"1","name":"'.dr_lang('名称').'","width":"200","option":""},"3":{"type":"1","name":"'.dr_lang('跳转地址').'","width":"","option":""},"4":{"type":"0","name":"","width":"","option":""},"5":{"type":"0","name":"","width":"","option":""},"6":{"type":"0","name":"","width":"","option":""},"7":{"type":"0","name":"","width":"","option":""},"8":{"type":"0","name":"","width":"","option":""},"9":{"type":"0","name":"","width":"","option":""},"10":{"type":"0","name":"","width":"","option":""}},"width":"","height":"","css":""},"validate":{"required":"0","pattern":"","errortips":"","xss":"1","check":"","filter":"","tips":"","formattr":""},"is_right":"0"},"displayorder":"0"}';
foreach ($site_field as $fname => $t) {
    $value = dr_string2array($t);
    if (!$value) {
        continue;
    }
    $value['setting'] = dr_string2array($value['setting']);
    \Phpcmf\Service::M('Field')->relatedid = SITE_ID;
    \Phpcmf\Service::M('Field')->relatedname = 'site';
    if (\Phpcmf\Service::M()->table('field')
        ->where('relatedid', \Phpcmf\Service::M('Field')->relatedid)
        ->where('relatedname', \Phpcmf\Service::M('Field')->relatedname)
        ->where('fieldname', $fname)->counts()
    ) {
        continue;
    }
    $field = \Phpcmf\Service::L('field')->get($value['fieldtype']);
    \Phpcmf\Service::M('Field')->add($value, $field);
}