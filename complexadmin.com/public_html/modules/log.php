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
<b class="bx">گزارش وقایع کاربر : </b>
<div class="co">
<?PHP
$tblname = 'log';
$pagCo = 30;
$url = 'log';
?>
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center">#</td>
    <td align="center" width="70">زمان</td>
    <td align="center" width="110">عمل</td>
    <td align="center">توضیحات</td>
    <td align="center">توضیحات فنی</td>
    <td align="center">سیستم</td>
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

$userid = $admin->inj($_GET['userid']);

$sql = $admin->sql("select * from $tblname where (userid = '$userid') order by id desc limit $start,$pagCo");
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
	<td align="center" dir="ltr">'.$row['time'].'</td>
	<td align="center">'.$row['action'].'</td>
	<td align="center">'.$row['comment'].'</td>
	<td align="left" dir="ltr"><pre>'.$row['technical'].'</pre></td>
	<td align="left" dir="ltr"><div style="overflow:auto; width:300px; height:150px; background:white;"><pre>'.$row['agent'].'</pre></div></td>
	</td>
  </tr>
	';
	
	$x++;
}
?>
</table>
<br />

<?PHP
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
		$ret .= '<a href="index.php?do='.$url.'&start='.$start.'">'.$x.'</a>&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;';
		$start = $x * $pagCo;
	}
}
else
{
	$ret = '<b>1</b>';
}
echo '<br><br> صفحات :  &nbsp;&nbsp;'.$ret;
?>


</div>
</div>
</div>
    </td>
  </tr>
</table>
