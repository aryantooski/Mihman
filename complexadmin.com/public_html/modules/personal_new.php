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


if (isset($_POST['post']))
{/*
	$type = '';
	if ($_POST['t1'] == 'on')
		$type .= 'پرسنل,';
	
	if ($_POST['t2'] == 'on')
		$type .= 'مربی آموزشی,';
	
	if ($_POST['t3'] == 'on')
		$type .= 'ناجی,';
	
	$type = substr($type , 0 , strlen($type) - 1);
	*/
	
	$ip = $admin->result($admin->sql("select ip from admin") , 0);
	
	$sql = $admin->sql("insert into personel (suid , type , name , gender , ntcode , shsh , hour_per_day , amount_type , amount_per_hour , insurance , address , fathername , birthdate , workplace , workplace_code , tel) values('".SUID."' , '$_POST[type]' , '$_POST[name]' , '$_POST[gender]' , '$_POST[ntcode]' , '$_POST[shsh]' , '$_POST[hour_per_day]' , '$_POST[amount_type]' , '".str_replace("," , "" , $_POST['amount_per_hour'])."' , '$_POST[insurance]' , '$_POST[address]' , '$_POST[fathername]' , '$_POST[birthdate]' , '$_POST[workplace]' , '$_POST[workplace_code]' , '$_POST[tel]')");
	if  ($sql)
	{
		$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
		/*
		if ($_POST['autoaddtodevice'] == 'on')
		{

			$url = "http://".$ip."/csl/user?action=save&id=add";
			$ch = curl_init($url);
			curl_setopt($ch, CURLOPT_HEADER, false);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
			curl_setopt($ch, CURLOPT_POST, true);
			
			$data = array(
				'upin2' => mysqli_insert_id(),
				'upin' => 'NULL',
				'uname' => substr($_POST['name'] , 0 , 8),
				'uprivilege' => '0',
				'upwd' => substr($_POST['ntcode'] , 5 , 5),
				'ugroup' => '0',
				'utz1' => '0' ,
				'utz2' => '0' ,
				'utz3' => '0' ,
				'ucard' => '0' ,
			);
			
			curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
			$contents = curl_exec($ch);
			curl_close($ch);
			
			$return = md5($contents);
			
			if ($return == '359b7e5e550b75f7c5a8e2548232ac97')
			{
				echo $admin->msg('ثبت کاربر در دستگاه با موفقیت انجام شد' , "true");
			}
		}
    */
	}
	else
	{
		$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
	}
	
	$admin->LOG('پرسنل جدید' , $msg);
}

?>
<div class="add-in">
<b class="bx">پرسنل جدید : </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" />
<table cellpadding="2">
  <tr>
    <td>نوع همکاری : </td>
    <td><input type="text" name="type" class="input-t" required/> <span style="color:red">*</span></td>
  </tr>
  <tr>
    <td>نام و نام خانوادگی : </td>
    <td><input type="text" name="name" class="input-t" required/> <span style="color:red">*</span></td>
  </tr>
  <tr>
    <td>جنسیت : </td>
    <td>
    <select name="gender" class="input-s" required>
      <option value="">انتخاب کنید</option>
      <option value="مرد">مرد</option>
      <option value="زن">زن</option>
    </select> <span style="color:red">*</span>
    </td>
  </tr>
  <tr>
    <td>کد ملی : </td>
    <td><input type="text" name="ntcode" class="input-t" dir="ltr" /> بدون خط تیره</td>
  </tr>
  <tr>
    <td>شماره شناسنامه : </td>
    <td><input type="text" name="shsh" class="input-t" dir="ltr" /></td>
  </tr>
<?PHP
/*
  <tr>
    <td>حداقل ساعت کارکرد در روز : </td>
    <td><input type="text" name="hour_per_day" class="input-t" dir="ltr" size="15" /> ساعت</td>
  </tr>
*/
?>
  <tr>
    <td>نوع دستمزد : </td>
    <td>
    <select name="amount_type" class="input-s" required>
      <option value="">انتخاب کنید</option>
      <option value="ساعتی">ساعتی</option>
      <option value="روزانه">روزانه</option>
    </select> <span style="color:red">*</span>
    </td>
  </tr>

  <tr>
    <td>پرداختی : </td>
    <td><input type="text" name="amount_per_hour" class="input-t" dir="ltr" <?PHP echo NUMERAL; ?> required/> <span style="color:red">*</span> تومان</td>
  </tr>
  <tr>
    <td>شماره بیمه : </td>
    <td><input type="text" name="insurance" class="input-t" dir="ltr" /></td>
  </tr>

  <tr>
    <td>نام پدر : </td>
    <td><input type="text" name="fathername" class="input-t" /></td>
  </tr>
  <tr>
    <td>تاریخ تولد : </td>
    <td><input type="text" name="birthdate" class="input-t" dir="ltr"/></td>
  </tr>
  <tr>
    <td>محل کار : </td>
    <td><input type="text" name="workplace" class="input-t" required/> <span style="color:red">*</span></td>
  </tr>

  <tr>
    <td>شماره تماس : </td>
    <td><input type="text" name="tel" class="input-t" dir="ltr" required/> <span style="color:red">*</span></td>
  </tr>
  <tr>
    <td>آدرس : </td>
    <td><textarea name="address" class="input-s" style="width: 250px;" required/></textarea> <span style="color:red">*</span></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" value="تایید" class="input-b" /> <input type="checkbox" name="autoaddtodevice" id="autoaddtodevice" checked> <label for="autoaddtodevice">ثبت خودکار شخص در دستگاه</label></td>
  </tr>
</table>

</form>
</div>
</div>
</div>
    </td>
  </tr>
</table>
