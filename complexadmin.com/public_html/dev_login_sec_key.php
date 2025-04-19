<?PHP
session_start();

define("SECURITY_CHECK" , "MOHAMMAD_REZA_POURSOLTAN");

require_once("inc/_public-class.php");
$admin = new _public();

$admin->loadsetting();

require_once("_config.php");

$get_license = $admin->encode($admin->license());

mysqli_query("update admin set login_sec_key = '$get_license' ");
echo 'Done';