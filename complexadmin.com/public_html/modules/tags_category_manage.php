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
<b class="bx">مدیریت گروه تگ ها : </b>
<div class="co">
<?PHP
$tblname = 'tags_category';
$pagCo = 20;
$url = 'tags_category_manage';
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

<script src="inc/jscolor.js"></script>
<script type="text/javascript">
  function vax(name)
  {
    if ($("#"+name+"_ch").is(":checked"))
    {
      $("#"+name+"_in").removeAttr('disabled');
      $("#"+name+"_in").val('');
    }
    else
    {
      $("#"+name+"_in").attr('disabled' , 'disabled');
    }
  }

  function vaxt()
  {

    if ($("input[name=type]:checked").val() == 'پرسنل')
    {
      $("#discount").attr('disabled' , 'disabled');
    }
    else
    {
      $("#discount").removeAttr('disabled');
    }
  }

  function validate()
  {
    if ($('#mens_count').val().parseInt() >= 1 || $('#womens_count').val().parseInt() >= 1 || $('#frees_count').val().parseInt() >= 1 )
    {
      return true;
    }
    else
    {
      alert("حداقل مقدار صحیح نیست");
      return false;
    }
  }
</script>
<?PHP
				echo '
				


				<form method="post" action="" enctype="multipart/form-data" onsubmit="return validate()">
				<input type="hidden" name="post" />
				
				<table cellpadding="2">
				 <tr>
				    <td>نام گروه : </td>
				    <td><input type="text" name="name" class="input-t" size="40" required value="'.$editrow['name'].'"></td>
				  </tr>
				  <tr>
				    <td>نام رنگ : </td>
				    <td><input type="text" name="color_name" class="input-t" required value="'.$editrow['color_name'].'"></td>
				  </tr>
				  <tr>
				    <td>انتخاب رنگ : </td>
				    <td><input type="text" name="color_code" class="color input-t" dir="ltr" required value="'.$editrow['color_code'].'"></td>
				  </tr>
				  <tr>
				    <td>گرویی تگ : </td>
				    <td><input type="text" name="pledge" class="input-t" required dir="ltr" onkeydown="return ( event.ctrlKey || event.altKey 
				                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
				                    || (95<event.keyCode && event.keyCode<106)
				                    || (event.keyCode==8) || (event.keyCode==9) 
				                    || (event.keyCode>34 && event.keyCode<40) 
				                    || (event.keyCode==46) )" value="'.$editrow['pledge'].'"> تومان</td>
				  </tr>
				  <tr>
				    <td>برای : </td>
				    <td>';
					$s[$editrow['type']] = 'checked="checked"';
					echo '<label><input type="radio" name="type" value="مهمان" '.$s['مهمان'].' onchange="vaxt()"> مهمان</label> <label><input type="radio" name="type" value="پرسنل" onchange="vaxt()" '.$s['پرسنل'].'> پرسنل</label></td>
				  </tr>

				  <tr>
				    <td>&nbsp;</td>
				    <td><label style="width: 60px; display: inline-block;"><input type="checkbox" name="mens" '.($editrow['mens'] == 'on' ? 'checked="checked"' : '').' id="mens_ch" onchange="vax(\'mens\')"> آقا : </label> <input type="text" name="mens_count" class="input-t" dir="ltr" required onkeydown="return ( event.ctrlKey || event.altKey 
				                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
				                    || (95<event.keyCode && event.keyCode<106)
				                    || (event.keyCode==8) || (event.keyCode==9) 
				                    || (event.keyCode>34 && event.keyCode<40) 
				                    || (event.keyCode==46) )" '.($editrow['mens'] == 'on' ? '' : 'disabled="disabled"').' id="mens_in" value="'.$editrow['mens_count'].'"></td>
				  </tr>
				  
				  <tr>
				    <td>&nbsp;</td>
				    <td><label style="width: 60px; display: inline-block;"><input type="checkbox" name="womens" '.($editrow['womens'] == 'on' ? 'checked="checked"' : '').' id="womens_ch" onchange="vax(\'womens\')"> خانم : </label> <input type="text" name="womens_count" class="input-t" dir="ltr" required onkeydown="return ( event.ctrlKey || event.altKey 
				                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
				                    || (95<event.keyCode && event.keyCode<106)
				                    || (event.keyCode==8) || (event.keyCode==9) 
				                    || (event.keyCode>34 && event.keyCode<40) 
				                    || (event.keyCode==46) )" '.($editrow['womens'] == 'on' ? '' : 'disabled="disabled"').' id="womens_in" value="'.$editrow['womens_count'].'"></td>
				  </tr>
				  
				  <tr>
				    <td>&nbsp;</td>
				    <td><label style="width: 60px; display: inline-block;"><input type="checkbox" name="frees" '.($editrow['frees'] == 'on' ? 'checked="checked"' : '').' id="frees_ch" onchange="vax(\'frees\')"> آزاد : </label> <input type="text" name="frees_count" class="input-t" dir="ltr" required onkeydown="return ( event.ctrlKey || event.altKey 
				                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
				                    || (95<event.keyCode && event.keyCode<106)
				                    || (event.keyCode==8) || (event.keyCode==9) 
				                    || (event.keyCode>34 && event.keyCode<40) 
				                    || (event.keyCode==46) )" '.($editrow['frees'] == 'on' ? '' : 'disabled="disabled"').' id="frees_in" value="'.$editrow['frees_count'].'"></td>
				  </tr>
				  <tr>
				    <td>تخفیف تگ : </td>
				    <td><input type="text" name="discount" id="discount" class="input-t" required dir="ltr" onkeydown="return ( event.ctrlKey || event.altKey 
				                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
				                    || (95<event.keyCode && event.keyCode<106)
				                    || (event.keyCode==8) || (event.keyCode==9) 
				                    || (event.keyCode>34 && event.keyCode<40) 
				                    || (event.keyCode==46) )" value="'.$editrow['discount'].'"> تومان</td>
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
						<td><label><input type="checkbox" name="only_admin" '.($editrow['only_admin'] == 'on' ? 'checked=checked' : '').'>اجازه ثبت فقط توسط مدیر </label></td>
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
				
				$updsql = $admin->sql("update $tblname set suid = '".SUID."' ,name = '$_POST[name]' , color_name = '$_POST[color_name]' , color_code = '$_POST[color_code]' , pledge = '$_POST[pledge]' , type = '$_POST[type]' , mens = '$_POST[mens]' , mens_count = '$_POST[mens_count]' , womens = '$_POST[womens]' , womens_count = '$_POST[womens_count]' , frees = '$_POST[frees]' , frees_count = '$_POST[frees_count]' , discount = '$_POST[discount]' , description = '$_POST[description]' , only_admin = '$_POST[only_admin]' where id = '$_GET[id]' limit 1");
				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				$admin->LOG('مدیریت گروه تگ ها - ویرایش ' , $msg);
			}
		break;
	}
}


?>
<center>
<form method="post" action="">
جستجو بر اساس نام گروه تگ : <input type="text" name="search" class="input-t" size="45" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
</form>
</center>
<br /><br />
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center"><a href="index.php?do=<?=$url?>&sort=id&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">#</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=name&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">نام گروه تگ</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=type&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">نوع تگ</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=color_name&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">رنگ</a></td>
    <td align="center">رنگ</td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=pledge&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">گرویی</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=mens_count&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">آقا</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=womens_count&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">خانم</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=frees_count&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">آزاد</a></td>
    <td align="center">مجموع</td>
    <td align="center">گرویی کل</td>
    <td align="center">دارایی</td>
    <td align="center">اجازه ثبت</td>
    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
    <td width="130" align="center">ابزار</td>
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
	if (isset($_GET['sort']))
	{
		$sql = $admin->sql("select * from $tblname order by $_GET[sort] $_GET[type] limit $start,$pagCo");
	}
	else
	{
		$sql = $admin->sql("select * from $tblname order by id desc limit $start,$pagCo");
	}
}


$exec = '';
$x = isset($start) ? $start+1 : 1;

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
    <td bgcolor="#d1d1d1" align="center">'.$x.'</td>
	<td align="center">'.$row['name'].'</td>
	<td align="center">'.$row['type'].'</td>
	<td align="center">'.$row['color_name'].'</td>
	<td align="center" style="background:'.$row['color_code'].'">&nbsp;</td>
	<td align="center">'.@number_format($row['pledge']).' تومان</td>
	<td align="center">'.$row['mens_count'].'</td>
	<td align="center">'.$row['womens_count'].'</td>
	<td align="center">'.$row['frees_count'].'</td>
	<td align="center">'.($row['mens_count'] + $row['womens_count'] + $row['frees_count']).'</td>
	<td align="center">'.@number_format(($row['mens_count'] + $row['womens_count'] + $row['frees_count']) * $row['pledge']).' تومان</td>
	<td align="center">';

	$count_tags = $admin->sql("select count(*) as cnt from tags where(category_id = '$row[id]')");
	$count_tags_row = $admin->row($count_tags);
	echo $count_tags_row['cnt'];

	echo '</td>
	<td align="center">'.($row['only_admin'] == 'on' ? 'فقط مدیر' : 'همه کاربران').'</td>
	
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="center">'.$admin->description($row , $tblname).'&nbsp;&nbsp;
    ';

	$count_active_tags = $admin->sql("select count(*) as cnt from tags where(category_id = '$row[id]' and status = 'active')");
	$count_active_tags_cnt = $admin->row($count_active_tags);

	if ($count_active_tags_cnt['cnt'] == 0 or true)
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
