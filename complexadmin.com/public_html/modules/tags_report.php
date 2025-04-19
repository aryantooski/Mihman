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
<b class="bx">گزارش تگ : </b>
<div class="co">
<?PHP
$tblname = 'tags_log';
$pagCo = 20;
$url = 'tags_report';
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
			$admin->LOG('مدیریت گروه تگ ها - حذف ' , $msg);
		break;
		
	}
}


?>
<table>
	<tr>
		<td style="width: 500px">
			<form method="post" action="">
			جستجو بر اساس سریال تگ : <input type="text" name="search" class="input-t" size="45" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
			</form>
		</td>
		<td>
			<form method="post" action="">
				<input type="hidden" name="filter">
				فیلتر بر اساس : 
				گروه تگ 
				<select name="category_id" class="input-s" style="width: 150px;">
					<option value="">انتخاب کنید</option>
					<?php
					$sql = $admin->sql("select * from tags_category order by id asc");
					while ($row = $admin->row($sql))
					{
						echo '<option value="'.$row['id'].'" style="background-color:'.$row['color_code'].'; width:10px;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; '.$row['name'].'</option>';
					}
					?>
				</select> 
				<input type="submit" value="فیلتر" class="input-b" style="text-align:center" />
			</form>
		</td>
	</tr>
</table>

<br /><br />
<?PHP
echo $admin->show_ticket_additional();
?>
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center"><a href="index.php?do=<?=$url?>&sort=id&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">#</a></td>
    <td align="center">تگ و سریال</td>
    <td align="center">سانس و بلیط</td>
    <td align="center">مهمان</td>
    <td align="center">زمان</td>
    <td align="center">عملیات</td>
    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
    <td align="center">ابزارها</td>
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
	$sql = $admin->sql("select * from $tblname where(tag_id IN(select id from tags where(serial like '%$_POST[search]%')) )");
}
elseif (isset($_POST['filter']))
{

	$sql = $admin->sql("select * from $tblname where(tag_id IN(select id from tags where(category_id = '$_POST[category_id]')) )");
}
else
{
	if (isset($_GET['tag_id']) and intval($_GET['tag_id']) > 0)
	{
		$where = " and tag_id = '$_GET[tag_id]' ";
	}

	$sql = $admin->sql("select * from $tblname where (1=1 $where) order by id desc limit $start,$pagCo");
}


$exec = '';
$x = isset($start) ? $start+1 : 1;

$icon['اتصال تگ به بلیط'] = 'reserve.png';
$icon['مرجوع تگ'] = 'marjoo.png';
$icon['ابطال تگ'] = 'ebtal.png';
$icon['جایگزین تگ'] = 'replace.png';

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
	
	$tag_sql = $admin->sql("select * from tags where (id = '$row[tag_id]')");
	$tag = $admin->row($tag_sql);

	$tags_category_sql = $admin->sql("select * from tags_category where (id = '$tag[category_id]')");
	$tags_category = $admin->row($tags_category_sql);

	$guest_sql = $admin->sql("select * from guest where (id = '$row[guest_id]')");
	$guest = $admin->row($guest_sql);

	$showtime_sql = $admin->sql("select * from showtime where (id = (select showtime_id from ticket where (id = '$row[ticket_id]')))");
	$showtime = $admin->row($showtime_sql);

	$ticket = $admin->sql("select * from ticket where (id = '".$row['ticket_id']."' )");
	$ticket = $admin->row($ticket);

	$tx .= $admin->show_ticket($ticket);

	echo '
  <tr height="25" bgcolor="'.$color.'" class="tblrow">
    <td bgcolor="#d1d1d1" align="center">'.$x.'</td>
	<td align="center"><span style="display:inline-block; width:10px; height:10px; background-color:'.$tags_category['color_code'].'"></span> '.$tags_category['color_name'].' - '.$tag['serial'].'</td>
	<td align="center">'.$showtime['name'].'<br>#'.$row['ticket_id'].'</td>
	<td align="center">'.$guest['name'].'</td>
	<td align="center"><span dir=ltr>'.$row['datetime'].'</span></td>
	<td align="center"><img src="images/'.$icon[$row['details']].'" alt="'.$row['details'].'" title="'.$row['details'].'"></td>
	
	
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    
    <td align="center"><a href="javascript:void(0)" onclick="reload_content(\''.$row['ticket_id'].'\' , 0); $(\'#ticket_'.$row['ticket_id'].'\').modal({backdrop: true});"><img src="images/info.png" border="0" alt="مشاهده" title="مشاهده" align="texttop"></a></td>

  </tr>
	';
	
	$x++;
}

if (mysqli_num_rows($sql) == 0)
	echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=15>متاسفانه نتیجه ای یافت نشد</td></tr>';


?>
</table>
<?=$tx?>
<br />
<div class="pagination">
<?PHP
$current = $start;
if (!isset($_POST['search']))
{
	$sql = $admin->sql("select * from $tblname where (1=1 $where)");
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
			
			$ret .= '<a href="index.php?do='.$url.'&start='.$start.'&tag_id='.$_GET['tag_id'].'" '.$theme.'>'.$x.'</a>';
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
