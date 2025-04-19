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
<b class="bx">گزارش انسداد مهمانان : </b>
<div class="co">
<?PHP
$tblname = 'guest_block';
$pagCo = 20;
$url = 'guest_block_report';
if (isset($_GET['op']))
{
	switch ($_GET['op'])
	{
		case 'remove' :
			$remsql = $admin->sql("delete from $tblname where id = '$_GET[id]' limit 1");
			
			if ($remsql)
			{
				$msg = "حذف انجام شد"; echo $admin->msg($msg , "true");
			}
			else
			{
				$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
			}
			
			$admin->LOG('مدیریت مهمانان - حذف' , $msg);
		break;
		
		case 'end' :
			$remsql = $admin->sql("update $tblname set end_stamp = '".time()."' , suid = '".SUID."' where id = '$_GET[id]' limit 1");
			
			if ($remsql)
			{
				$msg = "پایان مسدودی اعمال شد."; echo $admin->msg($msg , "true");
			}
			else
			{
				$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
			}
			
			$admin->LOG('مدیریت مهمانان - پایان مسدودی' , $msg);
		break;
		
		
		case 'edit' :
			if (!isset($_POST['post']))
			{
				$editsql = $admin->sql("select * from $tblname where id = '$_GET[id]' limit 1");
				$editrow = $admin->row($editsql);
				
				$s[$editrow['type']] = 'checked';
				if (empty($editrow['todate_value']))
				{
					$editrow['todate_value'] = '1395/04/19';
				}
				echo '
				<script type="text/javascript" src="inc/PersianDatePicker.min.js"></script>
				<link type="text/css" rel="stylesheet" href="inc/PersianDatePicker.min.css" />
				<form method="post" action="" enctype="multipart/form-data">
				<input type="hidden" name="post" value="a">
				';
$sql_quest = $admin->sql("select * from guest where id = '$editrow[user_id]'");

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
<?php
echo '
				<table cellpadding="2" width="100%">
				  <tr>
					<td>نوع انسداد : </td>
					<td>
						<table>
							<tr>
								<td><label><input type="radio" name="type" value="todate" '.$s['todate'].'> تا تاریخ</label></td>
								<td><input type="text" name="todate_value" class="input-t" placeholder="'.$admin->time('Y/m/d').'" dir="ltr" value="'.str_replace('-' , '/' , $editrow['todate_value']).'" onclick="PersianDatePicker.Show(this, \''.str_replace('-' , '/' , $editrow['todate_value']).'\');"></td>
							</tr>
							<tr>
								<td><label><input type="radio" name="type" value="until" '.$s['until'].'> به مدت</label></td>
								<td><input type="text" name="until_value" class="input-t" dir="ltr" value="'.$editrow['until_value'].'"> روز</td>
							</tr>
							<tr>
								<td><label><input type="radio" name="type" value="notexpire" '.$s['notexpire'].'> تا اطلاع ثانوی</label></td>
							</tr>
						</table>
					</td>
				  </tr>
				  <tr>
					<td>توضیحات : </td>
					<td><input type="text" name="description" class="input-t" size="100" value="'.$editrow['description'].'"></td>
				  </tr>
				</table>
				<input type="submit" value="تایید" class="input-b" />
				</form>
				<div style="border:1px solid #e1e1e1; margin-top:20px; margin-bottom:20px;"></div>
				';
			}
			else
			{
				
				$updsql = $admin->sql("update $tblname set type = '$_POST[type]' , todate_value = '".str_replace('/' , '-' , $_POST['todate_value'])."' , until_value = '$_POST[until_value]' , description = '$_POST[description]' , date = '".$admin->time('Y-m-d')."' , time = '".$admin->time('H:i:s')."' where id = '$_GET[id]' limit 1");
				
				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				
				$admin->LOG('گزارش انسداد مهمانان - ویرایش' , $msg);
			}
		break;
		
	}
	
}

?>
<center>
<form method="post" action="index.php?do=guest_block_report">
جستجو بر اساس نام مهمان : <input type="text" name="search" class="input-t" size="45" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
</form>
</center>
<br /><br />
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center"><a href="index.php?do=<?=$url?>&sort=id&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">#</a></td>
    <td align="center">مهمان</td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=type&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">نوع مسدودیت</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=date&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">تاریخ اجرا</a></td>
    <td align="center">تاریخ پایان</td>
    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
    <td width="160" align="center">ابزار</td>
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
	$sql = $admin->sql("select * from $tblname where (name like '%$_POST[search]%' or mobile like '%$_POST[search]%')");
	$sql = $admin->sql("select * from $tblname where (user_id IN (select id from guest where (name like '%$_POST[search]%')))");
}
else
{
	if (isset($_GET['userid']))
	{
		$sql = $admin->sql("select * from $tblname where(user_id = '$_GET[userid]') order by id desc");
	}
	else
	{
		if (isset($_GET['sort']))
		{
			$sql = $admin->sql("select * from $tblname order by $_GET[sort] $_GET[type] limit $start,$pagCo");
		}
		else
		{
			$sql = $admin->sql("select * from $tblname order by id desc limit $start,$pagCo");
		}
	}
}
require_once('inc/date.php');

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
	
	$sql_guest = $admin->sql("select * from guest where (id = '$row[user_id]')");
	$guest = $admin->row($sql_guest);
	
	echo '
  <tr height="25" bgcolor="'.$color.'" class="tblrow">
    <td bgcolor="#d1d1d1" align="center">'.$row['id'].'</td>
	<td align="center"><a href="index.php?do=guest_manage&op=edit&id='.$guest['id'].'" target="_blank">'.$guest['name'].'</a></td>
	<td align="center">';

	
	$is_block = false;
	switch ($row['type'])
	{
		case 'todate' : 
			
			list($yx , $mx , $dx) = explode('-' , $row['todate_value']);
			
			$date_to_stamp = jmaketime(0 , 0 , 0 , $mx , $dx , $yx);
			$today_stamp = jmaketime(0 , 0 , 0 , $admin->time('m') , $admin->time('d') , $admin->time('Y'));
			
			$remains = ceil(($date_to_stamp - $today_stamp) / 86400);
			
			if ($remains > 0)
			{
				echo 'تا تاریخ</td><td align="center">'.$row['date'].'</td><td align="center"> <span dir="ltr">'.$row['todate_value'].'</span> - باقیمانده '.$remains.' روز';
			}
			else
			{
				echo 'تا تاریخ</td><td align="center">'.$row['date'].'</td><td align="center">  <span dir="ltr">'.$row['todate_value']."</span> - پایان یافته";
				$is_block = true;
			}
			
		break;
		
		case 'until' : 
			list($y , $m , $d) = explode('-' , $row['date']);

			$date_to_stamp = jmaketime(0 , 0 , 0 , $m , $d , $y) + ($row['until_value'] * 86400);
			$today_stamp = jmaketime(0 , 0 , 0 , $admin->time('m') , $admin->time('d') , $admin->time('Y'));
			
			$remains = ceil(($date_to_stamp - $today_stamp) / 86400);

			if ($remains > 0)
			{
				echo 'به مدت  '.$row['until_value'].' روز</td><td align="center">'.$row['date'].'</td><td align="center">   باقیمانده '.$remains.' روز';
			}
			else
			{
				echo 'به مدت '.$row['until_value'].' روز</td><td align="center">'.$row['date'].'</td><td align="center">پایان یافته';
				$is_block = true;
			}
		break;
		
		case 'notexpire' : 
			echo 'تا اطلاع ثانوی</td><td align="center">'.$row['date'].'</td><td align="center">تا اطلاع ثانوی';
		break;
	}
	
	if ($row['end_stamp'] <= time() and $row['end_stamp'] != 0)
	{
		echo '<div style="color:blue;">پایان یافته در تاریخ <span dir=ltr>'.$admin->time('Y-m-d H:i:s' , $row['end_stamp']).'</span></div>';
		$is_block = true;
	}

	//<a href="index.php?do='.$url.'&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;&nbsp;
	echo '</td>
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="center">'.$admin->description($row , $tblname).'&nbsp;&nbsp;
    ';						

	if (!$is_block)
	{
		echo '<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do=guest_block_report&op=end&id='.$row['id'].'"><img src="images/end.png" border="0" alt="پایان مسدودی" title="پایان مسدودی" align="texttop"></a> &nbsp;&nbsp;';
	}
	echo '

	
	<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do='.$url.'&op=remove&id='.$row['id'].'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
	</td>
  </tr>
	';
	
	$x++;
}

if (mysqli_num_rows($sql) == 0)
	echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=6>متاسفانه نتیجه ای یافت نشد</td></tr>';


?>
</table>
<br />
<div class="pagination">
<?PHP
$current = $start;
if (!isset($_GET['userid']) and !isset($_POST['search']))
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
