<?PHP
require_once("header.php");
require_once("menu.php");
?>
</td>
</tr>
<tr>
	<td valign="top">
		<div class="text-cont">
			<?PHP
			if (isset($_POST['post']) and $_POST['post'] == 's')
			{
				if (!empty($_FILES['image']['tmp_name']))
				{
					$name = str_replace('.' , '' , microtime(true)).'.'.end(explode('.' , $_FILES['image']['name']));
					if (move_uploaded_file($_FILES['image']['tmp_name'] , 'upload/'.$name))
					{
						$image = $name;
					}
					else
					{
						$image = $_POST['old_image'];
					}
				}
				else
				{
					$image = $_POST['old_image'];
				}


				if (!empty($_FILES['header']['tmp_name']))
				{
					$name = str_replace('.' , '' , microtime(true)).'.'.end(explode('.' , $_FILES['header']['name']));
					if (move_uploaded_file($_FILES['header']['tmp_name'] , 'upload/'.$name))
					{
						$header = $name;
					}
					else
					{
						$header = $_POST['old_header'];
					}
				}
				else
				{
					$header = $_POST['old_header'];
				}


				if ($_POST['revert_header'] == 'on')
				{
					$header = '../images/header.png';
				}

				$admin->sql("update admin set mobile = '$_POST[mobile]' , otp = '$_POST[otp]' , ip = '$_POST[ip]' , autoupdatetime = '$_POST[autoupdatetime]' , name = '$_POST[name]' , default_print_size = '$_POST[default_print_size]' , autologoutmin = '$_POST[autologoutmin]' , ticket_return_valid_time = '$_POST[ticket_return_valid_time]' , ticket_return_damage_percent = '$_POST[ticket_return_damage_percent]' , image = '$image' , header = '$header' , free_guest_defaultname = '$_POST[free_guest_defaultname]' , login_failute_refresh_time = '$_POST[login_failute_refresh_time]' , crop_width = '$_POST[crop_width]' , crop_height = '$_POST[crop_height]' , crop_quality = '$_POST[crop_quality]' ");


				if ($_POST['revert_header'] == 'on')
				{
					echo '<meta http-equiv="refresh" content="0;URL=index.php?do=changeinfo">';
				}

				$admin->LOG('تغییر تنظیمات' , "تنظیمات بروزرسانی شد");
				echo $admin->msg("تنظیمات بروزرسانی شد" , "true");
			}

			$s = $admin->sql("select * from admin");
			$r = $admin->row($s);
			$_SESSION['data'] = $r;
			?>
			<div class="add-in">
				<b class="bx">تنظیمات : </b>
				<div class="co">
					<form method="post" action=""  enctype="multipart/form-data">
						<input type="hidden" name="post" value="s" />
						<input type="hidden" name="old_image" value="<?=$r['image']?>">
						<input type="hidden" name="old_header" value="<?=$r['header']?>">
						<table cellpadding="2">
							<tr>
								<td>نام مجموعه : </td>
								<td><input type="text" name="name" class="input-t" value="<?=$r['name']?>"></td>
							</tr>
  <?PHP /*
  <tr>
    <td>آرم مجموعه : </td>
    <td><input type="file" name="image" class="input-s"> <i>در صورت خالی بودن تغییر نخواهد کرد</i></td>
  </tr>
  */ ?>
  <tr>
  	<td>تصویر هدر : </td>
  	<td><input type="file" name="header" class="input-s"> 1199x80 <i>در صورت خالی بودن تغییر نخواهد کرد</i> <label><input type="checkbox" name="revert_header"> بازیابی تصویر اصلی هدر</label></td>
  </tr>
  <tr>
  	<td>شماره موبایل مدیر : </td>
  	<td><input type="text" name="mobile" class="input-t" dir="ltr" value="<?=$r['mobile']?>"></td>
  </tr>
  <tr>
  	<td>نام پیشفرض میهمان آزاد : </td>
  	<td><input type="text" name="free_guest_defaultname" class="input-t" value="<?=$r['free_guest_defaultname']?>"></td>
  </tr>
<?PHP /*
  <tr>
    <td>IP دستگاه حضور و غیاب : </td>
    <td><input type="text" name="ip" class="input-t" dir="ltr" value="<?=$r['ip']?>"></td>
  </tr>
*/ ?>
<tr>
	<td>فعال سازی OTP : </td>
	<td><input type="checkbox" name="opt" id="otp" <?PHP if ($r['otp'] == 'on') {echo 'checked=checked';} ?>> <label for="otp">فعال</label></td>
</tr>
<tr>
	<td>دوره تناوب بروزرسانی خودکار : </td>
	<td><input type="text" name="autoupdatetime" class="input-t" dir="ltr" value="<?=$r['autoupdatetime']?>" size="4"> دقیقه</td>
</tr>
<tr>
	<td>سایز پیشفرض چاپ بلیط : </td>
	<td>
		<select name="default_print_size" class="input-s">
			<?PHP
			$se[$r['default_print_size']] = 'selected=selected';
			?>
			<option <?=$se['a4']?> value="a4">سایز A4</option>
			<option <?=$se['fish']?> value="fish">سایز فیش پرینتر</option>
		</select></td>
	</tr>
	<tr>
		<td>خروج خودکار بعد از : </td>
		<td><input type="text" name="autologoutmin" class="input-t" dir="ltr" value="<?=$r['autologoutmin']?>" size="4"> دقیقه</td>
	</tr>
	<tr>
		<td>رفرش مجدد در زمان خطا در لاگین : </td>
		<td><input type="text" name="login_failute_refresh_time" class="input-t" dir="ltr" value="<?=$r['login_failute_refresh_time']?>" size="4"> ثانیه</td>
	</tr>

	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>ارتفاع تصویر crop : </td>
		<td><input type="text" name="crop_width" class="input-t" dir="ltr" value="<?=$r['crop_width']?>" size="4"> px</td>
	</tr>
	<tr>
		<td>عرض تصویر crop : </td>
		<td><input type="text" name="crop_height" class="input-t" dir="ltr" value="<?=$r['crop_height']?>" size="4"> px</td>
	</tr>
	<tr>
		<td>کیفیت عکس : </td>
		<td><input type="text" name="crop_quality" class="input-t" dir="ltr" value="<?=$r['crop_quality']?>" size="4"> 0 تا 100</td>
	</tr>

	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td><input type="submit" value="تایید" class="input-b" /></td>
	</tr>
</table>

</form>
</div>
</div>

<br><br>

<?PHP
if (isset($_POST['post']) and $_POST['post'] == 'p')
{
	if (!empty($_POST['old_username']))
	{
		if (sha1($_POST['old_username']) == $_SESSION['data']['username'] and sha1($_POST['password']) == $_SESSION['data']['password'])
		{
			$username = sha1($_POST['username']);
			$sql_username = $admin->sql("update admin set username = '$username' ");

		}
	}
	
	if  ($sql_username)
	{
		$_SESSION['data']['username'] = $username;
		echo $admin->msg("نام کاربری بروزرسانی شد" , "true");
		$admin->LOG('تغییر نام کاربری و کلمه عبور بخش مدیریت' , "نام کاربری بروزرسانی شد");
	}
	else
	{
		echo $admin->msg("اطلاعات وارد شده صحیح نیست" , "critical");
	}
	
}
?>
<div class="add-in">
	<b class="bx">تغییر نام کاربری مدیریت : </b>
	<div class="co">
		<form method="post" action="">
			<input type="hidden" name="post" value="p" />
			<table cellpadding="2">
				<tr>
					<td width="240">نام کاربری قدیم : <input type="text" name="old_username" class="input-t" dir="ltr" value="" /> </td>

					<td width="240">رمز عبور : <input type="password" name="password" class="input-t" dir="ltr" value="" /> </td>

					<td width="240">نام کاربری جدید : <input type="text" name="username" class="input-t" dir="ltr" value="" /> </td>


					<td>&nbsp;</td>
					<td>&nbsp;</td>

					<td>&nbsp;</td>
					<td><input type="submit" value="تایید" class="input-b" /></td>
				</tr>
			</table>

		</form>
	</div>
</div>

<br><br>

<?PHP
if (isset($_POST['post']) and $_POST['post'] == 'x')
{
	if (!empty($_POST['old_password']))
	{
		if (sha1($_POST['old_password']) ==  $_SESSION['data']['password'])
		{
			$password = sha1($_POST['password1']);
			$repassword = sha1($_POST['password2']);
			if ($password == $repassword)
			{
				$sql_password = $admin->sql("update admin set password = '$password' ");
			}
			else
			{
				echo $admin->msg("کلمه های عبور وارد شده با هم برابر نسیتند . کلمه عبور تغییر نکرد" , "warning");
				$admin->LOG('تغییر نام کاربری و کلمه عبور بخش مدیریت' , "کلمه های عبور وارد شده با هم برابر نسیتند . کلمه عبور تغییر نکرد");
			}
		}
	}
	
	if  ($sql_password)
	{
		echo $admin->msg("کلمه عبور بروزرسانی شد" , "true");
		$admin->LOG('تغییر نام کاربری و کلمه عبور بخش مدیریت' , "کلمه عبور بروزرسانی شد");
	}
	else
	{
		echo $admin->msg("اطلاعات وارد شده صحیح نیست" , "critical");
	}
}
?>
<div class="add-in">
	<b class="bx">تغییر رمز عبور : </b>
	<div class="co">
		<form method="post" action="">
			<input type="hidden" name="post" value="x" />
			<table cellpadding="2">
				<tr>
					<td width="240">رمز عبور قدیم : <input type="password" name="old_password" class="input-t" dir="ltr" value="" /> </td>

					<td width="240">رمز عبور جدید : <input type="password" name="password1" class="input-t" dir="ltr" value="" /> </td>

					<td width="240">تکرار رمز عبور جدید : <input type="password" name="password2" class="input-t" dir="ltr" /></td>

					<td>&nbsp;</td>
					<td>&nbsp;</td>

					<td>&nbsp;</td>
					<td><input type="submit" value="تایید" class="input-b" /></td>
				</tr>
			</table>

		</form>
	</div>
</div>



<br><br>

<?PHP
if (isset($_POST['post']) and $_POST['post'] == 'px')
{
	if (!empty($_POST['old_password']))
	{
		if (sha1($_POST['old_password']) ==  $_SESSION['data']['security_pass'])
		{
			$password = sha1($_POST['password1']);
			$repassword = sha1($_POST['password2']);
			if ($password == $repassword)
			{
				$sql_password = $admin->sql("update admin set security_pass = '$password' ");
			}
			else
			{
				echo $admin->msg("کلمه های عبور وارد شده با هم برابر نسیتند . کلمه عبور تغییر نکرد" , "warning");
				$admin->LOG('تغییر نام کاربری و کلمه عبور بخش مدیریت' , "کلمه های عبور وارد شده با هم برابر نسیتند . کلمه عبور تغییر نکرد");
			}
		}
	}

	if  ($sql_password)
	{
		echo $admin->msg("رمز امنیتی بروزرسانی شد" , "true");
		$admin->LOG('تغییر نام کاربری و کلمه عبور بخش مدیریت' , "کلمه عبور بروزرسانی شد");
	}
	else
	{
		echo $admin->msg("اطلاعات وارد شده صحیح نیست" , "critical");
	}
}
?>
<div class="add-in">
	<b class="bx">تغییر رمز امنیتی : </b>
	<div class="co">
		<form method="post" action="">
			<input type="hidden" name="post" value="px" />
			<table cellpadding="2">
				<tr>
					<td width="240">رمز امنیتی قدیم : <input type="password" name="old_password" class="input-t" dir="ltr" value="" /> </td>

					<td width="240">رمز امنیتی جدید : <input type="password" name="password1" class="input-t" dir="ltr" value="" /> </td>

					<td width="240">تکرار رمز امنیتی جدید : <input type="password" name="password2" class="input-t" dir="ltr" /></td>

					<td>&nbsp;</td>
					<td>&nbsp;</td>

					<td>&nbsp;</td>
					<td><input type="submit" value="تایید" class="input-b" /></td>
				</tr>
			</table>

		</form>
	</div>
</div>



<br><br>
<?PHP
//echo sha1("M@1904sTd#@L$");

if (isset($_POST['post']) and $_POST['post'] == 'f')
{
	if (!empty($_POST['admin_password']) and !empty($_POST['developer_p']))
	{
		$admin_p = sha1($_POST['admin_password']);
		$developer_p = sha1($_POST['developer_p']);
		
		if ($developer_p == $_SESSION['data']['security_pass'] and $admin_p == $admin->result($admin->sql("select password from admin") , 0))
		{
			$sql = $admin->sql("show tables");
			while ($row = $admin->row($sql))
			{
				if ($row['Tables_in_complexa_db'] != 'admin')
				{
					$admin->sql("truncate `".$row['Tables_in_complexa_db']."`;");
				}
			}
			
			echo $admin->msg("انجام شد" , "true");
			$admin->LOG('بازگشت به تنظیمات اولیه' , "انجام شد");
		}
		else
		{
			echo $admin->msg("رمزهای عبور وارد شده صحیح نیستند" , "critical");
			$admin->LOG('بازگشت به تنظیمات اولیه' , "رمزهای عبور وارد شده صحیح نیستند");
		}
	}
	else
	{
		echo $admin->msg("خطا در ورود اطلاعات" , "critical");
		$admin->LOG('بازگشت به تنظیمات اولیه' , "خطا در ورود اطلاعات");
	}
	
}
?>
<div class="add-in">
	<b class="bx">بازگشت به تنظیمات اولیه : </b>
	<div class="co">
		<form method="post" action="" onSubmit="return confirm('آیا اطمینان دارید؟')">
			<input type="hidden" name="post" value="f" />
			<table cellpadding="2">
				<tr>
					<td width="240">نام کاربری مدیریت : <input type="password" name="admin_username" class="input-t" dir="ltr" value="" required /> <span style="color:red;">*</span></td>

					<td width="240">رمز مدیریت : <input type="password" name="admin_password" class="input-t" dir="ltr" value="" required /> <span style="color:red;">*</span></td>

					<td width="240">رمز امنیتی : <input type="password" name="developer_p" class="input-t" dir="ltr" value="" required /> <span style="color:red;">*</span></td>

					<td>&nbsp;</td>
					<td>&nbsp;</td>

					<td>&nbsp;</td>

					<td><input type="submit" value="تایید" class="input-b" /> </td>
				</tr>
			</table>
			<div style="color:red; font-weight:bold; text-align: center; margin-top: 20px;"> ** در صورت تایید ، کلیه اطلاعات حذف خواهد شد ** </div>
		</form>
	</div>
</div>




</div>
</td>
</tr>
</table>
