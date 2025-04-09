<?php

/**
 * 安装程序（正式上线后可删除本文件）
 */

header('Content-Type: text/html; charset=utf-8');

// 最低支持php版本
$min = '7.4.0';

!defined('WEBPATH') && define('WEBPATH', dirname(__FILE__).'/');
if (is_file(WEBPATH.'config/api.php')) {
    !defined('CONFIGPATH') && define('CONFIGPATH',WEBPATH.'config/');
    if (is_dir(WEBPATH.'/dayrui/CodeIgniter72/')) {
        $min = '7.2.0';
    }
} else {
    !defined('CONFIGPATH') && define('CONFIGPATH', dirname(dirname(__FILE__)).'/config/');
    !defined('WRITEPATH') && define('WRITEPATH', dirname(dirname(__FILE__)).'/cache/');
    if (is_dir(dirname(dirname(__FILE__)).'/CodeIgniter72/')) {
        $min = '7.2.0';
    }
}
if (!defined('WRITEPATH')) {
    if (is_dir(WEBPATH.'cache/')) {
        define('WRITEPATH', WEBPATH.'cache/');
    } elseif (is_dir(dirname(dirname(__FILE__)).'/cache/')) {
        define('WRITEPATH', dirname(dirname(__FILE__)).'/cache/');
    } else {
        exit('Unable to recognize cache directory');
    }
}

// 判断环境
if (version_compare(PHP_VERSION, $min) < 0) {
    exit("<font color=red>PHP >= ".$min."</font>");
}

$pos = strpos(trim($_SERVER['SCRIPT_NAME'], '/'), '/');
if ($pos !== false && $pos > 1) {
    echo "<font color=red>This program must be installed in the root directory of the domain name</font>";exit;
}

foreach (array(' ', '[', ']') as $t) {
    if (strpos(WEBPATH, $t) !== false) {
        exit('<font color=red>web directory ('.WEBPATH.') Not allowed to appear '.($t ? $t : 'space').'</font>');
    }
}

// 判断目录权限
foreach (array(
             WRITEPATH,
             WRITEPATH.'data/',
             WRITEPATH.'template/',
             WRITEPATH.'file/',
             WRITEPATH.'session/',
             CONFIGPATH,
             WEBPATH.'uploadfile/',
         ) as $t) {
    if (!dr_check_put_path($t)) {
        exit('The directory（'.$t.'）is not writable');
    }
}

header('Location: index.php?c=install');

// 检查目录权限
function dr_check_put_path($dir) {

    if (!$dir) {
        return 0;
    } elseif (!is_dir($dir)) {
        return 0;
    }

    $size = @file_put_contents($dir.'test.html', 'test');
    if ($size === false) {
        return 0;
    } else {
        @unlink($dir.'test.html');
        return 1;
    }
}