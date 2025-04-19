<?PHP
require_once("header.php");
require_once("menu.php");
?>
    </td>
  </tr>
  <tr>
    <td valign="top">
<div class="text-cont">

<div class="add-in">
<b class="bx">مدیریت قراردادها : </b>
<div class="co">
<script language="javascript">
function disc()
{
	var amount = document.getElementById('amount').value;
	amount = amount.replace(',' , '');
	amount = amount.replace(',' , '');
	amount = amount.replace(',' , '');
	var discount = document.getElementById('discount').value;
	
	if (amount > 0 && discount > 0)
	{
		d = amount / 100;
		d = d * discount;
	}
	else
	{
		d = 0;
	}
	
	a = amount - d;
	
	document.getElementById("mostpay").innerHTML = 'مبلغ قابل پرداخت : ' + a + ' تومان';
	
	return false;
}
</script>
<?PHP
$tblname = 'contract';
$pagCo = 20;
$url = 'contract_manage';
if (isset($_GET['op']))
{
	switch ($_GET['op'])
	{
		case 'remove' :
			$remsql = $admin->sql("delete from $tblname where id = '$_GET[id]' limit 1");
			$admin->sql("delete from $tblname where topid = '$_GET[id]'");
			if ($remsql)
			{
				$msg = "حذف انجام شد"; echo $admin->msg($msg , "true");
			}
			else
			{
				$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
			}
			
			$admin->LOG('مدیریت قراردادها - حذف' , $msg);
		break;
		
		case 'edit' :
			if (!isset($_POST['post']))
			{
				$editsql = $admin->sql("select * from $tblname where id = '$_GET[id]' limit 1");
				$editrow = $admin->row($editsql);
				
				echo '
				<form method="post" action="" enctype="multipart/form-data">
				<input type="hidden" name="post" />
				<table cellpadding="2">
				  <tr>
					<td>شماره قراداد : </td>
					<td><input type="text" name="contract_number" class="input-t" value="'.$editrow['contract_number'].'" /></td>
				  </tr>
				  <tr>
					<td>تاریخ شروع : </td>
					<td>'.$admin->date_select('start' , false , '' , true , str_replace('-' , '/' , $editrow['date_start'])).'</td>
				  </tr>
				  <tr>
					<td>تاریخ پایان : </td>
					<td>'.$admin->date_select('finish' , false , '' , true , str_replace('-' , '/' , $editrow['date_start'])).'</td>
				  </tr>
				  <tr>
					<td>طرف قرارداد : </td>
					<td>'.$admin->select('person' , 'person_id' , 'name' , $editrow['person_id']).'</td>
				  </tr>
				  <tr>
					<td>شماره تماس : </td>
					<td><input type="text" name="tel" class="input-t" dir="ltr" value="'.$editrow['tel'].'" /></td>
				  </tr>
				  <tr>
					<td>مبلغ کل قرارداد : </td>
					<td><input type="text" name="amount" id="amount" class="input-t" dir="ltr" '.NUMERAL.' value="'.number_format($editrow['amount']).'" /> تومان</td>
				  </tr>
				  <tr>
					<td>تخفیف : </td>
					<td><input type="text" name="discount" id="discount" class="input-t" dir="ltr" value="'.$editrow['discount'].'" /> درصد &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="محاسبه" onclick="return disc()" style="font:8pt tahoma;" />&nbsp;&nbsp;<span id="mostpay" style="color:green;">مبلغ قابل پرداخت : '.$editrow['remained'].' تومان</span></td>
				  </tr>
				  <tr>
					<td>نحوه پرداخت : </td>
					<td><textarea name="paying_type" class="input-s" style="width:300px;">'.$editrow['paying_type'].'</textarea></td>
				  </tr>
				  <tr>
					<td>توضیحات : </td>
					<td><textarea name="description" class="input-s" style="width:300px;">'.$editrow['description'].'</textarea></td>
				  </tr>
				';
				switch ($editrow['type'])
				{
					case 'فروش بلیط' :
						echo '
						<tr>
							<td>تعداد بلیط : </td>
							<td><input type="text" name="f1" class="input-t" dir="ltr" size="6" value="'.$editrow['f1'].'" /></td>
						</tr>
						<tr>
							<td>شماره سریال از : </td>
							<td><input type="text" name="f2" class="input-t" dir="ltr" size="6" value="'.$editrow['f2'].'" /> تا <input type="text" name="f3" class="input-t" dir="ltr" size="6" value="'.$editrow['f3'].'" /></td>
						</tr>
						';
					break;
					
					case 'آموزشی' :
						echo '
						<tr>
							<td>نوع کلاس : </td>
							<td><input type="text" name="f1" class="input-t" value="'.$editrow['f1'].'" /></td>
						</tr>
						<tr>
							<td>سطح کلاس : </td>
							<td><input type="text" name="f2" class="input-t" value="'.$editrow['f2'].'" /></td>
						</tr>
						<tr>
							<td>تعداد هنرجویان : </td>
							<td><input type="text" name="f3" class="input-t" size="6" dir="ltr" value="'.$editrow['f3'].'" /></td>
						</tr>
						';
					break;
					
					case 'اختصاصی' :
						echo '
						<tr>
							<td>تعداد سانس : </td>
							<td><input type="text" name="f1" class="input-t" size="6" dir="ltr" value="'.$editrow['f1'].'" /></td>
						</tr>
						';
					break;
					
					case 'فروش کارت' :
						echo '
						<tr>
							<td>نوع کارت : </td>
							<td>
							';
							$s[$editrow['f1']] = 'selected=selected';
							
							echo '
							<select name="f1" class="input-s">
								<option '.$s['شش جلسه ای'].' value="شش جلسه ای">شش جلسه ای</option>
								<option '.$s['دوازده جلسه ای'].' value="دوازده جلسه ای">دوازده جلسه ای</option>
							</select>
							</td>
						</tr>
						<tr>
							<td>تعداد : </td>
							<td><input type="text" name="f2" class="input-t" dir="ltr"  size="6" value="'.$editrow['f2'].'" /></td>
						</tr>
						<tr>
							<td>شماره سریال از : </td>
							<td><input type="text" name="f3" class="input-t" dir="ltr" size="6" value="'.$editrow['f3'].'" /> تا <input type="text" name="f4" class="input-t" dir="ltr" size="6" value="'.$editrow['f4'].'" /></td>
						</tr>
						';
					break;
					
				}
				
				echo '
				  <tr>
					<td>&nbsp;</td>
					<td><input type="submit" value="تایید" class="input-b" /></td>
				  </tr>
				</table>
				
				</form>
				<div style="border:1px solid #e1e1e1; margin-top:20px; margin-bottom:20px;"></div>
				';
			}
			else
			{
				$date_start = $_POST['start_year'].'-'.$_POST['start_month'].'-'.$_POST['start_day'];
				$date_finish = $_POST['finish_year'].'-'.$_POST['finish_month'].'-'.$_POST['finish_day'];
				
				$remained = str_replace("," , "" , $_POST['amount']) - ((str_replace("," , "" , $_POST['amount']) / 100) * $_POST['discount']);
				
				$updsql = $admin->sql("update $tblname set contract_number = '$_POST[contract_number]' , date_start = '$date_start' , date_finish = '$date_finish' , person_id = '$_POST[person_id]' , tel = '$_POST[tel]', amount = '".str_replace(',' , '' , $_POST['amount'])."' , discount = '$_POST[discount]' , remained = '$remained' , paying_type = '$_POST[paying_type]' , description = '$_POST[description]' , f1 = '$_POST[f1]' , f2 = '$_POST[f2]' , f3 = '$_POST[f3]' , f4 = '$_POST[f4]' where id = '$_GET[id]' limit 1");
				
				
				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				
				$admin->LOG('مدیریت قراردادها - ویرایش' , $msg);
			}
		break;
	}
}

?>
<center>
<form method="post" action="">
جستجو بر اساس شماره قرارداد : <input type="text" name="search" class="input-t" size="45" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
</form>
</center>
<br /><br />
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center">#</td>
    <td align="center">نوع قرارداد</td>
    <td align="center">شماره قرارداد</td>
    <td align="center">تاریخ شروع</td>
    <td align="center">تاریخ پایان</td>
    <td align="center">طرف حساب</td>
    <td align="center">مانده حساب</td>
    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
    <td width="80" align="center">ابزار</td>
  </tr>
<?PHP

if (isset($_GET['start']))
{
	$start = $_GET['start'];
}
else
{
	$start = 0;
}


if (isset($_POST['search']) and !empty($_POST['search']))
{
	$sql = $admin->sql("select * from $tblname where(contract_number = '$_POST[search]')");
}
else
{
	$sql = $admin->sql("select * from $tblname order by id asc limit $start,$pagCo");
}


$exec = '';
$x = 1;
while ($row = $admin->row($sql))
{
	
	if ($x % 2 == 1)
	{
		$color = '#eeeeee';
	}
	else
	{
		$color = '#e1e1e1';
	}
	
	echo '
  <tr height="25" bgcolor="'.$color.'" class="tblrow">
    <td bgcolor="#d1d1d1" align="center">'.$row['id'].'</td>
	<td align="center">'.$row['type'].'</td>
	<td align="center">'.$row['contract_number'].'</td>
	<td align="center">'.$row['date_start'].'</td>
	<td align="center">'.$row['date_finish'].'</td>
	<td align="center">'.$admin->result($admin->sql("select name from person where id = '$row[person_id]'") , 0).'</td>
	<td align="center">'.@number_format($row['remained']).' تومان</td>
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="center">
	<a href="index.php?do='.$url.'&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do='.$url.'&op=remove&id='.$row['id'].'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
	</td>
  </tr>
	';
	
	$x++;
}

if (mysqli_num_rows($sql) == 0)
	echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=9>متاسفانه نتیجه ای یافت نشد</td></tr>';


?>
</table>
<br />
<div class="pagination">
<?PHP
$current = $start;
if (!isset($_POST['search']))
{
	$sql = $admin->sql("select * from $tblname");
	$count_rows = mysqli_num_rows($sql);
	$ret = '';
	if ($count_rows >= $pagCo)
	{
		$nums = $count_rows / $pagCo;
		$ceil = ceil($nums);
		
		$start = 0;
		for ($x = 1 ; $x <= $ceil; $x++)
		{
			if ($current == $start)
				$theme = 'style="color:red; font-weight:bold;"';
			else
				$theme = '';
			
			$ret .= '<a href="index.php?do='.$url.'&start='.$start.'" '.$theme.'>'.$x.'</a>';
			$start = $x * $pagCo;
		}
		
		echo '<br><br><div style="float:right"> صفحات :  &nbsp;&nbsp;&nbsp; </div>'.$ret;
	}
}
?>
<div class="cls"></div>
</div>


</div>
</div>
</div>
    </td>
  </tr>
</table>
