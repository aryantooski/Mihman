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
<b class="bx">مدیریت گیفت کارتهای تخفیف : </b>
<div class="co">
<?PHP
$tblname = 'coupon';
$pagCo = 20;
$url = 'coupon_manage';
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
				    <td>مبلغ تخفیف : </td>
				    <td><input type="text" name="amount" class="input-t" dir="ltr" required onkeydown="return ( event.ctrlKey || event.altKey 
				                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
				                    || (95<event.keyCode && event.keyCode<106)
				                    || (event.keyCode==8) || (event.keyCode==9) 
				                    || (event.keyCode>34 && event.keyCode<40) 
				                    || (event.keyCode==46) )" value="'.$editrow['amount'].'"> تومان</td>
				  </tr>
				  <tr>
				    <td>سریال : </td>
				    <td><input type="text" name="serial" class="input-t" dir="ltr" required value="'.$editrow['serial'].'"></td>
				  </tr>

				  <tr>
				    <td>توضیحات : </td>
				    <td><textarea name="description" class="input-s" style="width:300px;">'.$editrow['description'].'</textarea></td>
				  </tr>
				  ';
				  if ($editrow['status'] != 'استفاده شده')
				  {
				  	echo '
				  		<tr>
					    <td>وضعیت : </td>
					    <td>
					    ';
					    $s[$editrow['status']] = 'selected=selected';

					    //<option '.$s['استفاده شده'].' value="استفاده شده">استفاده شده</option>
					    echo '
					      <select name="status" class="input-s">
					        <option '.$s['فعال'].' value="فعال">فعال</option>
					        <option '.$s['رزرو'].' value="رزرو">رزرو</option>
					        
					      </select>

					    </td>
					  </tr>
				  	';
				  }
				  echo '

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
				$editsql = $admin->sql("select * from $tblname where id = '$_GET[id]' limit 1");
				$editrow = $admin->row($editsql);

				if ($editrow['status'] != 'استفاده شده')
				{
					$status = " , status = '$_POST[status]' ";
				}

				$updsql = $admin->sql("update $tblname set suid = '".SUID."' , amount = '$_POST[amount]' , serial = '$_POST[serial]' , description = '$_POST[description]' $status where id = '$_GET[id]' limit 1");
				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				
				$admin->LOG('مدیریت گیفت کارت ها - ویرایش ' , $msg);
			}
		break;
	}
}


?>
<center>
			<form method="post" action="">
			جستجو بر اساس سریال : <input type="text" name="search" class="input-t" size="45" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
			</form>
		</center>

<br /><br />
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center"><a href="index.php?do=<?=$url?>&sort=id&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">#</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=serial&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">سریال</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=add_time&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">تاریخ ثبت</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=amount&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">مبلغ تخفیف</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=status&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">وضعیت</a></td>
    <td align="center"><a href="#">سانس و بلیط</a></td>
    <td align="center"><a href="#">خریدار</a></td>
    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
    <td width="120" align="center">ابزار</td>
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

	$ticket_sql = $admin->sql("select * from ticket where (coupon_id = '$row[id]')");
	$ticket = $admin->row($ticket_sql);

	$showtime_sql = $admin->sql("select * from showtime where (id = '$ticket[showtime_id]')");
	$showtime = $admin->row($showtime_sql);

	echo '
  <tr height="25" bgcolor="'.$color.'" class="tblrow">
    <td bgcolor="#d1d1d1" align="center">'.$row['id'].'</td>
    <td align="center"><a href="https://chart.googleapis.com/chart?cht=qr&chl='.$row['serial'].'&chs=160x160" target="_blank">'.$row['serial'].'</a></td>
    <td align="center"><span dir=ltr>'.substr($row['add_time'] , 0 , 16).'</span></td>
    <td align="center">'.number_format($row['amount']).'</td>
	<td align="center">'.$row['status'].($row['status'] == 'استفاده شده' ? ' - در تاریخ : <span dir=ltr>'.$admin->parse_int_to_date($ticket['make_time']).'</span>' : '').'</td>
	
	
	<td align="center">سانس '.$showtime['name'].' - بلیط #'.$ticket['id'].'</td>
	<td align="center">'.@$admin->result($admin->sql("select name from guest where (id IN (select guest_id from ticket_part where (ticket_id = '$ticket[id]' ) order by id asc)) limit 1")).'</td>


	

	
	
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="center">'.$admin->description($row , $tblname).'&nbsp;&nbsp;
    ';
    if ($row['status'] != 'استفاده شده')
    {
    	echo '
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
