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
	$time = $admin->true_time();
	$sql = $admin->sql("insert into msgs_fromusers (suid , user_id , text , time , read_msg) values('".SUID."' , '".$_SESSION['data_poster']['id']."' , '$_POST[text]' , '$time' , '0')");
	if  ($sql)
	{
		$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
	}
	else
	{
		$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
	}
	
	$admin->LOG('ارسال پیغام به مدیر' , $msg);
}
?>
<div class="add-in">
<b class="bx">پیغام جدید : </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" />
<table cellpadding="2">
  <tr>
    <td>متن : </td>
    <td><textarea name="text" class="input-s" style="width:500px; height:200px;"></textarea></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" value="تایید" class="input-b" /></td>
  </tr>
</table>

</form>
</div>
</div>
</div>
    </td>
  </tr>
</table>
