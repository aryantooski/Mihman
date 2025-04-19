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
	$date = $_POST['year'].'-'.$_POST['month'].'-'.$_POST['day'];
	
	$sql = $admin->sql("insert into tracks (suid , account_id , type , amount , time , description) values('".SUID."' , '$_POST[account_toid]' , '+' , '".str_replace("," , "" , $_POST['amount'])."' , '".$admin->true_time()."' , 'واریز وجه به صورت دستی - توضیحات: ".$_POST['description']."' )");
	if  ($sql)
	{
		$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
	}
	else
	{
		$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
	}
	
	$admin->LOG('واریز وجه' , $msg);
}
?>
<div class="add-in">
<b class="bx">واریز وجه : </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" />
<table cellpadding="5">
  <tr>
    <td>به حساب : </td>
    <td><?PHP echo $admin->select('account' , 'to_account' , 'name' , 0 , false); ?></td>
  </tr>
  <tr>
    <td>مبلغ  : </td>
    <td><input type="text" name="amount" class="input-t" dir="ltr" <?PHP echo NUMERAL; ?> /> تومان</td>
  </tr>
  <tr>
    <td>تاریخ واریز : </td>
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
    </td>
  </tr>
  <tr>
    <td>شماره فیش : </td>
    <td><input type="text" name="fishnumber" class="input-t" dir="ltr" /></td>
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
