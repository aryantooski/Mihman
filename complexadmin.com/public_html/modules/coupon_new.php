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
	
	$sql = $admin->sql("insert into coupon set suid = '".SUID."' , amount = '$_POST[amount]' , serial = '$_POST[serial]' , description = '$_POST[description]' , status = '$_POST[status]' , add_time = '".$admin->time('Y-m-d H:i:s' , 'now')."' ");
	if  ($sql)
	{
		$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
	}
	else
	{
		$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
	}
	
	$admin->LOG('گیفت کارت جدید' , $msg);
}

?>

<div class="add-in">
<b class="bx">گیفت کارت جدید : </b>
<div class="co">
<form method="post" action="">
<input type="hidden" name="post" />
<table cellpadding="2">
  
  <tr>
    <td>مبلغ تخفیف : </td>
    <td><input type="text" name="amount" class="input-t" dir="ltr" required onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )"> تومان</td>
  </tr>
  <tr>
    <td>سریال : </td>
    <td><input type="text" name="serial" class="input-t" dir="ltr" required></td>
  </tr>
  <tr>
    <td>وضعیت : </td>
    <td>
      <select name="status" class="input-s">
        <option value="فعال">فعال</option>
        <option value="رزرو">رزرو</option>
        <?PHP /*<option value="استفاده شده">استفاده شده</option>*/ ?>
      </select>

    </td>
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
