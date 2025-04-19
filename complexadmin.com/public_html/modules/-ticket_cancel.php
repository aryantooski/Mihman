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
	$now = substr($admin->true_time() , 0 , 10);
	
	$_POST['code'] = $admin->barcode_reader_fixer($_POST['code']);
	
	if (empty($_POST['type_count']))
		$_POST['type_count'] = 1;
	
	$s = $admin->sql("select * from ticket where ((code = '$_POST[code]' and (time_start <= '$now' and time_finish >= '$now') and status = 'فعال') and (sessions + $_POST[type_count] <= type)) ");
	
	if (@mysqli_num_rows($s) == 1)
	{
		$r = $admin->row($s);
		
		if ($r['type'] == 1)
		{
			$sql = $admin->sql("update ticket set status = 'ابطال' , sessions = 1 , usetime = '".$admin->true_time()."' , description = '".$admin->result($admin->sql("select description from ticket where code = '$_POST[code]' limit 1") , 0)." $_POST[description]' where code = '$_POST[code]' limit 1");
		}
		else
		{
			if ($r['sessions'] + $_POST['type_count'] == $r['type'])
			{
				$status = 'ابطال';
			}
			else
			{
				$status = 'فعال';
			}
			
			$sql = $admin->sql("update ticket set sessions = sessions + $_POST[type_count] , status = '$status' , usetime = '".$admin->true_time()."' , description = '".$admin->result($admin->sql("select description from ticket where code = '$_POST[code]' limit 1") , 0)." $_POST[description]' where code = '$_POST[code]' limit 1");
		}
		
		if  ($sql)
		{
			$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
		}
		else
		{
			$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
		}
	}
	else
	{
		$msg = 'بلیط قابل ابطال نیست'; echo $admin->msg($msg , 'warning');
	}
	
	$admin->LOG('ابطال - مصرف - بلیط' , $msg);
}
?>
<div class="add-in">
<b class="bx">ابطال - مصرف - بلیط : </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" />
<script language="javascript" src="inc/jquery.min.js"></script>
<script language="javascript">
function ticket_cancel()
{
	$.ajax({
		data:"code="+$("#code").val()+"&type_count="+$("#type_count").val(),
		type:"POST",
		url:"core.php?act=validate_cancel",
		success: function(data){
			alert(data);
		}
	});
	
}

window.onload = function () {
	$("#code").focus();
}

</script>
<table cellpadding="2">
  <tr>
    <td>کد بلیط : </td>
    <td width="500"><input type="text" name="code" id="code" class="input-t" size="20" style="text-align:center" /> تعداد جلسات ابطال : <input type="text" name="type_count" id="type_count" class="input-t" size="10" style="text-align:center" /> <input type="button" value="بررسی" onclick="ticket_cancel()" class="input-b" /></td>
    <td valign="top" style="line-height:25px;" rowspan="3">
    1- عادی روزانه<br />
    2- عادی ادارات<br />
    3- ویژه روزانه<br />
    4- ویژه ادارات
    </td>
  </tr>
  <tr>
    <td>زمان مصرف : </td>
    <td dir="ltr" style="font-weight:bold;"><?PHP echo $admin->true_time() ?></td>
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
