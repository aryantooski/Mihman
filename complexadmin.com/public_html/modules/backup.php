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
if (isset($_POST['post']) and $_POST['post'] == 'a')
{
	$name = $admin->backup();

	if  (file_exists($name))
	{
		$msg = "نسخه پشتیبان با موفقیت دریافت شد . <a href='".$name."' target=\"_blank\">برای دانلود اینجا کلیک کنید"; echo $admin->msg($msg , "true");
	}
	else
	{
		$msg = "خطا در انجام عملیات"; echo $admin->msg($msg , "critical");
	}
	
	$admin->LOG('دریافت فایل پشتیبان از بانک اطلاعاتی' , $msg);
}
/*
?>
<div class="add-in">
<b class="bx">دریافت فایل پشتیبان از بانک اطلاعاتی : </b>
<div class="co">
<form method="post" action="">
<input type="hidden" name="post" value="a" />
<table cellpadding="2">
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" value="دریافت نسخه پشتیبان" class="input-b" style="width:150px;" /></td>
  </tr>
</table>

</form>
</div>
</div>
</div>
*/
?>

<div class="text-cont">
<?PHP
if (isset($_POST['post']) and $_POST['post'] == 'b')
{
	$admin->sql("update admin set autobackup_mins = '$_POST[autobackup_mins]' , autobackup_time_type = '$_POST[autobackup_time_type]' , autobackup_limit = '$_POST[autobackup_limit]'  ");

	$admin->LOG('تغییر تنظیمات' , "تنظیمات بکاپ بروزرسانی شد");

	echo $admin->msg("تنظیمات بکاپ بروزرسانی شد" , "true");
}

$s = $admin->sql("select * from admin");
$r = $admin->row($s);
$_SESSION['data'] = $r;

?>
<div class="add-in">
<b class="bx">تنظیم پشتیبان گیری خودکار : </b>
<div class="co">
<form method="post" action="">
<input type="hidden" name="post" value="b" />
<table cellpadding="2">
  <tr>
    <td>دریافت خودکار نسخه پشتیبان هر </td>
    <td><input type="text" name="autobackup_mins" class="input-t" size="10" dir="ltr" value="<?=$r['autobackup_mins']?>"> 
    <?PHP
    $sx[$r['autobackup_time_type']] = 'selected=selected';
    ?>
    <select name="autobackup_time_type">
    	<option value="hour" <?=$sx['hour']?>>ساعت</option>
    	<option value="day" <?=$sx['day']?>>روز</option>
    </select>
     یکبار</td>
  </tr>
  <tr>
    <td>تعداد کل نسخه های بکاپ </td>
    <td><input type="text" name="autobackup_limit" class="input-t" size="10" dir="ltr" value="<?=$r['autobackup_limit']?>"> </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" value="ذخیره" class="input-b" /></td>
  </tr>
</table>

</form>
</div>
</div>
</div>





<div class="text-cont">
<?PHP
if (isset($_GET['op']) and $_GET['op'] == 'remove')
{
	@unlink('backfile/'.$_GET['dir']);

	$admin->LOG('حذف بکاپ' , "حذف فایل بکاپ انجان شد");

	echo $admin->msg("حذف فایل بکاپ انجان شد" , "true");
}


?>
<div class="add-in">
<b class="bx">نسخه های پشتیبان موجود : </b>
<div class="co">

<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center">#</td>
    <td align="center">نام فایل</td>
    <td align="center">زمان</td>
    <td align="center">حجم فایل</td>
    <td width="130" align="center">ابزار</td>
  </tr>
<?PHP


$exec = '';
$x = 1;

$open = opendir('backfile/');

$counter = $r['autobackup_limit'];

while ($dir = readdir($open))
{
	if ($x % 2 == 1)
	{
		$color = '#eeeeee';
	}
	else
	{
		$color = '#e1e1e1';
	}
	
	if ($dir != '.' and $dir != '..')
	{
		echo '
	  <tr height="25" bgcolor="'.$color.'" class="tblrow">
	    <td bgcolor="#d1d1d1" align="center">'.$x.'</td>
		<td align="center"><a href="backfile/'.$dir.'" target="_blank"><span dir=ltr>complexadmin--'.$dir.'</span></a></td>
		<td align="center"><span dir=ltr>';
		unset($date , $d , $t , $y , $m , $h , $i , $s , $stamp);
		$date = substr($dir , 0 , -4);
		list($d , $t) = explode(' ' , $date);
		list($y , $m , $d) = explode('-' , $d);
		

		$stamp = mktime($h , $i , $s , $m , $d , $y);

		echo $admin->time('Y-m-d' , $stamp) . ' '.str_replace('.' , ':' , $t);

		echo '</span></td>
		<td align="center"><span dir=ltr>'.round((filesize('backfile/'.$dir) / 1024) , 2).' Kb</span></td>
	
	    <td align="center">
		<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do=backup&op=remove&dir='.$dir.'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
		</td>
	  </tr>
		';
		
		$x++;
		$counter--;
	}

}

if ($counter > 0)
{
	for ($counter ; $counter > 0 ; $counter--)
	{
		if ($x % 2 == 1)
		{
			$color = '#eeeeee';
		}
		else
		{
			$color = '#e1e1e1';
		}
		
		if ($dir != '.' and $dir != '..')
		{
			echo '
		  <tr height="25" bgcolor="'.$color.'" class="tblrow">
		    <td bgcolor="#d1d1d1" align="center">'.$x.'</td>
			<td align="center" colspan=4>بکاپ خالی</td>
		  </tr>
			';
			
			$x++;
		}
	}
}
?>
</table>

</div>
</div>
</div>




    </td>
  </tr>
</table>
