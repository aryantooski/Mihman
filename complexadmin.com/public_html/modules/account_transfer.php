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
	
	$s = $admin->row($admin->sql("select * from account where id = '$_POST[account_toid]'"));
	$s2 = $admin->row($admin->sql("select * from account where id = '$_POST[account_fromid]'"));
	
	
	$_POST['description'] = 'بابت قرارداد شماره '.$_POST['contract_id'].' '.$_POST['description'];
	
	
	$sql = $admin->sql("insert into tracks (suid , account_id , type , amount , time , description) values('".SUID."' , '$_POST[account_fromid]' , '-' , '".str_replace("," , "" , $_POST['amount'])."' , '".$admin->true_time()."' , 'برداشت بابت انتقال وجه به حساب ".$s['name'].". توضیحات: ".$_POST['description']."' )");
	if  ($sql)
	{
		$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
		
		$admin->sql("insert into tracks (suid , account_id , type , amount , time , description) values('".SUID."' , '$_POST[account_toid]' , '+' , '".str_replace("," , "" , $_POST['amount'])."' , '".$admin->true_time()."' , 'واریز بابت انتقال وجه از حساب ".$s2['name']." در تاریخ $date به شماره فیش ".$_POST['fishnumber'].". توضیحات: ".$_POST['description']."' )");
	}
	else
	{
		$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
	}
	
	$admin->LOG('انتقال وجه' , $msg);
}
?>
<div class="add-in">
<b class="bx">انتقال وجه : </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" />
<table cellpadding="5">
  <tr>
    <td>حساب مبدا : </td>
    <td><?PHP echo $admin->select('account' , 'account_fromid' , 'name' , 0 , false); ?></td>
  </tr>
  <tr>
    <td>حساب مقصد : </td>
    <td><?PHP echo $admin->select('account' , 'account_toid' , 'name' , 0 , false); ?></td>
  </tr>
  <tr>
    <td>مبلغ  : </td>
    <td><input type="text" name="amount" class="input-t" dir="ltr" <?PHP echo NUMERAL; ?> /> تومان</td>
  </tr>
  <tr>
    <td>تاریخ انتقال : </td>
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
    <td>انتخاب قرارداد : </td>
    <td>
        <select name="contract_id" class="input-s" id="seachableSelect">
        <?PHP
        $s = $admin->sql("select * from contract order by id desc");
        while ($r = $admin->row($s))
        {
            echo '<option value="'.$r['id'].'">'.$r['contract_number'].' ---- '.$admin->result($admin->sql("select name from person where id = '$r[person_id]' ") , 0).'</option>';
        }
        ?>
        </select>
     <span style="color:red;"> جستجو : </span><input id="textbox" type="text" class="input-t" /></td>
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
