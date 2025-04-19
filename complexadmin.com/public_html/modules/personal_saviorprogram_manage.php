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
<b class="bx">مدیریت برنامه نجات : </b>
<div class="co">
<?PHP
$tblname = 'savior_program';
$pagCo = 20;
$url = 'personal_saviorprogram_manage';
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
			
			$admin->LOG('مدیریت برنامه نجات - حذف' , $msg);
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
					<td>ناجی : </td>
					<td>
					<select name="personel_id" class="input-s">';
					$s[$editrow['personel_id']] = 'selected=selected';
					
					$sql = $admin->sql("select * from personel where type like '%ناجی%'");
					while ($row = $admin->row($sql))
						echo '<option value="'.$row['id'].'" '.$s[$row['id']].'>'.$row['name'].'</option>';
					
					echo '
					</select>
					</td>
				  </tr>
				  <tr>
					<td>انتخاب ماه : </td>
					<td>'.$admin->full_select(1392 , 1395 , 'year' , $editrow['year']).$admin->full_select(1 , 12 , 'month' , $editrow['month'] , $m).'</td>
				  </tr>
				  <tr>
					<td>روز های ماه : </td>
					<td>
					<select name="days_of_month" class="input-s">
					';
					
					$x = array();
					
					$e[$editrow['days_of_month']] = 'selected=selected';
					
					for ($v = 1 ; $v <= 31 ; $v++)
						echo '<option value="'.$v.'" '.$e[$v].'>'.$v.'</option>';
					
					echo '
					</select>
					</td>
				  </tr>
				  <tr>
					<td>ساعت شروع : </td>
					<td>'.$admin->select_number(0 , 59 , 'start_minute' , $editrow['start_minute']) . ' : ' . $admin->select_number(0 , 23 , 'start_hour' , $editrow['start_hour']).'</td>
				  </tr>
				  <tr>
					<td>ساعت پایان : </td>
					<td>'.$admin->select_number(0 , 59 , 'end_minute' , $editrow['end_minute']) . ' : ' . $admin->select_number(0 , 23 , 'end_hour' , $editrow['end_hour']).'</td>
				  </tr>
				  <tr>
					<td>درجه ناجی : </td>
					<td>';
					$sx[$editrow['step']] = 'selected=selected';
					echo '
					<select name="step" class="input-s">
					<option '.$sx[1].' value="1">درجه یک</option>
					<option '.$sx[2].' value="2">درجه دو</option>
					<option '.$sx[3].' value="3">درجه سه</option>
					</select>
					</td>
				  </tr>
				  <tr>
					<td>دستمزد بابت هر ساعت : </td>
					<td><input type="text" name="amount" dir="ltr" class="input-t" '.NUMERAL.' value="'.$editrow['amount'].'" /> تومان</td>
				  </tr>
				  <tr>
					<td>توضیحات : </td>
					<td><textarea name="description" class="input-s" style="width:300px;">'.$editrow['description'].'</textarea></td>
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
				<div style="border:1px solid #e1e1e1; margin-top:20px; margin-bottom:20px;"></div>
				';
			}
			else
			{
				$updsql = $admin->sql("update $tblname set personel_id = '$_POST[personel_id]' , year = '$_POST[year]' , month = '$_POST[month]' , days_of_month = '$_POST[days_of_month]' , start_minute = '$_POST[start_minute]' , start_hour  = '$_POST[start_hour]' , end_minute = '$_POST[end_minute]' , end_hour = '$_POST[end_hour]' , step = '$_POST[step]' , amount = '".str_replace("," , "" , $_POST["amount"])."' , description = '$_POST[description]' where id = '$_GET[id]' limit 1");
				
				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				
				$admin->LOG('مدیریت برنامه نجات - ویرایش' , $msg);
			}
		break;
	}
}

?>
<center>
<form method="post" action="">
جستجو بر اساس پرسنل : 
<select name="search" class="input-s">
<?PHP
$sql = $admin->sql("select * from personel where type like '%ناجی%'");
while ($row = $admin->row($sql))
{
    echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
}
?>
</select>

<input type="submit" value="جستجو" class="input-b" style="text-align:center" />
</form>
</center>
<br /><br />
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center">#</td>
    <td align="center">پرسنل</td>
    <td align="center">سال</td>
    <td align="center">ماه</td>
    <td align="center">روزهای ماه</td>
    <td align="center">دستمزد برای هر ساعت</td>
    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
    <td width="120" align="center">ابزار</td>
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
	$sql = $admin->sql("select * from $tblname where(personel_id = '$_POST[search]')");
}
else
{
	$sql = $admin->sql("select * from $tblname order by id desc limit $start,$pagCo");
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
	<td align="center">'.@$admin->result($admin->sql("select name from personel where id = '$row[personel_id]'") , 0).'</td>
	<td align="center">'.$row['year'].'</td>
	<td align="center">'.$m[$row['month']].'</td>
	<td align="center">'.$row['days_of_month'].'</td>
	';/*<td align="center">'.$row['hour_per_day'].'</td> */ echo '
	<td align="center">'.@number_format($row['amount']).' تومان</td>
	';
	if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="center">'.$admin->description($row , $tblname).'&nbsp;&nbsp;
	<a href="index.php?do='.$url.'&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;
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
