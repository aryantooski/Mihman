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
$admin->LOG('گزارش فیش حقوقی' , 'مشاهده تنظیمات');
?>
<div class="add-in">
<b class="bx">گزارش فیش حقوقی : </b>
<div class="co">
<form method="post" action="report.php?do=<?PHP echo $_GET['do'] ?>" enctype="multipart/form-data">
<input type="hidden" name="post" />
<table cellpadding="2">
  <tr>
    <td>پرسنل : </td>
    <td>
    <?PHP
	echo $admin->select('personel' , 'personel_id' , 'name' , 0 , true , 'همه پرسنل');
	?>
    </td>
  </tr>
  <tr>
    <td>انتخاب ماه : </td>
    <td>
    <?PHP
	$m = array(1=>'فروردین' , 2=>'اردیبهشت' , 3=>'خرداد' , 4=>'تیر' , 5=>'مرداد' , 6=>'شهریور' , 7=>'مهر' , 8=>'آبان' , 9=>'آذر' , 10=>'دی' , 11=>'بهمن' , 12=>'اسفند');
	
	list($date , $time) = explode(" " , $admin->true_time());
	
	list($year , $month , $day) = explode("-" , $date);
	
	$month += 0;
	
	?>
	<?PHP echo $admin->full_select(1392 , 1395 , 'year' , $year) ?>
	<?PHP echo $admin->full_select(1 , 12 , 'month' , $month , $m) ?>
    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
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
