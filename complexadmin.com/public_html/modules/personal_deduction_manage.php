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
<b class="bx">مدیریت کسر/اضافه : </b>
<div class="co">
<?PHP
$tblname = 'deduction';
$pagCo = 20;
$url = 'personal_deduction_manage';
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
			
			$admin->LOG('مدیریت کسر/اضافه - حذف' , $msg);
		break;
		
		case 'edit' :
			if (!isset($_POST['post']))
			{
				$editsql = $admin->sql("select * from $tblname where id = '$_GET[id]' limit 1");
				$editrow = $admin->row($editsql);
				
				echo '
				<form method="post" action="" enctype="multipart/form-data">
				<input type="hidden" name="post" />
				<table cellpadding="5">
				  <tr>
					<td>مبلغ : </td>
					<td><input type="text" name="amount" class="input-t" value="'.number_format($editrow['amount']).'" dir=ltr '.NUMERAL.' size="40" /> تومان</td>
				  </tr>
				  <tr>
					<td>نوع : </td>
					<td>
					';
					$ex[$editrow['type']] = 'selected=selected';
					echo '
					<select name="type" class="input-s">
					<option '.$ex['-'].' value="-">کسر</option>
					<option '.$ex['+'].' value="+">اضافه</option>
					</select>
					</td>
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
				$updsql = $admin->sql("update $tblname set amount = '".str_replace("," , "" , $_POST['amount'])."' , type = '$_POST[type]' where id = '$_GET[id]' limit 1");
				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				
				$admin->LOG('مدیریت کسر/اضافه - ویرایش' , $msg);
			}
		break;
	}
}
/*
?>
<center>
<form method="post" action="">
جستجو بر اساس عنوان : <input type="text" name="search" class="input-t" size="45" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
</form>
</center>
<br /><br />
<?PHP */ ?>
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center">#</td>
    <td align="center">نام پرسنل</td>
    <td align="center">گروه کسری</td>
    <td align="center">سال</td>
    <td align="center">ماه</td>
    <td align="center">مبلغ به تومان</td>
    <td align="center">نوع</td>
    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
    <td width="80" align="center">ابزار</td>
  </tr>
<?PHP
$m = array(1=>'فروردین' , 2=>'اردیبهشت' , 3=>'خرداد' , 4=>'تیر' , 5=>'مرداد' , 6=>'شهریور' , 7=>'مهر' , 8=>'آبان' , 9=>'آذر' , 10=>'دی' , 11=>'بهمن' , 12=>'اسفند');


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
	<td align="center">'.@$admin->result($admin->sql("select name from personel where id = '$row[personel_id]'") , 0).'</td>
	<td align="center">'.@$admin->result($admin->sql("select name from deduction_group where id = '$row[deduction_group_id]'") , 0).'</td>
	<td align="center">'.$row['year'].'</td>
	<td align="center">'.$m[$row['month']].'</td>
	<td align="center">'.number_format($row['amount']).'</td>
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
	<td align="center">';
	if ($row['type'] == '+')
		echo '<font color=green>اضافه</font>';
	else
		echo '<font color=red>کسر</font>';
	
	echo '</td>
    <td align="center">
	<a href="index.php?do='.$url.'&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do='.$url.'&op=remove&id='.$row['id'].'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
	</td>
  </tr>
	';
	
	$x++;
}

if (mysqli_num_rows($sql) == 0)
	echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=4>متاسفانه نتیجه ای یافت نشد</td></tr>';


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
