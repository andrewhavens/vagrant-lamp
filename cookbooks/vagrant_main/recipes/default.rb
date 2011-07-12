require_recipe "apt"
require_recipe "php::default"
require_recipe "php::module_mysql"
require_recipe "php::module_curl"
require_recipe "apache2::default"
require_recipe "apache2::mod_php5"
require_recipe "apache2::mod_rewrite"
require_recipe "mysql::server"

