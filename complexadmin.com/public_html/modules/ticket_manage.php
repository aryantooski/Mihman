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
<b class="bx">مدیریت بلیط ها : </b>
<div class="co">
<?PHP
$tblname = 'ticket';
$pagCo = 70;
$url = 'ticket_manage';
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
			
			$admin->LOG('مدیریت بلیط ها - حذف' , $msg);
		break;
	}
}

?>

			

<center>
<form method="post" action="">
<input type="hidden" name="search" value="search">
جستجو بر اساس 
سریال تگ : <input type="text" name="serial" class="input-t" value="<?=$_POST['serial']?>"> &nbsp;
نام خریدار بلیط : <input type="text" name="buyer_name" value="<?=$_POST['buyer_name']?>" class="input-t"> &nbsp;
عنوان سانس : <select name="showtime_id" class="input-s"><option value="">همه</option><?PHP
$showtime_sql = $admin->sql("select * from showtime where (id IN (select showtime_id from ticket where (archive = 0))) order by name asc");
$s[$_POST['showtime_id']] = 'selected=selected';
while ($showtime = $admin->row($showtime_sql))
{
	echo '<option value="'.$showtime['id'].'" '.$s[$showtime['id']].'>'.$showtime['name'].'</option>';
}
?></select> &nbsp;
گروه تگ : <select name="tag_category_id" class="input-s"><option value="">همه</option><?PHP
$tag_category_sql = $admin->sql("select * from tags_category where (id IN (select tag_category_id from ticket where (archive = 0))) order by name asc");
$e[$_POST['tag_category_id']] = 'selected=selected';
while ($tag_category = $admin->row($tag_category_sql))
{
	echo '<option value="'.$tag_category['id'].'" '.$e[$tag_category['id']].'>'.$tag_category['name'].'</option>';
}
?></select> &nbsp;


<input type="submit" value="جستجو" class="input-b" style="text-align:center" />
</form>
</center>
<br /><br />

<?PHP
echo $admin->show_ticket_additional();
?>

<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center"><a href="index.php?do=<?=$url?>&sort=id&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">#</a></td>
    <td align="center">عنوان سانس</td>
    <td align="center">خریدار بلیط</td>
    <td align="center">گروه تگ</td>
    
    <td align="center"><a href="index.php?do=<?=$url?>&sort=login_amount&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">ورودی<br>تومان</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=total_part_amount&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">بخش ها<br>تومان</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=tag_discount&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">تخفیف تگ<br>تومان</a></td>
    <td align="center">بن تخفیف<br>تومان</td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=tag_pledge&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">گرویی تگ<br>تومان</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=amount&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">پرداختی<br>تومان</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=make_time&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">زمان صدور</a></td>
    
    <?PHP if (SUID == 0) echo '<td width="50" align="center">کاربر</td>'; ?>
    <td align="center">ابزار</td>
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

if (isset($_GET['archive']))
{
	$sql = $admin->sql("select * from $tblname where (archive = 1 and showtime_id = '$_GET[showtime_id]') order by id desc limit $start,$pagCo");
}
else
{
	if (isset($_POST['search']) and !empty($_POST['search']))
	{
		//$sql = $admin->sql("select * from $tblname where(archive = 0 and (id IN (select ticket_id from ticket_part where (guest_id IN (select id from guest where (name like '%$_POST[search]%'))))) or (showtime_id IN (select id from showtime where (name like '%$_POST[search]%')) ) or (tag_id IN (select id from tags where (serial like '%$_POST[search]%')) ))");

		$sql = $admin->sql("select * from $tblname where (archive = 0 and (
			".(!empty($_POST['serial']) 	? " tag_id IN (select id from tags where (serial like '%$_POST[serial]%')) and " : "")."
			".(!empty($_POST['buyer_name']) ? " id IN (select ticket_id from ticket_part where (guest_id IN (select id from guest where (name like '%$_POST[buyer_name]%')))) and " : "id IN (select ticket_id from ticket_part where (guest_id IN (select id from personel where (name like '%$_POST[buyer_name]%')))) and ")."
			".(!empty($_POST['showtime_id'])		? " showtime_id = '$_POST[showtime_id]' and " : "")."
			".(!empty($_POST['tag_category_id']) 	? " tag_category_id = '$_POST[tag_category_id]' and " : "")."
		1=1 ))");
	}
	else
	{
		if (isset($_GET['sort']))
		{
			$sql = $admin->sql("select * from $tblname where (archive = 0) order by $_GET[sort] $_GET[type] limit $start,$pagCo");
		}
		else
		{
			$sql = $admin->sql("select * from $tblname where (archive = 0) order by id desc limit $start,$pagCo");
		}
	}
}

$exec = '';
$x = 1;

$now = substr($admin->true_time() , 0 , 10);

$paper_size = $admin->result($admin->sql("select default_print_size from admin") , 0);

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

	$tx .= $admin->show_ticket($row);
	
	// $tag_category_sql = $admin->sql("select * from tags_category where (id IN (select tag_category_id from ticket where (archive = 0))) order by name asc");
	// while ($tag_category = $admin->row($tag_category_sql))
	// {
	// 	unset($buyer_name_sql1 , $buyer_name_row);

	// 	if($tag_category['type'] == 'مهمان')
	// 	{
	// 		$buyer_name_sql1 = $admin->sql("select name from guest where (id IN (select guest_id from ticket_part where (ticket_id = '$row[id]') order by id asc)) limit 1");
	// 		$buyer_name_row = $admin->row($buyer_name_sql1);
	// 	}
	// 	elseif($tag_category['type'] == 'پرسنل')
	// 	{
	// 		$buyer_name_sql2 = $admin->sql("select name from personel where (id IN (select guest_id from ticket_part where (ticket_id = '$row[id]') order by id asc)) limit 1");
	// 		$buyer_name_row = $admin->row($buyer_name_sql2);
	// 	}
	// }	

	
	$tag_category_sql = $admin->sql("select * from tags_category where (id = '$row[tag_category_id]')");
	$tag_category = $admin->row($tag_category_sql);

	if($tag_category['type'] == 'مهمان')
	{
		$buyer_name_sql = $admin->sql("select name from guest where (id IN (select guest_id from ticket_part where (ticket_id = '$row[id]') order by id asc)) limit 1");
		$buyer_name_row = $admin->row($buyer_name_sql);
	}
	else
	{
		$buyer_name_sql = $admin->sql("select name from personel where (id IN (select guest_id from ticket_part where (ticket_id = '$row[id]') order by id asc)) limit 1");
		$buyer_name_row = $admin->row($buyer_name_sql);
	}
	
	echo '



  <tr height="25" bgcolor="'.$color.'" class="tblrow">
    <td bgcolor="#d1d1d1" align="center">'.$row['id'].'</td>
	<td align="center">'.$admin->result($admin->sql("select name from showtime where id = '$row[showtime_id]'") , 0).'</td>
	<td align="center">'.$buyer_name_row['name'].'</td>
	<td align="center">'.$admin->result($admin->sql("select name from tags_category where id = '$row[tag_category_id]'") , 0).'</td>
	
	
	
	<td align="center">'.number_format($row['login_amount']).'</td>
	<td align="center">'.number_format($row['total_part_amount']).'</td>
	<td align="center">'.number_format($row['tag_discount']).'</td>
	<td align="center">'.number_format($row['coupon_discount']).'</td>
	<td align="center">'.number_format($row['tag_pledge']).'</td>
	<td align="center">'.number_format($row['amount']).'</td>
	<td align="center"><span dir=ltr>'.$admin->parse_int_to_date($row['make_time']).'</span></td>
	
	
	
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="center">
	
	<a href="javascript:void(0)" onclick="reload_content(\''.$row['id'].'\' , 0); $(\'#ticket_'.$row['id'].'\').modal({backdrop: true});"><img src="images/info.png" border="0" alt="مشاهده" title="مشاهده" align="texttop"></a>

	&nbsp;&nbsp;

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
<?=$tx?>
<br />


<div class="pagination">
<?PHP

$current = $start;
if (!isset($_POST['search']))
{
	$sql = $admin->sql("select * from $tblname where (archive = 0)");
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
