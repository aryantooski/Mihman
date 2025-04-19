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
<b class="bx">مدیریت ساعت : </b>
<div class="co">
<?PHP
$tblname = 'personel_time';
$pagCo = 50;
$url = 'personal_managetime';
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
			
			$admin->LOG('مدیریت ساعت - حذف' , $msg);
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
					<td>انتخاب پرسنل : </td>
					<td>'.$admin->select('personel', 'personel_id' , 'name' , $editrow['personel_id'] , true).'</td>
				  </tr>
				  <tr>
					<td>عملیات : </td>
					<td>
					';
					$s[$editrow['act']] = 'selected=selected';
					echo '
					<select name="act" class="input-s">
					<option '.$s['ورود'].' value="ورود">ورود</option>
					<option '.$s['خروج'].' value="خروج">خروج</option>
					</select>
					</td>
				  </tr>
				  <tr>
					<td>زمان : </td>
					<td dir="ltr">
					';
					list($date , $time) = explode(" " , $editrow['time']);
					
					list($year , $month , $day) = explode("-" , $date);
					list($hour , $min , $sec) = explode(":" , $time);
					
					$month += 0;
					$day += 0;
					$hour += 0;
					$min += 0;
					$sec += 0;
					
					
					echo $admin->full_select(1380 , 1400 , 'year' , $year).
						 $admin->full_select(1 , 12 , 'month' , $month).
						 $admin->full_select(1 , 31 , 'day' , $day).
						 $admin->full_select(1 , 23 , 'hour' , $hour).
						 $admin->full_select(0 , 59 , 'min' , $min).'
					</td>
				  </tr>
				  <tr>
					<td>توضیحات : </td>
					<td><textarea name="description" class="input-s" style="width:300px;">'.$editrow['description'].'</textarea></td>
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
				$time = $_POST['year'].'-'.$_POST['month'].'-'.$_POST['day'].' '.$_POST['hour'].':'.$_POST['min'].':00';
				
				$updsql = $admin->sql("update $tblname set personel_id = '$_POST[personel_id]' , act = '$_POST[act]' , time = '$time' , description = '$_POST[description]' where id = '$_GET[id]' limit 1");
				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				
				$admin->LOG('مدیریت ساعت - ویرایش' , $msg);
			}
		break;
	}
}

?>
<center>
<form method="post" action="">
جستجو بر اساس کد ساعت : <input type="text" name="search" class="input-t" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
</form>
</center>
<br /><br />
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center">#</td>
    <td align="center">پرسنل</td>
    <td align="center">عملیان</td>
    <td align="center">زمان</td>
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


if ($_POST['search'])
{
	$sql = $admin->sql("select * from $tblname where (id = '$_POST[search]')");
}
else
{
	$sql = $admin->sql("select * from $tblname order by time desc limit $start,$pagCo");
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
	<td align="center">'.@$admin->result($admin->sql("select name from personel where id = $row[personel_id] ") , 0).'</td>
	<td align="center">'.$row['act'].'</td>
	<td align="center" dir="ltr">'.$row['time'].'</td>
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="center">'.$admin->description($row , $tblname).'&nbsp;&nbsp;
	<a href="index.php?do='.$url.'&op=edit&id='.$row['id'].'&start='.$start.'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;
	<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do='.$url.'&op=remove&id='.$row['id'].'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
	</td>
  </tr>
	';
	
	$x++;
}
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
