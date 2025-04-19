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
	
	$sql = $admin->sql("insert into card_payment (suid , card_id , amount , date , description , fishnumber , account) values('".SUID."' , '$_POST[card_id]' , '".str_replace("," , "" , $_POST['amount'])."' , '$date' , '$_POST[description]' , '$_POST[fishnumber]' , (select name from account where id = '$_POST[account_id]'))");
	if  ($sql)
	{
		$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
		$admin->sql("update card set remained = remained - ".str_replace("," , "" , $_POST['amount'])." where id = '$_POST[card_id]' limit 1");
		
		$contract = $admin->supersql("select * from card where id = '$_POST[card_id]'");
		
		$admin->sql("insert into tracks values(NULL , '".SUID."' , '$_POST[account_id]' , '+' , '".str_replace("," , "" , $_POST['amount'])."' , '".$admin->time()."' , 'واریز بابت کارت آموزشی به شماره  ".$contract['code']." به شماره فیش ".$_POST['fishnumber']." در تاریخ $date')");
	}
	else
	{
		$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
	}
	
	$admin->LOG('دریافت جدید - کارت آموزشی' , $msg);
}
?>
<div class="add-in">
<b class="bx">دریافت جدید : </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" />
<table cellpadding="5">
  <tr>
    <td>انتخاب کارت آموزشی : </td>
    <td>
        <select name="card_id" class="input-s" id="seachableSelect">
        <?PHP
        $s = $admin->sql("select * from card order by id desc");
        while ($r = $admin->row($s))
        {
            echo '<option value="'.$r['id'].'">نام : '.$r['name'].'&nbsp;&nbsp;&nbsp;&nbsp; کد کارت : '.$r['code'].'&nbsp;&nbsp;&nbsp;&nbsp; مانده حساب : '.number_format($r['remained']).' تومان</option>';
        }
        ?>
        </select>
	<span style="color:red;"> جستجو : </span><input id="textbox" type="text" class="input-t" /></td>
  </tr>
  <tr>
    <td>مبلغ  : </td>
    <td><input type="text" name="amount" class="input-t" dir="ltr" <?PHP echo NUMERAL; ?> /> تومان</td>
  </tr>
  <tr>
    <td>تاریخ دریافت : </td>
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
    <td>حساب بانکی : </td>
    <td><?PHP echo $admin->select('account' , 'account_id' , 'name' , 0 , false); ?></td>
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
