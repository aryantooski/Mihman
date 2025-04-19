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
	$days = ',';
	if (isset($_POST['days_of_month']) and count($_POST['days_of_month']))
	{
		foreach ($_POST['days_of_month'] as $k => $v)
			$days .= $v.',';
	}
	else
		$days = '';
	
	
	$program_days = explode(PHP_EOL , $_POST['program']);
	
	
	foreach ($program_days as $k => $v)
	{
		if (!empty($v))
		{
			list($day , $start_time , $end_time) = explode(' ' , $v);
			list($start_hour , $start_min) = explode(':' , $start_time);
			list($end_hour , $end_min) = explode(':' , $end_time);
			
			$sql = $admin->sql("insert into savior_program (suid , personel_id , year , month , days_of_month , start_minute , start_hour , end_minute , end_hour , step , amount , description) values('".SUID."' , '$_POST[personel_id]' , '$_POST[year]' , '$_POST[month]' , '$day' , '$start_min' , '$start_hour' , '$end_min' , '$end_hour' , '$_POST[step]' , '".str_replace("," , "" , $_POST['amount'])."' , '$_POST[description]')");
			
		}
	}
	
	
	
	if  ($sql)
	{
		$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
	}
	else
	{
		$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
	}
	
	$admin->LOG('برنامه نجات جدید' , $msg);
}

?>
<div class="add-in">
<b class="bx">برنامه نجات جدید : </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" />
<table cellpadding="2">
  <tr>
    <td>ناجی : </td>
    <td>
    <select name="personel_id" class="input-s">
    <?PHP
	$sql = $admin->sql("select * from personel where type like '%ناجی%'");
	while ($row = $admin->row($sql))
	{
		echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
	}
	?>
    </select>
    </td>
  </tr>
  <tr>
    <td>انتخاب ماه : </td>
    <td>
    <?PHP
	list($date , $time) = explode(" " , $admin->true_time());
	
	list($year , $month , $day) = explode("-" , $date);
	
	$month += 0;
	
	?>
	<?PHP echo $admin->full_select(1392 , 1395 , 'year' , $year) ?>
	<?PHP echo $admin->full_select(1 , 12 , 'month' , $month , $m) ?>
    </td>
  </tr>
  <tr>
    <td>برنامه نجات : </td>
    <td>
        <table border="0" cellpadding="0">
          <tr>
            <td width="250"><textarea name="program" class="input-s" style="direction:ltr; width:200px; height:300px;"></textarea></td>
            <td valign="top" style="line-height:22px;">
            
            <b>برنامه نجات را بدین صورت وارد کنید : </b><br /><br />
            1- ابتدا روز ماه را وارد کنید<br />
            2- سپس یک فاصله بگزارید<br />
            3- سپس ساعت شروع را بدین صورت وارد کنید 12:25<br />
            4- سپس یک فاصله بگزارید<br />
            5- سپس ساعت پایان را همانند ساعت شروع وارد کنید<br />
            6- برای اضافه کردن برنامه بعدی به خط بعد بروید<br />
            
            </td>
          </tr>
        </table>
    </td>
  </tr>
  <tr>
    <td>درجه ناجی : </td>
    <td>
    <select name="step" class="input-s">
	<option value="1">درجه یک</option>
	<option value="2">درجه دو</option>
	<option value="3">درجه سه</option>
    </select>
    </td>
  </tr>
  <tr>
    <td>دستمزد بابت هر ساعت : </td>
    <td><input type="text" name="amount" dir="ltr" class="input-t" <?PHP echo NUMERAL; ?> /> تومان</td>
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
