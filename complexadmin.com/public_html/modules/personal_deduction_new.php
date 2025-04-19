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
if (isset($_POST['post']) and $_POST['post'] == 'step2')
{
	$year = $_POST['year'];
	$month = $_POST['month'];
	$deduction_group_id = $_POST['deduction_group_id'];
	unset($_POST['post'] , $_POST['deduction_group_id'] , $_POST['year'] , $_POST['month']);
	
	foreach ($_POST as $k => $v)
	{
		if (!empty($v))
		{
			$admin->sql("insert into deduction (suid , personel_id , deduction_group_id , year , month , amount , type) values('".SUID."' , '$k' , '$deduction_group_id' , '$year' , '$month' , '".str_replace("," , "" , $v)."' , '$_POST[type]')");
		}
	}
	
	if  (true)
	{
		$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
	}
	else
	{
		$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
	}
	
	$admin->LOG('ثبت کسر/اضافه  جدید' , $msg);
}
?>
<div class="add-in">
<b class="bx">ثبت کسر/اضافه جدید : </b>
<div class="co">
<?PHP
if (isset($_POST['post']) and $_POST['post'] == 'step1')
{
?>
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" value="step2" />
<table cellpadding="5">
  <tr>
    <td>گروه : </td>
    <td><input type="hidden" name="deduction_group_id" class="input-t" value="<?PHP echo $_POST['deduction_group_id'] ?>" /> <?PHP echo $admin->result($admin->sql("select name from deduction_group where id = '$_POST[deduction_group_id]'") , 0); ?></td>
  </tr>
  <tr>
    <td>نوع : </td>
    <td><input type="hidden" name="type" class="input-t" value="<?PHP echo $_POST['type'] ?>" /></td>
  </tr>
  <tr>
    <td>انتخاب ماه : </td>
    <td><input type="hidden" name="year" class="input-t" value="<?PHP echo $_POST['year'] ?>" /><input type="hidden" name="month" class="input-t" value="<?PHP echo $_POST['month'] ?>" /><?PHP echo $m[$_POST['month']].' '.$_POST['year'] ?></tr>
</table>
<br />
<table cellpadding="5">
<tr>
<?PHP
$s = $admin->sql("select * from personel order by id asc");
$i = 1;
while ($r = $admin->row($s))
{
	echo '<td width="170">'.$r['name'].' : </td><td width="250"><input type="text" name="'.$r['id'].'" class="input-t" '.NUMERAL.' dir=ltr /> تومان</td>';
	
	if ($i % 2 == 0)
	{
		echo '</tr><tr>';
	}
	
	$i++;
}
?>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" value="ثبت" class="input-b" /></td>
  </tr>
</table>
</form>
<?PHP
}
else
{
?>
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" value="step1" />
<table cellpadding="2">
  <tr>
    <td>گروه : </td>
    <td>
    <?PHP
    echo $admin->select('deduction_group' , 'deduction_group_id' , 'name');
	?>
    </td>
  </tr>
  <tr>
    <td>نوع : </td>
    <td>
    <select name="type" class="input-s">
    <option value="-">کسر</option>
    <option value="+">اضافه</option>
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
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" value="مرحله بعد" class="input-b" /></td>
  </tr>
</table>
</form>
<?PHP
}
?>
</div>
</div>
</div>
    </td>
  </tr>
</table>
