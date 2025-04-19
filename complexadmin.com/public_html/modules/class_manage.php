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
<b class="bx">مدیریت سالن ها : </b>
<div class="co">
<?PHP
$tblname = 'class';
$pagCo = 20;
$url = 'class_manage';
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
			
			$admin->LOG('مدیریت سالن ها - حذف' , $msg);
		break;
		
		case 'edit' :
			if (!isset($_POST['post']))
			{
				$editsql = $admin->sql("select * from $tblname where id = '$_GET[id]' limit 1");
				$editrow = $admin->row($editsql);
				
				echo '
				<form method="post" action="" enctype="multipart/form-data" id="frm_class_add">
				<input type="hidden" name="post" />
				<table cellpadding="2">
				  <tr>
					<td>عنوان : </td>
					<td><input type="text" name="name" class="input-t" size="40" value="'.$editrow['name'].'" /></td>
				  </tr>
				  <tr>
					<td>تعداد جلسات : </td>
					<td><input type="text" name="count" class="input-t" value="'.$editrow['count'].'" size="10" style="text-align:center;" onchange="show_date_finish()"> جلسه</td>
				  </tr>
				 <tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				  <tr>
						<td>روزهای کلاس : </td>
						<td>
							<table cellpadding="4">

								<tr style="background: #e1e1e1">
									<td>روز هفته</td>
									<td>ساعت شروع</td>
								</tr>

								<tr>
									<td><label><input type="checkbox" onchange="show_date_finish()" name="day_1_check" '.($editrow['day_1_check'] == 'on' ? 'checked=checked' : '').'> شنبه</label></td>
									<td>'.$admin->select_clock('day_1_time' , $editrow['day_1_time']).'</td>
								</tr>

								<tr>
									<td><label><input type="checkbox" onchange="show_date_finish()" name="day_2_check" '.($editrow['day_2_check'] == 'on' ? 'checked=checked' : '').'> یکشنبه</label></td>
									<td>'.$admin->select_clock('day_2_time' , $editrow['day_2_time']).'</td>
								</tr>

								<tr>
									<td><label><input type="checkbox" onchange="show_date_finish()" name="day_3_check" '.($editrow['day_3_check'] == 'on' ? 'checked=checked' : '').'> دوشنبه</label></td>
									<td>'.$admin->select_clock('day_3_time' , $editrow['day_3_time']).'</td>
								</tr>

								<tr>
									<td><label><input type="checkbox" onchange="show_date_finish()" name="day_4_check" '.($editrow['day_4_check'] == 'on' ? 'checked=checked' : '').'> سه شنبه</label></td>
									<td>'.$admin->select_clock('day_4_time' , $editrow['day_4_time']).'</td>
								</tr>

								<tr>
									<td><label><input type="checkbox" onchange="show_date_finish()" name="day_5_check" '.($editrow['day_5_check'] == 'on' ? 'checked=checked' : '').'> چهار شنبه</label></td>
									<td>'.$admin->select_clock('day_5_time' , $editrow['day_5_time']).'</td>
								</tr>

								<tr>
									<td><label><input type="checkbox" onchange="show_date_finish()" name="day_6_check" '.($editrow['day_6_check'] == 'on' ? 'checked=checked' : '').'> پنج شنبه</label></td>
									<td>'.$admin->select_clock('day_6_time' , $editrow['day_6_time']).'</td>
								</tr>

								<tr>
									<td><label><input type="checkbox" onchange="show_date_finish()" name="day_7_check" '.($editrow['day_7_check'] == 'on' ? 'checked=checked' : '').'> جمعه</label></td>
									<td>'.$admin->select_clock('day_7_time' , $editrow['day_7_time']).'</td>
								</tr>

							</table>
							
						</td>
					</tr>
				 <tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
				  <tr>
					<td>قیمت : </td>
					<td><input type="text" name="amount" class="input-t" dir="ltr" '.NUMERAL.' value="'.$editrow['amount'].'" /> تومان</td>
				  </tr>
				  <tr>
					<td>تاریخ شروع کلاس : </td>
					<td dir="ltr">
					';
					list($date , $time) = explode(" " , $editrow['date_start']);
					
					list($year , $month , $day) = explode("-" , $date);
					list($hour , $min , $sec) = explode(":" , $time);
					
					$month += 0;
					$day += 0;
					$hour += 0;
					$min += 0;
					$sec += 0;
					
					?>
					<?PHP echo $admin->full_select(1380 , 1400 , 'syear' , $year , NULL , 'onchange="show_date_finish()"') ?>
					<?PHP echo $admin->full_select(1 , 12 , 'smonth' , $month , NULL , 'onchange="show_date_finish()"') ?>
					<?PHP echo $admin->full_select(1 , 31 , 'sday' , $day , NULL , 'onchange="show_date_finish()"') ;
					echo '
					</td>
				  </tr>
					<tr>
					<td>تاریخ پایان کلاس : </td>
					<td dir="ltr">
						<span class="frm_class_date_finish"></span>
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

				$date_start = $_POST['syear'].'-'.$_POST['smonth'].'-'.$_POST['sday'];
				$date_finish = $admin->class_date_finish();
				
				$updsql = $admin->sql("update $tblname set name = '$_POST[name]' , `count` = '$_POST[count]' , amount = '".str_replace("," , "" , $_POST['amount'])."' , description = '$_POST[description]' , date_start = '$date_start' , date_finish = '$date_finish' , day_1_check = '$_POST[day_1_check]' , day_2_check = '$_POST[day_2_check]' , day_3_check = '$_POST[day_3_check]' , day_4_check = '$_POST[day_4_check]' , day_5_check = '$_POST[day_5_check]' , day_6_check = '$_POST[day_6_check]' , day_7_check = '$_POST[day_7_check]' , day_1_time = '$_POST[day_1_time]' , day_2_time = '$_POST[day_2_time]' , day_3_time = '$_POST[day_3_time]' , day_4_time = '$_POST[day_4_time]' , day_5_time = '$_POST[day_5_time]' , day_6_time = '$_POST[day_6_time]' , day_7_time = '$_POST[day_7_time]' where id = '$_GET[id]' limit 1");
				
				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				
				$admin->LOG('مدیریت کلاس ها - ویرایش' , $msg);
			}
		break;
	}
}

?>
<center>
<form method="post" action="">
جستجو بر اساس عنوان کلاس : <input type="text" name="search" class="input-t" size="45" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
</form>
</center>
<br /><br />
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center">#</td>
    <td align="center">عنوان</td>
    <td align="center">تعداد جلسات</td>
    <td align="center">روز های هفته</td>
    <td align="center">تاریخ شروع</td>
    <td align="center">تاریخ پایان</td>
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
	$sql = $admin->sql("select * from $tblname where(name like '%$_POST[search]%')");
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
	<td align="center">'.$row['name'].'</td>
	<td align="center">'.$row['count'].'</td>
	<td align="center">';

	if ($row['day_1_check'] == 'on') { echo 'شنبه '.$row['day_1_time'].'<br>';}
	if ($row['day_2_check'] == 'on') { echo 'یکشنبه '.$row['day_2_time'].'<br>';}
	if ($row['day_3_check'] == 'on') { echo 'دوشنبه '.$row['day_3_time'].'<br>';}
	if ($row['day_4_check'] == 'on') { echo 'سه شنبه '.$row['day_4_time'].'<br>';}
	if ($row['day_5_check'] == 'on') { echo 'چهارشنبه '.$row['day_5_time'].'<br>';}
	if ($row['day_6_check'] == 'on') { echo 'پنج شنبه '.$row['day_6_time'].'<br>';}
	if ($row['day_7_check'] == 'on') { echo 'جمعه '.$row['day_7_time'].'<br>';}


	echo '</td>
	<td align="center">'.$row['date_start'].'</td>
	<td align="center">'.$row['date_finish'].'</td>
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
	echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=10>متاسفانه نتیجه ای یافت نشد</td></tr>';


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
