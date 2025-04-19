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
	$time = $_POST['year'].'-'.$_POST['month'].'-'.$_POST['day'].' '.$_POST['hour'].':'.$_POST['min'].':00';
	
	$sql = $admin->sql("insert into personel_time (suid , personel_id , act , time , description) values('".SUID."' , '$_POST[personel_id]' , '$_POST[act]' , '".$time."' , '$_POST[description]')");
	if  ($sql)
	{
		$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
	}
	else
	{
		$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
	}
	
	$admin->LOG('ثبت ساعت' , $msg);
}

?>
<div class="add-in">
<b class="bx">ثبت ساعت حضور : </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" />
<table cellpadding="2">
  <tr>
    <td>انتخاب پرسنل : </td>
    <td>
    <?PHP
	echo $admin->select('personel', 'personel_id' , 'name' , 0 , false);
	?>
    </td>
  </tr>
  <tr>
    <td>عملیات : </td>
    <td>
    <select name="act" class="input-s">
    <option value="ورود">ورود</option>
    <option value="خروج">خروج</option>
    </select>
    </td>
  </tr>
  <tr>
    <td>زمان : </td>
    <td dir="ltr">
    <?PHP
	list($date , $time) = explode(" " , $admin->true_time());
	
	list($year , $month , $day) = explode("-" , $date);
	list($hour , $min , $sec) = explode(":" , $time);
	
	$month += 0;
	$day += 0;
	$hour += 0;
	$min += 0;
	$sec += 0;
	
	?>
	<?PHP echo $admin->full_select(1380 , 1400 , 'year' , $year) ?>
	<?PHP echo $admin->full_select(1 , 12 , 'month' , $month) ?>
	<?PHP echo $admin->full_select(1 , 31 , 'day' , $day) ?> &nbsp; 
	<?PHP echo $admin->full_select(1 , 23 , 'hour' , $hour) ?>
	<?PHP echo $admin->full_select(0 , 59 , 'min' , $min) ?>
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
