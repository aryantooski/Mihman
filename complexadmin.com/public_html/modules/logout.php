<?PHP
// require_once("header.php");
unset($_SESSION);
session_destroy();

echo $admin->system_message('login_page');

$admin->LOG('خروج' , 'موفق');
