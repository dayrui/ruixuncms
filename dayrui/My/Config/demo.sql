
UPDATE `{dbprefix}module` set `setting` = '{"order":"displayorder DESC,updatetime DESC","verify_msg":"","delete_msg":"","list_field":{"title":{"use":"1","order":"1","name":"Title","width":"","func":"title"},"catid":{"use":"1","order":"2","name":"column","width":"120","func":"catid"},"author":{"use":"1","order":"3","name":"author","width":"100","func":"author"},"updatetime":{"use":"1","order":"4","name":"update time","width":"160","func":"datetime"}},"comment_list_field":{"content":{"use":"1","order":"1","name":"comment","width":"","func":"comment"},"author":{"use":"1","order":"3","name":"author","width":"100","func":"author"},"inputtime":{"use":"1","order":"4","name":"input time","width":"160","func":"datetime"}},"flag":null,"param":null,"search":{"use":"1","field":"title,keywords","total":"500","length":"4","param_join":"-","param_rule":"0","param_field":"","param_join_field":["","","","","","",""],"param_join_default_value":"0"}}' WHERE `dirname` = 'news';

UPDATE `{dbprefix}admin_role` set `name` = 'Administrator' WHERE `id` = 1;
UPDATE `{dbprefix}admin_role` set `name` = 'Editor' WHERE `id` = 2;

REPLACE INTO `{dbprefix}urlrule` VALUES(0, 3, 'Shared column', '{"list":"list-{dirname}.html","list_page":"list-{dirname}-{page}.html","show":"show-{id}.html","show_page":"show-{id}-{page}.html","catjoin":"\\/"}');
REPLACE INTO `{dbprefix}urlrule` VALUES(0, 2, 'Shared Module', '{"search":"{modname}\\/search.html","search_page":"{modname}\\/search\\/{param}.html","catjoin":"\\/"}');
REPLACE INTO `{dbprefix}urlrule` VALUES(0, 1, 'Independent Module', '{"module":"{modname}.html","list":"{modname}\\/list\\/{id}.html","list_page":"{modname}\\/list\\/{id}\\/{page}.html","show":"{modname}\\/show\\/{id}.html","show_page":"{modname}\\/show\\/{id}\\/{page}.html","search":"{modname}\\/search.html","search_page":"{modname}\\/search\\/{param}.html","catjoin":"\\/"}');


