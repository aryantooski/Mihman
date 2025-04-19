<?PHP
require_once("header.php");
$lgn = false;

/*
if (!$admin->license_validation())
	exit('<div style="color:red; font-size:40pt; text-align:center;">LICENSE ERROR</div>');
*/


if (($_POST) and (!isset($_GET['secret'])))
{
	if (isset($_POST['username']) and isset($_POST['password']))
	{
		//if ($_POST['loginer'] == 'admin')
		//{
		$row = $admin->supersql("select * from admin where (username = '".sha1(strtolower($_POST['username']))."')");
			
		if (count($row) > 1)
		{
			$username = sha1(strtolower($_POST['username']));
			$password = sha1($_POST['password']);
			
			$_SESSION['lastlogin'] = $row['lastlogin'];
			
			if ($username == $row['username'] and $password == $row['password'])
			{
				$_SESSION['lgn'] = 'full-control';
				$lgn = true;
				$mobile = $row['mobile'];
				$name = @$admin->result($admin->sql("select name from admin") , 0);
				$_SESSION['data'] = $row;
				$_SESSION['data']['id'] = 0;
				$_SESSION['data']['lastviewstamp'] = time();
			}
			else
			{
				echo $admin->msg('نام کاربری و یا کلمه عبور اشتباه است - <a href="index.php?do=comlogin">لطفا مجددا تلاش کنید</a>' , "critical");
				echo '<meta http-equiv="refresh" content="'.$admin->supersql("select login_failute_refresh_time from admin")['login_failute_refresh_time'].';URL=index.php">';
			}
		}
		else
		{

			$sql = $admin->sql("select * from users where username = '".strtolower($_POST['username'])."'");
			if (mysqli_num_rows($sql) == 1)
			{
				$row = $admin->row($sql);
				$password = sha1($_POST['password']);
				
				if ($row['password'] == $password)
				{
					$_SESSION['lgn'] = 'poster-control';
					$_SESSION['data_poster'] = $row;
					$lgn = true;
					$mobile = $row['mobile'];
					$name = $row['name'];
					$_SESSION['data'] = $row;
					$_SESSION['data']['lastviewstamp'] = time();

				}
				else
				{
					echo $admin->msg('نام کاربری و یا کلمه عبور اشتباه است - <a href="index.php?do=comlogin">لطفا مجددا تلاش کنید</a>' , "critical");
					echo '<meta http-equiv="refresh" content="'.$admin->supersql("select login_failute_refresh_time from admin")['login_failute_refresh_time'].';URL=index.php">';
				}
			}
			else
			{
				echo $admin->msg('نام کاربری و یا کلمه عبور اشتباه است - <a href="index.php?do=comlogin">لطفا مجددا تلاش کنید</a>' , "critical");
				echo '<meta http-equiv="refresh" content="'.$admin->supersql("select login_failute_refresh_time from admin")['login_failute_refresh_time'].';URL=index.php">';
			}
		}
	}
	else
	{
		echo $admin->msg('نام کاربری و یا کلمه عبور دریافت نشده است - <a href="index.php?do=comlogin">لطفا مجددا تلاش کنید</a>' , "critical");
		echo '<meta http-equiv="refresh" content="'.$admin->supersql("select login_failute_refresh_time from admin")['login_failute_refresh_time'].';URL=index.php">';
	}
}



$lgn = false;


//if (isset($_GET['secret']))
if (true)
{
	//if (($_POST['secret'] == $_SESSION['code']) and isset($_SESSION['lgn']))
	if (true)
	{
		$_SESSION['login'] = $_SESSION['lgn'];
		$admin->LOG('ورود به سیستم' , 'موفق');
		
		require_once('cron.php');
		
		switch ($_SESSION['lgn'])
		{
			case 'full-control' :
				echo $admin->msg("ورود انجام شد . لطفا چند لحظه صبر کنید ..." , "loading");
				
				$now = $admin->true_time() . ' &nbsp; '.$_SERVER['REMOTE_ADDR'];
				
				$admin->sql("update admin set lastlogin = '$now' limit 1 ");
				echo '
				<script language="javascript">
				window.location.href = "index.php?do=dashboard";
				</script>';
			break;
			
			case 'poster-control' :
				echo $admin->msg("ورود انجام شد . لطفا چند لحظه صبر کنید ..." , "loading");
				$admin->sql("update users set lastlogin = '".$admin->true_time()."' where (id = '".$_SESSION['data_poster']['id']."') limit 1 ");
				echo '
				<script language="javascript">
				window.location.href = "index.php?do=dashboard";
				</script>';
			break;
		}
	}
	else
	{
		echo $admin->msg('رمز نادرست - <a href="index.php?do=comlogin">لطفا مجددا تلاش کنید</a>' , "critical");
	}
}


if ($lgn)
{
	$rand = rand(111111 , 999999);
	$_SESSION['code'] = $rand;
	
	require_once('inc/_sms-class.php');
	$sms = new _sms();
	
	if ($sms->send($mobile , 'سلام '.$name.'، رمز ورود نرم افزار مدیریت مجموعه: '.$rand))
	{
		echo '
		<center>
		<br />
		<b>
		رمز دوم برای شما توسط پیام کوتاه ارسال شده است
		</b>
		</center>
		</td>
		</tr>
			<td valign="top" align=center>
		<div class="text-cont" style="margin-top:100px; margin-bottom:100px;">
		<form method="post" action="index.php?do=login&secret">
		<table cellpadding=2>
		  <tr>
			<td width="70">رمز : </td>
			<td><input type="text" name="secret" dir="ltr" class="input-t" size="25" /></td>
		  </tr>
		  <tr>
			<td>&nbsp;</td>
			<td><input type="submit" value="ورود" class="input-b" /></td>
		  </tr>
		</table>
		</form>
		</div>
			</td>
		  </tr>
		</table>';
	}
	else
	{
		echo $admin->msg("متاسفانه سرویس پیام کوتاه فعال نیست . لطفا درصورتی که مجددا این پیام را مشاهده کردید با مسئول فنی تماس بگیرید" , "critical");
	}
}
?>
</div>
</div>
    </td>
  </tr>
</table>
