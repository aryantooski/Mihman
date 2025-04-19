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
{
	file_get_contents('http://'._URL.'/cron.php');
	//file_get_contents('http://web.golestansport.ir/device2.php');
	if  (true)
	{
		$msg = "بروزرسانی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
	}
	else
	{
		$msg = "خطا در انجام عملیات"; echo $admin->msg($msg , "critical");
	}
	
	$admin->LOG('بروزرسانی دستی' , $msg);
}
?>
<div class="add-in">
<b class="bx">بروزرسانی : </b>
<div class="co">
<form method="post" action="">
<input type="hidden" name="post" />
<table cellpadding="2">
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" value="بروزرسانی دستی" class="input-b" style="width:150px;" /></td>
  </tr>
</table>

</form>
</div>
</div>
</div>
    </td>
  </tr>
</table>
