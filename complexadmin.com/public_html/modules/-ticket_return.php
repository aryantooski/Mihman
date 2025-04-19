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
	$_POST['code'] = $admin->barcode_reader_fixer($_POST['code']);
	
	$now = substr($admin->true_time() , 0 , 10);
	if (@$admin->result($admin->sql("select count(*) from ticket where (code = '$_POST[code]' and (time_start <= '$now' and time_finish >= '$now') and status = 'فعال') ") , 0) == 1)
	{
		$sql = $admin->sql("update ticket set status = 'مرجوع' , usetime = '".$admin->true_time()."' , description = '".$admin->result($admin->sql("select description from ticket where code = '$_POST[code]' limit 1") , 0)." --- $_POST[description]' where code = '$_POST[code]' limit 1");
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
		$msg = 'بلیط قابل ارجاع نیست'; echo $admin->msg($msg , 'warning');
	}
	
	$admin->LOG('برگشت بلیط' , $msg);
}
?>
<div class="add-in">
<b class="bx">برگشت بلیط : </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" />
<script language="javascript" src="inc/jquery.min.js"></script>
<script language="javascript">
function ticket_return()
{
	$.ajax({
		data:"code="+$("#code").val(),
		type:"POST",
		url:"core.php?act=validate_return",
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
    <td width="400"><input type="text" name="code" id="code" class="input-t" size="20" style="text-align:center" /> <input type="button" value="بررسی" onclick="ticket_return()" class="input-b" /></td>
    <td valign="top" style="line-height:25px;" rowspan="3">
    1- عادی روزانه<br />
    2- عادی ادارات<br />
    3- ویژه روزانه<br />
    4- ویژه ادارات
    </td>
  </tr>
  <tr>
    <td>زمان مرجوع : </td>
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
