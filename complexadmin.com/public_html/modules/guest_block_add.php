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
	if ($admin->result($admin->sql("select status from guest where id = '$_GET[userid]'") , 0) != 1)
	{
		$sql = $admin->sql("insert into guest_block set suid = '".SUID."' , user_id = '$_GET[userid]' , type = '$_POST[type]' , todate_value = '".str_replace('/' , '-' , $_POST['todate_value'])."' , until_value = '$_POST[until_value]' , description = '$_POST[description]' , date = '".$admin->time('Y-m-d')."' , time = '".$admin->time('H:i:s')."' ");
		
		if  ($sql)
		{
			$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
		}
		else
		{
			$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
		}
		
		$admin->LOG('انسداد مهمان جدید' , $msg);
	}
	else
	{
		$msg = "مهمان در حال حاظر مسدود می باشد و امکان انسداد مجدد وجود ندارد"; echo $admin->msg($msg , "critical");
	}
}

?>
<script language="javascript">
function validate()
{
	if ($("input[name=type]:checked"). val() == 'todate')
	{
		if ($("input[name=todate_value]").val() == '')
		{
			alert('تاریخ درج نشده است');
			return false;
		}
	}
	else if ($("input[name=type]:checked"). val() == 'until')
	{
		if ($("input[name=until_value]").val() == '')
		{
			alert('مدت زمان روز درج نشده است');
			return false;
		}
	}
	else
	{
		return true;
	}
	
	return true;
}
</script>
<div class="add-in">
<b class="bx">انسداد مهمان : </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data" onSubmit="return validate()">
<input type="hidden" name="post" />

<script type="text/javascript" src="inc/PersianDatePicker.min.js"></script>
<link type="text/css" rel="stylesheet" href="inc/PersianDatePicker.min.css" />
<?php
$sql_quest = $admin->sql("select * from guest where id = '$_GET[userid]'");
$guest = $admin->row($sql_quest);
?>
<table cellpadding="5" style="width: 100%">
	<tr>
		<td style="width: 16%">نام : <?=$guest['name']?></td>
		<td style="width: 16%">جنسیت : <?=$guest['sex']?></td>
		<td style="width: 16%">موبایل : <?=$guest['mobile']?></td>
		<td style="width: 16%">معرف : <?=($guest[ref_id] == 0 ? 'مدیر' : $admin->sql("select name from guest where id = '$guest[ref_id]' ")->fetch_object()->name)?></td>
		<td style="width: 16%">نوع مهمان : <?=$guest['type']?></td>
		<td>تاریخ ثبت نام : <span dir=ltr><?=$guest['date']?></span></td>
	</tr>
</table>
<br><br>
<table cellpadding="5">
  <tr>
    <td>نوع انسداد : </td>
    <td>
		<table>
			<tr>
				<td><label><input type="radio" name="type" value="todate" checked> تا تاریخ</label></td>
				<td><input type="text" name="todate_value" class="input-t" placeholder="<?=$admin->time('Y/m/d')?>" dir="ltr" onclick="PersianDatePicker.Show(this, '<?=$admin->time('Y/m/d' , 0)?>');"></td>
			</tr>
			<tr>
				<td><label><input type="radio" name="type" value="until"> به مدت</label></td>
				<td><input type="text" name="until_value" class="input-t" dir="ltr"> روز</td>
			</tr>
			<tr>
				<td><label><input type="radio" name="type" value="notexpire"> تا اطلاع ثانوی</label></td>
			</tr>
		</table>
	</td>
  </tr>
  <tr>
    <td>توضیحات : </td>
    <td><input type="text" name="description" class="input-t" size="100" /></td>
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
