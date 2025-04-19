<?PHP
session_start();
set_time_limit(0);
define("SECURITY_CHECK" , "MOHAMMAD_REZA_POURSOLTAN");

require_once("inc/_public-class.php");
$admin = new _public();
$connection_string = $admin->connection_mysql();

require_once("_config.php");

//file_get_contents('http://'._URL.'/device.php');
$admin->sql("update admin set period_lasttime = '".time()."' ");
