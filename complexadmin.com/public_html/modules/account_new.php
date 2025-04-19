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
	$sql = $admin->sql("insert into account (suid , name , number) values('".SUID."' , '$_POST[name]' , '$_POST[number]')");
	if  ($sql)
	{
		$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
	}
	else
	{
		$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
	}
	
	$admin->LOG('حساب جدید' , $msg);
}
?>
<div class="add-in">
<b class="bx">حساب جدید : </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" />
<table cellpadding="2">
  <tr>
    <td>عنوان حساب : </td>
    <td><input type="text" name="name" class="input-t" size="40" /></td>
  </tr>
  <tr>
    <td>شماره حساب : </td>
    <td><input type="text" name="number" class="input-t" dir="ltr" /></td>
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
