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
	
	$code = nl2br($_POST['code']);
	
	$exode = explode('<br />' , $code);
	
	$ticket = array();
	$i = 0;
	if (count($exode))
	{
		foreach ($exode as $k => $v)
		{
			if (!empty($v))
			{
				$ex = explode('=' , trim($v));
				if (count($ex) > 1)
				{
					$cnt = $ex[1];
				}
				else
				{
					$cnt = 1;
				}
				
				
				$ticket[$i] = array('code'=>trim($ex[0]) , 'count'=>trim($cnt));
				$i++;
			}
		}
	}
	
	if (count($ticket) == 0)
	{
		$msg = 'ورودی خالی است'; echo $admin->msg($msg , 'warning');
	}
	else
	{
		$echo = '';
		
		foreach ($ticket as $t)
		{
			if (!empty($t['code']))
			{
				$s = $admin->sql("select * from ticket where ((code = '$t[code]' and (time_start <= '$now' and time_finish >= '$now') and status = 'فعال') and (sessions + $t[count] <= type)) ");
				
				if (mysqli_num_rows($s) == 1)
				{
					$r = $admin->row($s);
					
					if ($r['type'] == 1)
					{
						$sql = $admin->sql("update ticket set status = 'ابطال' , sessions = 1 , usetime = '".$admin->true_time()."' , description = '".$admin->result($admin->sql("select description from ticket where code = '$t[code]' limit 1") , 0)." $_POST[description]' where code = '$t[code]' limit 1");
					}
					else
					{
						if ($r['sessions'] + $t['count'] == $r['type'])
						{
							$status = 'ابطال';
						}
						else
						{
							$status = 'فعال';
						}
						
						$sql = $admin->sql("update ticket set sessions = sessions + $t[count] , status = '$status' , usetime = '".$admin->true_time()."' , description = '".$admin->result($admin->sql("select description from ticket where code = '$t[code]' limit 1") , 0)." $_POST[description]' where code = '$t[code]' limit 1");
					}
					
					if  (!$sql)
					{
						$msg .= "خطای سیستمی برای بلیط شماره ".$t['code'].PHP_EOL; echo $admin->msg($msg , "critical");
					}
				}
				else
				{
					$msg .= 'بلیط شماره '.$t['code'].' قابل ابطال نیست'.PHP_EOL; echo $admin->msg($msg , 'warning');
				}
			}
		}
	}
	
	$admin->LOG('ابطال - مصرف - بلیط (گروهی)' , $msg);
}
?>
<div class="add-in">
<b class="bx">ابطال - مصرف - بلیط (گروهی): </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" />
<script language="javascript" src="inc/jquery.min.js"></script>
<script language="javascript">
function ticket_cancel()
{
	$.ajax({
		data:"code="+$("#code").val(),
		type:"POST",
		url:"core.php?act=validate_cancel_group",
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
    <td width="100">لیست بلیط : </td>
    <td width="350"><textarea name="code" id="code" class="input-s" style="width:300px; height:400px; direction:ltr"></textarea></td>
    <td valign="top" style="line-height:25px;">
    <b>توضیحات : </b><br />
    1- در هر خط یک بلیط بنویسید.<br />
    2- برای ابطال بیش از یک جلسه در مقابل کد بلیط از علامت مساوی (=) استفاده کنید.<br />
    3- مثال : <span dir="ltr">123456=2</span> بدین معنا که بلیط شماره 123456 را به تعداد 2 جلسه باطل کن.<br />
    4- در صورت ننوشتن تعداد جلسه ، به صورت خودکار 1 جلسه در نظر گرفته می شود.<br /><br /><br />
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
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="button" value="بررسی" onclick="ticket_cancel()" class="input-b" /> <input type="submit" value="تایید" class="input-b" /></td>
  </tr>
</table>
</form>
</div>
</div>
</div>
    </td>
  </tr>
</table>
