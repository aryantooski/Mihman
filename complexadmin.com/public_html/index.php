<?PHP
session_start();

define("SECURITY_CHECK" , "MOHAMMAD_REZA_POURSOLTAN");

require_once("inc/_public-class.php");
$admin = new _public();

$admin->loadsetting();

require_once("_config.php");
$url = "http://"._URL.'/';

$m = array(1=>'فروردین' , 2=>'اردیبهشت' , 3=>'خرداد' , 4=>'تیر' , 5=>'مرداد' , 6=>'شهریور' , 7=>'مهر' , 8=>'آبان' , 9=>'آذر' , 10=>'دی' , 11=>'بهمن' , 12=>'اسفند');


$from = 'index';
$connection_string = '';
$do = '';
$connection_string = $admin->connection_mysql();
if ($connection_string == 'true')
{
	/*
	$sql = $admin->sql("show tables");
	while ($row = $admin->row($sql))
	{
		$admin->sql("ALTER TABLE ".$row['Tables_in_tooski']." CHARACTER SET utf8, COLLATE utf8_general_ci;");
		
		$admin->sql("ALTER TABLE ".$row['Tables_in_tooski']." engine=InnoDB;");
		
		$get_cols = $admin->sql("show columns from ".$row['Tables_in_tooski']);
		while ($cols = $admin->row($get_cols))
		{
			if (substr($cols['Type'] , 0 , 4) == 'char')
			{
				$admin->sql("ALTER TABLE `".$row['Tables_in_tooski']."` CHANGE `".$cols['Field']."` `".$cols['Field']."` CHAR(".intval(substr($cols['Type'] , 5 , 5)).") CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL; ");
			}
		}
		
	}
	
	exit();
	*/
	
	if (isset($_GET['do']))
	{
		if (!empty($_GET['do']))
		{
			$do = $admin->superinj($_GET['do']);
		}
		else
		{
			$do = 'dashboard';
		}
	}
	else
	{
		$do = 'dashboard';
	}
	
	if (isset($do))
	{
		if ($do != 'log')
		{
			$admin->LOG('تغییر صفحه' , $do);
		}
		
		if ($do == 'login')
		{
			require_once("modules/".$do.".php");
		}
		else
		{
			if ($admin->login_check() == 'FULL_ACCESS' or $admin->login_check() == 'LESS_ACCESS')
			{
				if ($_SESSION['login'] == 'poster-control')
					define('SUID' , $_SESSION['data_poster']['id']);
				elseif ($_SESSION['login'] == 'full-control')
					define('SUID' , 0);
				
				
				if (file_exists("modules/".$do.".php"))
				{
					require_once("modules/".$do.".php");
					require_once("modules/footer.php");
					require_once("notify.php");
				}
				else
				{
					echo $admin->system_message($admin->msg('صفحه درخواستی یافت نشد - <a href="'.$_SERVER['HTTP_REFERER'].'">بازگشت</a>' , "warning"));
				}
			}
			else
			{
				echo $admin->system_message('login_page');
				require_once("modules/footer.php");
			}
		}
	}
}
else
{
	echo $admin->system_message($connection_string);
}
?>