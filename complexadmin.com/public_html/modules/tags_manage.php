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
<b class="bx">مدیریت تگ ها : </b>
<div class="co">
<?PHP
$tblname = 'tags';
$pagCo = 20;
$url = 'tags_manage';



$sql_updater = $admin->sql("select * from $tblname where (status != 'suspend')");
while ($row_u = $admin->row($sql_updater))
{
	$fc = $admin->sql("select count(*) as cnt from tags_guest_ticket where (tag_id = '$row_u[id]') ");
	$fcx = $admin->row($fc);

	if ($fcx['cnt'] == 0)
	{
		$admin->sql("update $tblname set status = 'free' where (id = '$row_u[id]') limit 1 ");
	}
	else
	{
		$admin->sql("update $tblname set status = 'active' where (id = '$row_u[id]') limit 1 ");
	}
}



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
			$admin->LOG('مدیریت تگ ها - حذف ' , $msg);
		break;

		case 'change_status' :
			
			$remsql = $admin->sql("update $tblname set status = '$_GET[new_status]' where id = '$_GET[id]' limit 1");
			
			if ($remsql)
			{
				$msg = "تغییر وضعیت انجام شد"; echo $admin->msg($msg , "true");
			}
			else
			{
				$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
			}
			$admin->LOG('مدیریت تگ ها - تغییر وضعیت ' , $msg);

		break;
		
		case 'edit' :
			if (!isset($_POST['post']))
			{
				$editsql = $admin->sql("select * from $tblname where id = '$_GET[id]' limit 1");
				$editrow = $admin->row($editsql);
				?>

<script type="text/javascript">
  function update_data()
  {
    $("#color_name").html($("#category_id").find(":selected").data('colorname'));
    $("#color_code").css("background-color" , $("#category_id").find(":selected").data('colorcode'));
    $("#pledge").html($("#category_id").find(":selected").data('pledge'));
    $("#type").html($("#category_id").find(":selected").data('type'));
  }
  window.onload = function (){
  	update_data()
  }
</script>
<?PHP
				echo '
				


				<form method="post" action="" enctype="multipart/form-data" onsubmit="return validate()">
				<input type="hidden" name="post" />
				
				<table cellpadding="2">
					
					  <tr>
					    <td>سریال کارت یا دستبند : </td>
					    <td><input type="text" name="serial" dir="ltr" class="input-t" required value="'.$editrow['serial'].'"></td>
					  </tr>
<tr>
					    <td>گروه تگ : </td>
					    <td>';
					$s[$editrow['category_id']] = 'selected=selected';
					echo '
					      <select name="category_id" id="category_id" onchange="update_data()" class="input-s" required>
					      <option value="">انتخاب کنید</option>
					        ';
					        $sql = $admin->sql("select * from tags_category order by id asc");
					        while ($row = $admin->row($sql))
					        {
					          echo '<option value="'.$row['id'].'" '.$s[$row['id']].' data-colorname="'.$row['color_name'].'" data-colorcode="'.$row['color_code'].'" data-pledge="'.@number_format($row['pledge']).' تومان" data-type="'.$row['type'].'">'.$row['name'].'</option>';
					        }
					        echo '
					      </select>
					    </td>
					  </tr>

					  <tr>
					    <td>نام رنگ : </td>
					    <td><div id="color_name"></div></td>
					  </tr>
					  <tr>
					    <td>رنگ : </td>
					    <td><div id="color_code" style="width:60px; height:30px;"></div></td>
					  </tr>
					  <tr>
					    <td>گرویی تگ : </td>
					    <td><div id="pledge"></div></td>
					  </tr>
					  <tr>
					    <td>نوع تگ : </td>
					    <td><div id="type"></div></td>
					  </tr>

					  <tr>
					    <td>توضیحات : </td>
					    <td><textarea name="description" class="input-s"  style="width:300px;">'.$editrow['description'].'</textarea></td>
					  </tr>



				  <tr>
				    <td>&nbsp;</td>
				    <td>&nbsp;</td>
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
				if ($admin->sql("select count(*) as cnt from tags where (serial = '$_POST[serial]' and serial != (select serial from tags where id = '$_GET[id]' ))")->fetch_object()->cnt == 0)
  				{
					$updsql = $admin->sql("update $tblname set suid = '".SUID."' , category_id = '$_POST[category_id]' , serial = '$_POST[serial]' , description = '$_POST[description]' where id = '$_GET[id]' limit 1");
					if ($updsql)
					{
						$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
					}
					else
					{
						$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
					}
				}
				else
				{
					$msg = "این سریال قبلا درج شده است"; echo $admin->msg($msg , "critical");
				}
				$admin->LOG('مدیریت گروه تگ ها - ویرایش ' , $msg);
			}
		break;

		case 'log' :
			?>
			<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
			  <tr bgcolor="#cccccc" height="30">
			    <td width="40" align="center">#</td>
			    <td align="center">زمان</td>
			    <td align="center">نوع عملیات</td>
			    <td align="center">توضیحات</td>
			    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
			  </tr>
			<?PHP

			
			$sql = $admin->sql("select * from tags_log where (tag_id = '$_GET[id]' ) order by id desc");

			$exec = '';
			$x = 1;

			$status['active'] = '<span style="width:15px; height:15px; background:green; display:inline-block"></span> در حال  استفاده (فعال بر روی بلیت)';
			$status['free'] = '<span style="width:15px; height:15px; background:blue; display:inline-block"></span> قابل استفاده (آزاد) ';
			$status['suspend'] = '<span style="width:15px; height:15px; background:red; display:inline-block"></span> غیر قابل استفاده (مسدود) ';


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
				
				//$sql_category = $admin->sql("select * from tags_category where (id = '$row[category_id]')");
				//$category = $admin->row($sql_category);
				
				echo '
			  <tr height="25" bgcolor="'.$color.'" class="tblrow">
			    <td bgcolor="#d1d1d1" align="center">'.$x.'</td>
				<td align="center"><span dir=ltr>'.$row['datetime'].'</span></td>
				<td align="center">'.$status[$row['status']].'</td>
				
				
				
				'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
			    
			  </tr>
				';
				
				$x++;
			}

			if (mysqli_num_rows($sql) == 0)
				echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=15>متاسفانه نتیجه ای یافت نشد</td></tr>';


			?>
			</table><br><br><hr><br><br>

			<?PHP
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
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center"><a href="index.php?do=<?=$url?>&sort=id&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">#</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=serial&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">سریال</a></td>
    <td align="center">نام رنگ</td>
    <td align="center">رنگ</td>
    <td align="center">گرویی</td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=datetime&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">تاریخ ثبت</a></td>
    <td align="center">وضعیت</td>
    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
    <td width="190" align="center">ابزار</td>
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
	$sql = $admin->sql("select * from $tblname where(serial like '%$_POST[search]%')");
}
elseif (isset($_POST['filter']))
{

	$sql = $admin->sql("select * from $tblname where(category_id = '$_POST[category_id]')");
}
else
{
	if (isset($_GET['sort']))
	{
		$sql = $admin->sql("select * from $tblname order by $_GET[sort] * 1 $_GET[type] limit $start,$pagCo");
	}
	else
	{
		$sql = $admin->sql("select * from $tblname order by id desc limit $start,$pagCo");
	}
}


$exec = '';
$x = 1;

$now = substr($admin->true_time() , 0 , 10);

$status['active'] = '<span style="width:15px; height:15px; background:blue; display:inline-block"></span> در حال  استفاده (فعال بر روی بلیت)';
$status['free'] = '<span style="width:15px; height:15px; background:green; display:inline-block"></span> قابل استفاده (آزاد) ';
$status['suspend'] = '<span style="width:15px; height:15px; background:red; display:inline-block"></span> غیر قابل استفاده (مسدود) ';

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
	
	$sql_category = $admin->sql("select * from tags_category where (id = '$row[category_id]')");
	$category = $admin->row($sql_category);
	
	echo '
  <tr height="25" bgcolor="'.$color.'" class="tblrow">
    <td bgcolor="#d1d1d1" align="center">'.$row['id'].'</td>
	<td align="center">'.$row['serial'].'</td>
	<td align="center">'.$category['color_name'].'</td>
	<td align="center" style="background:'.$category['color_code'].'">&nbsp;</td>
	<td align="center">'.@number_format($category['pledge']).' تومان</td>
	<td align="center"><span dir=ltr>'.substr($row['datetime'] , 0 , 16).'</span></td>
	<td align="center">'.$status[$row['status']];

	if ($row['status'] == 'active')
	{
		$ticket_id = $admin->result($admin->sql("select id from ticket where (tag_id = '$row[id]') "));
		echo ' بلیط #'.$ticket_id;
	}

	echo '</td>
	
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="right">&nbsp;&nbsp;'.$admin->description($row , $tblname).'&nbsp;&nbsp;
	<a href="index.php?do=tags_report&tag_id='.$row['id'].'"><img src="images/board.png" border="0" align="texttop" alt="تاریخچه" title="تاریخچه"></a> 
	&nbsp;&nbsp;


	';

	if ($row['status'] == 'suspend')
	{
		echo '<a href="index.php?do='.$url.'&op=change_status&new_status=free&id='.$row['id'].'" onclick="return confirm(\'آیا اطمینان دارید؟\')"><img src="images/active.png" border="0" align="texttop" alt="فعال سازی تگ" title="فعال سازی تگ"></a> ';
	}
	else
	{
		echo '<a href="index.php?do='.$url.'&op=change_status&new_status=suspend&id='.$row['id'].'" onclick="return confirm(\'آیا اطمینان دارید؟\')"><img src="images/exit.png" border="0" align="texttop" alt="مسدود سازی" title="مسدود سازی"></a> ';
	}

	

	if ($row['status'] != 'active')
	{
		echo '&nbsp;&nbsp;
		<a href="index.php?do='.$url.'&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;
		<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do='.$url.'&op=remove&id='.$row['id'].'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
		';
	}


	echo '
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
if (!isset($_POST['search']) and !isset($_POST['filter']))
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
