<?php namespace Phpcmf\Control;
/**
 * {{www.xunruicms.com}}
 * {{迅睿内容管理框架系统}}
 * 本文件是框架系统文件，二次开发时不可以修改本文件
 **/

class Test extends \Phpcmf\Table {

    private $js;

    public function caiji() {

        $html = dr_catcher_data('https://www.uofferglobal.com/api/v1/web/university/applylist?page_num=1&page_size=23');


        exit;
    }

    public function cache() {
        $taskCount = 10; // 假设我们有10个任务
        $pidArray = []; // 用来保存进程ID的数组

        $this->js = 0;
        for ($i = 0; $i < $taskCount; $i++) {
            $pid = pcntl_fork(); // 创建子进程

            if ($pid == -1) {
                die('无法创建子进程');
            } else if ($pid) {
                $pidArray[] = $pid; // 父进程保存进程ID
            } else {
                // 子进程执行的代码
                $this->jssc();
                echo "执行任务--完成一组--{$this->js}\n";
                exit(0); // 子进程任务完成后退出
            }
        }

        // 父进程等待所有子进程完成
        foreach ($pidArray as $pid) {
            pcntl_waitpid($pid, $status);
        }

        echo "所有任务完成\n";
    }

    private function jssc() {
        $list = XR_M()->table('1_news')->getAll(20);
        foreach ($list as $t) {
            $mid = 'news';
            $id = $t['id'];
            $atcode = 'chtml_'.SITE_ID.'_'.$mid.'_'.$id;
            \Phpcmf\Service::L('cache')->set_auth_data($atcode, $id, SITE_ID);
            echo 'index.php s='.$mid.' c=html m=showfile id='.$id.' atcode='.$atcode;
            echo '\n';
            // index.php?s=news&c=html&m=showfile&id=17&atcode=chtml_1_news_17
            //$rs = dr_catcher_data(SITE_URL.'index.php?s='.$mid.'&c=html&m=showfile&id='.$id.'&atcode='.$atcode);
            //echo "执行任务-{$this->js}-{$rs}\n";
        }
        $this->js = $this->js+20;
    }

    public function query() {

        $sql = file_get_contents(FCPATH.'Fcms/Control/Install.sql');

        $sql = dr_format_create_sql($sql);
        $sql_data = explode(';SQL_FINECMS_EOL', trim(str_replace(array(PHP_EOL, chr(13), chr(10)), 'SQL_FINECMS_EOL', $sql)));

        foreach($sql_data as $query){
            if (!$query) {
                continue;
            }
            $ret = '';
            $queries = explode('SQL_FINECMS_EOL', trim($query));
            foreach($queries as $query) {
                $ret.= $query[0] == '#' || $query[0].$query[1] == '--' ? '' : $query;
            }
            if (!$ret) {
                continue;
            }

        }
    }

    public function get_value($name = '') {
        return $name ? $this->temp[$name] : $this->temp;
    }

    public function set_value($name, $value) {
        return $this->temp[$name] = $value;
    }

	// 生成静态
	public function tp() {

        $rt = XR_M()->table_site('form')->delete(123);
        var_dump($rt1);
        $rt2 = XR_M()->db->getLastQuery();
        var_dump($rt2);

    }
	public function index() {
        $mode = 'a:1:{s:10:"1_XR_3129";s:10:"2_XR_3130";}';


        $this->_init([
            'table' => 'member', // 表的名字
            'field' => [], // 设置入库字段
            'show_field' => 'title', // 表的主字段
            'order_by' => 'member.id desc', // 列表排序显示方式
            'select_function' => function(&$select) {
                $select->join('member_data', 'member.id=member_data.id', 'left');
            }
        ]);
        list($tpl) = $this->_List(); // 完成table自动查询并分页显示动作
        \Phpcmf\Service::V()->display('test.html');
	}
}
