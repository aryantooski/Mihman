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
	
	if ($_POST['end_num'] > $_POST['start_num'])
	{
		$counts = $_POST['end_num'] - $_POST['start_num'];
		$added = 0;

		for ($i = $_POST['start_num'] ; $i <= $_POST['end_num'] ; $i++)
		{
			$sql = $admin->sql("insert into closet set suid = '".SUID."' , category_name = '$_POST[category_name]' , name = '$i' , description = '$_POST[description]' , status = 'فعال' , price = '$_POST[price]' ");

			if ($sql)
			{
				$added++;
			}
		}
	}
		
	
	if  ($added)
	{
		$msg = "عملیات درخواستی با موفقیت انجام شد و ".$added." کمد درج شد"; echo $admin->msg($msg , "true");
	}
	else
	{
		$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
	}
	
	$admin->LOG('کمد جدید' , $msg);
}
?>
<div class="add-in">
<b class="bx">کمد جدید : </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" id="post" />


<table cellpadding="2">
  <tr>
    <td>گروه کمد ها : </td>
    <td><input type="text" name="category_name" class="input-t"></td>
  </tr>
  <tr>
    <td>قیمت : </td>
    <td><input type="text" name="price" dir="ltr" class="input-t"> تومان</td>
  </tr>
  <tr>
    <td>شماره کمد شروع : </td>
    <td><input type="text" name="start_num" class="input-t" dir="ltr"></td>
  </tr>
  <tr>
    <td>شماره کمد پایان : </td>
    <td><input type="text" name="end_num" class="input-t" dir="ltr" /></td>
  </tr>
  
  <tr>
    <td>توضیحات : </td>
    <td><textarea name="description" class="input-s" style="width:300px;"></textarea></td>
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
