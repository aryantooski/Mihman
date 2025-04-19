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
<b class="bx">مدیریت حساب ها : </b>
<div class="co">
<?PHP
$tblname = 'account';
$pagCo = 20;
$url = 'account_manage';
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
			
			$admin->LOG('مدیریت حساب ها - حذف' , $msg);
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
					<td>عنوان حساب : </td>
					<td><input type="text" name="name" class="input-t" size="40" value="'.$editrow['name'].'" /></td>
				  </tr>
				  <tr>
					<td>شماره حساب : </td>
					<td><input type="text" name="number" class="input-t" dir="ltr" value="'.$editrow['number'].'" /></td>
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
				$updsql = $admin->sql("update $tblname set name = '$_POST[name]' , number = '$_POST[number]' where id = '$_GET[id]' limit 1");
				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				
				$admin->LOG('مدیریت حساب ها - ویرایش' , $msg);
			}
		break;
	}
}

?>
<center>
<form method="post" action="">
جستجو بر اساس نام حساب : <input type="text" name="search" class="input-t" size="45" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
</form>
</center>
<br /><br />
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center">#</td>
    <td align="center">نام حساب</td>
    <td align="center">شماره حساب</td>
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
	<td align="center">'.$row['number'].'</td>
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
	echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=14>متاسفانه نتیجه ای یافت نشد</td></tr>';


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
