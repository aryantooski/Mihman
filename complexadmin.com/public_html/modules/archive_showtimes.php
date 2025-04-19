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
<b class="bx">مدیریت سانس ها - آرشیو : </b>
<div class="co">
<?PHP
$tblname = 'showtime';
$pagCo = 20;
$url = 'archive_showtimes';
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
			$admin->LOG('مدیریت سانس ها - حذف سانس' , $msg);
		break;
		
		case 'archive' :
			$remsql = $admin->sql("update $tblname set archive = 0 where id = '$_GET[id]' limit 1");
			
			if ($remsql)
			{
				$admin->sql("update ticket set archive = 0 where showtime_id = '$_GET[id]'");

				$msg = "بازگردانی از آرشیو انجام شد"; echo $admin->msg($msg , "true");
			}
			else
			{
				$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
			}
			$admin->LOG('مدیریت سانس ها - بازگردانی از آرشیو سانس' , $msg);
		break;
		
		case 'edit' :
			if (!isset($_POST['post']))
			{
				$editsql = $admin->sql("select * from $tblname where id = '$_GET[id]' limit 1");
				$editrow = $admin->row($editsql);
				

				$active = $admin->result($admin->sql("select count(*) from ticket where (status = 'فعال' and showtime_id = '$editrow[id]') ") , 0);

				echo '
				<fieldset class="showtime_view">
					<legend>'.$editrow['name'].'</legend>

					<table cellspacing="0" cellpadding="4" border="1" bordercolor="#FFFFFF" style="color:#069" width="100%">
						<tr>
							<td width="70" bgcolor="#88b3c9" style="color:#FFFFFF">ظرفیت : </td>
							<td width="80" align="center" bgcolor="#e2f5ff">'.$editrow['capacity'].' نفر</td>
							<td width="110" bgcolor="#88b3c9" style="color:#FFFFFF">ظرفیت باقی مانده : </td>
							<td width="70" align="center" bgcolor="#e2f5ff">'.($editrow['capacity'] - $active).' نفر</td>
							<td width="70" bgcolor="#88b3c9" style="color:#FFFFFF">کل بلیط : </td>
							<td width="70" align="center" bgcolor="#e2f5ff">'.$admin->result($admin->sql("select count(*) from ticket where showtime_id = '$editrow[id]' ") , 0).'</td>
							<td width="70" bgcolor="#88b3c9" style="color:#FFFFFF">بلیط فعال : </td>
							<td width="70" align="center" bgcolor="#e2f5ff">'.$active.'</td>

							<td width="70" bgcolor="#88b3c9" style="color:#FFFFFF">بلیط مرجوع : </td>
							<td width="70" align="center" bgcolor="#e2f5ff">'.$admin->result($admin->sql("select count(*) from ticket where (status = 'مرجوع' and showtime_id = '$editrow[id]') ") , 0).'</td>
							<td width="70" bgcolor="#88b3c9" style="color:#FFFFFF">بلیط ابطالی : </td>
							<td width="70" align="center" bgcolor="#e2f5ff">'.$admin->result($admin->sql("select count(*) from ticket where (status = 'ابطال' and showtime_id = '$editrow[id]') ") , 0).'</td>
							<td width="90" bgcolor="#88b3c9" style="color:#FFFFFF">بلیط تاریخ گذشته : </td>
							<td align="center" bgcolor="#e2f5ff" dir=ltr>';
							
							if ($admin->jdate_to_stamp($editrow['end_date'].' '.$editrow['end_hour'].':'.$editrow['end_minute'].':00') < time()) // showtime expired
							{
								echo $admin->result($admin->sql("select count(*) from ticket where (tag_id = 0 and showtime_id = '$editrow[id]'  ) ") , 0);
							}
							else
							{
								echo '0';
							}

							echo '</td>
						</tr>
					</table>

				</fieldset>

				';

				
				echo '
				<script type="text/javascript" src="inc/PersianDatePicker.min.js"></script>
				<link type="text/css" rel="stylesheet" href="inc/PersianDatePicker.min.css" />

				<form method="post" action="" enctype="multipart/form-data">
				<input type="hidden" name="post" />
				
				<table cellpadding="2">
				  <tr>
					<td>ورود مجاز : </td>
					<td>
					';
					
					echo '
					
    <label><input type="checkbox" name="type1" '.(stripos($editrow['type'], 'مهمان آقا') !== false ? 'checked' : '').' value="مهمان آقا">مهمان آقا</label>
    <label><input type="checkbox" name="type2" '.(stripos($editrow['type'], 'مهمان خانم') !== false ? 'checked' : '').' value="مهمان خانم">مهمان خانم</label>
    <label><input type="checkbox" name="type3" '.(stripos($editrow['type'], 'پرسنل آقا') !== false ? 'checked' : '').' value="پرسنل آقا">پرسنل آقا</label>
    <label><input type="checkbox" name="type4" '.(stripos($editrow['type'], 'پرسنل خانم') !== false ? 'checked' : '').' value="پرسنل خانم">پرسنل خانم</label>

					</td>
				  </tr>
				  <tr>
					<td>عنوان : </td>
					<td><input type="text" name="name" class="input-t" size="40" value="'.$editrow['name'].'" /></td>
				  </tr>

				  <tr>
				    <td>ورودی : </td>
				    <td><input type="text" name="price" class="input-t" dir="ltr" value="'.$editrow['price'].'" required onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )"> تومان</td>
				  </tr>
				  <tr>
				    <td>ظرفیت : </td>
				    <td><input type="text" name="capacity" class="input-t" dir="ltr" value="'.$editrow['capacity'].'" required onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )"> نفر</td>
				  </tr>

				  <tr>
					<td>زمان شروع : </td>
					<td>
					'.$admin->select_number(0 , 59 , 'start_minute' , $editrow['start_minute']) . ' : ' . $admin->select_number(0 , 23 , 'start_hour' , $editrow['start_hour']).'
					<input type="text" name="start_date" id="start_date" class="input-t" value="'.$editrow['start_date'].'" dir="ltr" >
					</td>
				  </tr>
				  <tr>
					<td>زمان پایان : </td>
					<td>
					'.$admin->select_number(0 , 59 , 'end_minute' , $editrow['end_minute']) . ' : ' . $admin->select_number(0 , 23 , 'end_hour' , $editrow['end_hour']).'
					<input type="text" name="end_date" id="end_date" class="input-t" value="'.$editrow['end_date'].'" dir="ltr">
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
				?>
<link rel="stylesheet" href="jalalijscalendar/skins/calendar-blue.css">
<script src="jalalijscalendar/jalali.js"></script>
<script src="jalalijscalendar/calendar.js"></script>
<script src="jalalijscalendar/calendar-setup.js"></script>
<script src="jalalijscalendar/lang/calendar-fa.js"></script>


<script>

  Calendar.setup({
    inputField: 'start_date',
    ifFormat: '%Y-%m-%d',
    dateType: 'jalali',
    showOthers  : true,
    weekNumbers : true,

});
  Calendar.setup({
    inputField: 'end_date',
    ifFormat: '%Y-%m-%d',
    dateType: 'jalali',
    showOthers  : true,
    weekNumbers : true,

});
</script>
<?PHP
			}
			else
			{
				
				if ($_POST['شنبه'] == 'on') {$days .= 'شنبه,';}
				if ($_POST['یکشنبه'] == 'on') {$days .= 'یکشنبه,';}
				if ($_POST['دوشنبه'] == 'on') {$days .= 'دوشنبه,';}
				if ($_POST['سه_شنبه'] == 'on') {$days .= 'سه شنبه,';}
				if ($_POST['چهار_شنبه'] == 'on') {$days .= 'چهار شنبه,';}
				if ($_POST['پنج_شنبه'] == 'on') {$days .= 'پنج شنبه,';}
				if ($_POST['جمعه'] == 'on') {$days .= 'جمعه,';}
				
				$days = substr($days , 0 , strlen($days) - 1);
  $_POST['start_minute'] = strlen($_POST['start_minute']) == 1 ? '0'.$_POST['start_minute'] : $_POST['start_minute'];
  $_POST['start_hour'] = strlen($_POST['start_hour']) == 1 ? '0'.$_POST['start_hour'] : $_POST['start_hour'];
  $_POST['end_minute'] = strlen($_POST['end_minute']) == 1 ? '0'.$_POST['end_minute'] : $_POST['end_minute'];
  $_POST['end_hour'] = strlen($_POST['end_hour']) == 1 ? '0'.$_POST['end_hour'] : $_POST['end_hour'];
  
  $type = $_POST['type1'].','.$_POST['type2'].','.$_POST['type3'].','.$_POST['type4'];

				$updsql = $admin->sql("update $tblname set type = '$type' , name = '$_POST[name]' , price = '$_POST[price]' , capacity = '$_POST[capacity]' , start_date = '".str_replace('/' , '-' , $_POST['start_date'])."' , start_minute = '$_POST[start_minute]' , start_hour = '$_POST[start_hour]' , end_date = '".str_replace('/' , '-' , $_POST['end_date'])."' , end_minute = '$_POST[end_minute]' , end_hour = '$_POST[end_hour]' , description = '$_POST[description]' where id = '$_GET[id]' limit 1");
				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				$admin->LOG('مدیریت سانس ها - ویرایش سانس' , $msg);
			}
		break;
	}
}

//if (!isset($_GET['op']) and $_GET['op'] != 'edit')
if (true)
{
?>
<center>
<form method="post" action="">
جستجو بر اساس عنوان سانس : <input type="text" name="search" class="input-t" size="45" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
</form>
</center>
<br /><br />
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center" rowspan="2"><a href="index.php?do=<?=$url?>&sort=id&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">#</a></td>
    <td align="center" rowspan="2"><a href="index.php?do=<?=$url?>&sort=name&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">عنوان</a></td>
    <td align="center" rowspan="2"><a href="index.php?do=<?=$url?>&sort=capacity&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">ظرفیت</a></td>
    <td align="center" rowspan="2"><a href="index.php?do=<?=$url?>&sort=price&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">ورودی<br>تومان</a></td>
    <td align="center" rowspan="2"><a href="index.php?do=<?=$url?>&sort=start_date&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">آغاز</a></td>
    <td align="center" rowspan="2"><a href="index.php?do=<?=$url?>&sort=end_date&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">پایان</a></td>
    <td align="center" rowspan="2">ورود مجاز</td>
    <td align="center" rowspan="2">گیفت کارت</td>
    <td align="center" colspan="5">بلیط</td>
    <?PHP if (SUID == 0) echo '<td width="80" align="center" rowspan="2">کاربر</td>'; ?>
    <td width="170" align="center" rowspan="2">ابزار</td>
  </tr>
  <tr bgcolor="#cccccc" height="30">
  	<td align="center">کل</td>
    <td align="center">فعال</td>
    <td align="center">مرجوع</td>
    <td align="center">ابطالی</td>
    <td align="center">منقضی</td>
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
	$sql = $admin->sql("select * from $tblname where(name like '%$_POST[search]%' and archive = 1)");
}
else
{
	if (isset($_GET['sort']))
	{
		$sql = $admin->sql("select * from $tblname where ( archive = 1) order by $_GET[sort] $_GET[type] limit $start,$pagCo");
	}
	else
	{
		$sql = $admin->sql("select * from $tblname where ( archive = 1) order by id desc limit $start,$pagCo");
	}
}


$exec = '';
$x = 1;

$now = substr($admin->true_time() , 0 , 10);

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
	<td align="center"><a href="index.php?do=ticket_manage&archive=1&showtime_id='.$row['id'].'">'.$row['name'].'</a></td>
	<td align="center">'.$row['capacity'].' نفر</td>
	<td align="center">'.number_format($row['price']).'</td>
	<td align="center" dir="ltr">'.$row['start_date'].' '.$row['start_hour'].':'.$row['start_minute'].'</td>
	<td align="center" dir="ltr">'.$row['end_date'].' '.$row['end_hour'].':'.$row['end_minute'].'</td>
	<td align="center">';

	echo stripos($row['type'], 'مهمان آقا') !== false ? '<img src="images/1.png">' : '';
	echo stripos($row['type'], 'مهمان خانم') !== false ? '<img src="images/2.png">' : '';
	echo stripos($row['type'], 'پرسنل آقا') !== false ? '<img src="images/3.png">' : '';
	echo stripos($row['type'], 'پرسنل خانم') !== false ? '<img src="images/4.png">' : '';


	echo '</td>
	<td align="center">'.($row['use_coupon'] == 'on' ? '<img src="images/yes.jpg">' : '<img src="images/no.jpg">').'</td>
	<td align="center">'.$admin->result($admin->sql("select count(*) from ticket where showtime_id = '$row[id]' ") , 0).'</td>
	<td align="center">'.$admin->result($admin->sql("select count(*) from ticket where (status = 'فعال' and showtime_id = '$row[id]') ") , 0).'</td>
	<td align="center">'.$admin->result($admin->sql("select count(*) from ticket where (status = 'مرجوع' and showtime_id = '$row[id]') ") , 0).'</td>
	<td align="center">'.$admin->result($admin->sql("select count(*) from ticket where (status = 'ابطال' and showtime_id = '$row[id]') ") , 0).'</td>
	<td align="center">'.$admin->result($admin->sql("select count(*) from ticket where (time_finish <= '$now' and showtime_id = '$row[id]') ") , 0).'</td>
	
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="center">'.$admin->description($row , $tblname).'&nbsp;&nbsp;
	<a href="index.php?do='.$url.'&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> 
	
	<a onclick="return confirm(\'آیا سانس از آرشیو بازگردانی شود ؟ \')" href="index.php?do='.$url.'&op=archive&id='.$row['id'].'"><img src="images/archive.png" border="0" alt="بازگردانی از آرشیو" title="بازگردانی از آرشیو" align="texttop"></a>

	&nbsp;&nbsp;
	<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do='.$url.'&op=remove&id='.$row['id'].'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
	
	</td>
  </tr>
	';
	
	$x++;
}

if (mysqli_num_rows($sql) == 0)
	echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=15>متاسفانه نتیجه ای یافت نشد</td></tr>';


?>
</table>
<br />
<div class="pagination">
<?PHP
$current = $start;
if (!isset($_POST['search']))
{
	$sql = $admin->sql("select * from $tblname where ( archive = 1)");
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
