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
<b class="bx">گزارش هزینه ها : </b>
<div class="co">
<?PHP
$tblname = 'cost_group';
$pagCo = 20;
$url = 'cost_report';
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
			
			$admin->LOG('گزارش هزینه ها - حذف' , $msg);
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
					<td>عنوان : </td>
					<td><input type="text" name="name" class="input-t" value="'.$editrow['name'].'" size="40" /></td>
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
				$updsql = $admin->sql("update $tblname set name = '$_POST[name]' where id = '$_GET[id]' limit 1");
				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				
				$admin->LOG('گزارش هزینه ها - ویرایش' , $msg);
			}
		break;
	}
}

?>
<center>
<form method="post" action="">
جستجو بر اساس شماره گروه هزینه : <input type="text" name="search" class="input-t" size="45" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
</form>
</center>
<br /><br />
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center">#</td>
    <td align="center">نوع هزینه</td>
    <td align="center">تعداد پرداختی</td>
    <td align="center">آخرین پرداختی</td>
    <td align="center">جمع کل پرداختی تا به امروز</td>
    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
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
	<td align="right">'.$row['name'].'</td>
	<td align="center">'.@$admin->result($admin->sql("select count(*) from cost where group_id = '$row[id]'") , 0).'</td>
	<td align="center">'.@$admin->result($admin->sql("select name from cost where group_id = '$row[id]' order by id desc limit 1") , 0).'</td>
	<td align="center">'.number_format(@$admin->result($admin->sql("select sum(amount) from cost where group_id = '$row[id]'") , 0)).' تومان</td>
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
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
