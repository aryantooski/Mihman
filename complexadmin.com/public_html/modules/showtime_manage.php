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
<b class="bx">مدیریت سانس ها : </b>
<div class="co">
<?PHP
$tblname = 'showtime';
$pagCo = 20;
$url = 'showtime_manage';
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
			$admin->LOG('مدیریت سانس ها - حذف سانس' , $msg);
		break;
		
		case 'archive' :
			$remsql = $admin->sql("update $tblname set archive = 1 where id = '$_GET[id]' limit 1");
			
			if ($remsql)
			{
				$admin->sql("update ticket set archive = 1 where showtime_id = '$_GET[id]'");

				$msg = "آرشیو انجام شد"; echo $admin->msg($msg , "true");
				echo '<meta http-equiv="refresh" content="0;URL=/index.php?do=archive_showtimes">';
			}
			else
			{
				$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
			}
			$admin->LOG('مدیریت سانس ها - آرشیو سانس' , $msg);
		break;
		
		case 'edit' :
			if (isset($_POST['post']))
			{
				if ($_POST['شنبه'] == 'on') {$days .= 'شنبه,';}
				if ($_POST['یکشنبه'] == 'on') {$days .= 'یکشنبه,';}
				if ($_POST['دوشنبه'] == 'on') {$days .= 'دوشنبه,';}
				if ($_POST['سه_شنبه'] == 'on') {$days .= 'سه شنبه,';}
				if ($_POST['چهار_شنبه'] == 'on') {$days .= 'چهار شنبه,';}
				if ($_POST['پنج_شنبه'] == 'on') {$days .= 'پنج شنبه,';}
				if ($_POST['جمعه'] == 'on') {$days .= 'جمعه,';}
				
				$days = substr($days , 0 , strlen($days) - 1);
  $_POST['start_minute'] = strlen($_POST['start_minute']) == 1 ? '0'.$_POST['start_minute'] : $_POST['start_minute'];
  $_POST['start_hour'] = strlen($_POST['start_hour']) == 1 ? '0'.$_POST['start_hour'] : $_POST['start_hour'];
  $_POST['end_minute'] = strlen($_POST['end_minute']) == 1 ? '0'.$_POST['end_minute'] : $_POST['end_minute'];
  $_POST['end_hour'] = strlen($_POST['end_hour']) == 1 ? '0'.$_POST['end_hour'] : $_POST['end_hour'];
  
  $type = $_POST['type1'].','.$_POST['type2'].','.$_POST['type3'].','.$_POST['type4'];

				$updsql = $admin->sql("update $tblname set mode = '$_POST[mode]' , type = '$type' , name = '$_POST[name]' , price = '$_POST[price]' , capacity = '$_POST[capacity]' , sale_limit = '$_POST[sale_limit]' , start_date = '".str_replace('/' , '-' , $_POST['start_date'])."' , start_minute = '$_POST[start_minute]' , start_hour = '$_POST[start_hour]' , end_date = '".str_replace('/' , '-' , $_POST['end_date'])."' , end_minute = '$_POST[end_minute]' , end_hour = '$_POST[end_hour]' , description = '$_POST[description]' , use_coupon = '$_POST[use_coupon]' , return_time_limit = '$_POST[return_time_limit]' , return_damage_percent = '$_POST[return_damage_percent]' where id = '$_GET[id]' limit 1");
				
				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				$admin->LOG('مدیریت سانس ها - ویرایش سانس' , $msg);
			}
			
				$editsql = $admin->sql("select * from $tblname where id = '$_GET[id]' limit 1");
				$editrow = $admin->row($editsql);
				
				echo '
				
';?>
<script type="text/javascript">
function validate()
{
  var start_date = document.getElementById('start_date').value.split('-');
  var end_date = document.getElementById('end_date').value.split('-');

  if (parseInt(end_date[0]) > parseInt(start_date[0]))
  {
    return true;
  }
  else if (parseInt(end_date[0]) == parseInt(start_date[0]))
  {
    if (parseInt(end_date[1]) > parseInt(start_date[1]))
    {
      return true;
    }
    else if (parseInt(end_date[1]) == parseInt(start_date[1]))
    {
      if (parseInt(end_date[2]) > parseInt(start_date[2]))
      {
        return true;
      }
      else if (parseInt(end_date[2]) == parseInt(start_date[2]))
      {
        if (parseInt(document.getElementById('end_hour').value) > parseInt(document.getElementById('start_hour').value))
        {
          return true;
        }
        else if (parseInt(document.getElementById('end_hour').value) == parseInt(document.getElementById('start_hour').value))
        {
          if (parseInt(document.getElementById('end_minute').value) > parseInt(document.getElementById('start_minute').value))
          {
            return true;
          }
          else if (parseInt(document.getElementById('end_minute').value) == parseInt(document.getElementById('start_minute').value))
          {
            
          }
        }
      }
    }
  }

  alert('تاریخ پایان باید بعد از تاریخ شروع باشد');
  return false;
}
</script>








<?PHP
/*
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center">#</td>
    <td align="center">عنوان</td>
    <td align="center">ظرفیتx</td>
    <td align="center">آغاز</td>
    <td align="center">پایان</td>
    <td align="center">توضیحات</td>
    <td align="center">ورود مجاز</td>
    <td align="center">کل بلیط</td>
    <td align="center">بلیط فعال</td>
    <td align="center">بلیط مرجوع</td>
    <td align="center">بلیط ابطالی</td>
    <td align="center">بلیط تاریخ گذشته</td>
    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
    <td width="130" align="center">ابزار</td>
  </tr>
<?PHP

$sql = $admin->sql("select * from $tblname where (id = '$_GET[id]')");


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
	
	
	echo '
  <tr height="25" bgcolor="'.$color.'" class="tblrow">
    <td bgcolor="#d1d1d1" align="center">'.$row['id'].'</td>
	<td align="center">'.$row['name'].'</td>
	<td align="center">'.$row['capacity'].' نفر</td>
	<td align="center" dir="ltr">'.$row['start_date'].' '.$row['start_hour'].':'.$row['start_minute'].'</td>
	<td align="center" dir="ltr">'.$row['end_date'].' '.$row['end_hour'].':'.$row['end_minute'].'</td>
	<td align="center">'.$row['description'].'</td>
	<td align="center">';

	echo stripos($row['type'], 'مهمان آقا') !== false ? '<img src="images/1.png">' : '';
	echo stripos($row['type'], 'مهمان خانم') !== false ? '<img src="images/2.png">' : '';
	echo stripos($row['type'], 'پرسنل آقا') !== false ? '<img src="images/3.png">' : '';
	echo stripos($row['type'], 'پرسنل خانم') !== false ? '<img src="images/4.png">' : '';


	echo '</td>
	<td align="center">'.$admin->result($admin->sql("select count(*) from ticket where showtime_id = '$row[id]' ") , 0).'</td>
	<td align="center">'.$admin->result($admin->sql("select count(*) from ticket where (status = 'فعال' and showtime_id = '$row[id]') ") , 0).'</td>
	<td align="center">'.$admin->result($admin->sql("select count(*) from ticket where (status = 'مرجوع' and showtime_id = '$row[id]') ") , 0).'</td>
	<td align="center">'.$admin->result($admin->sql("select count(*) from ticket where (status = 'ابطال' and showtime_id = '$row[id]') ") , 0).'</td>
	<td align="center">'.$admin->result($admin->sql("select count(*) from ticket where (time_finish <= '$now' and showtime_id = '$row[id]') ") , 0).'</td>
	
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="center">
	<a href="index.php?do='.$url.'&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do='.$url.'&op=remove&id='.$row['id'].'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a onclick="return confirm(\'آیا سانس آرشیو شود ؟ \')" href="index.php?do='.$url.'&op=archive&id='.$row['id'].'"><img src="images/archive.png" border="0" alt="آرشیو" title="آرشیو" align="texttop"></a>
	</td>
  </tr>
	';
	
	$x++;
}

if (mysqli_num_rows($sql) == 0)
	echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=15>متاسفانه نتیجه ای یافت نشد</td></tr>';


?>
</table>


<br><br><br>
				*/ 

			
				$active = $admin->result($admin->sql("select count(*) from ticket where (status = 'فعال' and showtime_id = '$editrow[id]') ") , 0);

				echo '
				<fieldset class="showtime_view">
					<legend>'.$editrow['name'].'</legend>

					<table cellspacing="0" cellpadding="4" border="1" bordercolor="#FFFFFF" style="color:#069" width="100%">
						<tr>
						'; /*
							<td width="70" bgcolor="#88b3c9" style="color:#FFFFFF">ظرفیت : </td>
							<td width="80" align="center" bgcolor="#e2f5ff">'.$editrow['capacity'].' نفر</td>
							*/ echo '
							<td width="120" bgcolor="#88b3c9" style="color:#FFFFFF">ظرفیت باقی مانده : </td>
							<td width="80" align="center" bgcolor="#e2f5ff">'.($editrow['capacity'] - $active).' نفر</td>
							<td width="80" bgcolor="#88b3c9" style="color:#FFFFFF">کل بلیط : </td>
							<td width="80" align="center" bgcolor="#e2f5ff">'.$admin->result($admin->sql("select count(*) from ticket where showtime_id = '$editrow[id]' ") , 0).'</td>
							<td width="80" bgcolor="#88b3c9" style="color:#FFFFFF">بلیط فعال : </td>
							<td width="80" align="center" bgcolor="#e2f5ff">'.$active.'</td>

							<td width="80" bgcolor="#88b3c9" style="color:#FFFFFF">بلیط مرجوع : </td>
							<td width="80" align="center" bgcolor="#e2f5ff">'.$admin->result($admin->sql("select count(*) from ticket where (status = 'مرجوع' and showtime_id = '$editrow[id]') ") , 0).'</td>
							<td width="80" bgcolor="#88b3c9" style="color:#FFFFFF">بلیط ابطالی : </td>
							<td width="80" align="center" bgcolor="#e2f5ff">'.$admin->result($admin->sql("select count(*) from ticket where (status = 'ابطال' and showtime_id = '$editrow[id]') ") , 0).'</td>
							<td width="120" bgcolor="#88b3c9" style="color:#FFFFFF">بلیط تاریخ گذشته : </td>
							<td align="center" bgcolor="#e2f5ff" dir=ltr>';
							
							if ($admin->jdate_to_stamp($editrow['end_date'].' '.$editrow['end_hour'].':'.$editrow['end_minute'].':00') < time()) // showtime expired
							{
								echo $admin->result($admin->sql("select count(*) from ticket where (tag_id = 0 and showtime_id = '$editrow[id]'  ) ") , 0);
							}
							else
							{
								echo '0';
							}

							echo '</td>
						</tr>
					</table>

				</fieldset>

				';
				
				echo '
				<form method="post" action="" enctype="multipart/form-data" onsubmit="return validate()">
				<input type="hidden" name="post" />
				
				<table cellpadding="2">
				  <tr>
						<td>نوع سانس : </td>
						<td><select name="mode" class="input-s" required>
						<option value="">انتخاب کنید</option>
						<option value="آزاد" '.($editrow['mode'] == 'آزاد' ? 'selected=selected' : '').'>آزاد</option>
						<option value="ویژه مهمانان" '.($editrow['mode'] == 'ویژه مهمانان' ? 'selected=selected' : '').'>ویژه مهمانان</option>
						</select></td>
					</tr>
				  <tr>
					<td>ورود مجاز : </td>
					<td>
					';
					
					echo '
					
    <label><input type="checkbox" name="type1" '.(stripos($editrow['type'], 'مهمان آقا') !== false ? 'checked' : '').' value="مهمان آقا">مهمان آقا</label>
    <label><input type="checkbox" name="type2" '.(stripos($editrow['type'], 'مهمان خانم') !== false ? 'checked' : '').' value="مهمان خانم">مهمان خانم</label>
    <label><input type="checkbox" name="type3" '.(stripos($editrow['type'], 'پرسنل آقا') !== false ? 'checked' : '').' value="پرسنل آقا">پرسنل آقا</label>
    <label><input type="checkbox" name="type4" '.(stripos($editrow['type'], 'پرسنل خانم') !== false ? 'checked' : '').' value="پرسنل خانم">پرسنل خانم</label>

					</td>
				  </tr>
				  <tr>
					<td>عنوان : </td>
					<td><input type="text" name="name" class="input-t" size="40" value="'.$editrow['name'].'" /></td>
				  </tr>

				  <tr>
				    <td>ورودی : </td>
				    <td><input type="text" name="price" class="input-t" dir="ltr" value="'.$editrow['price'].'" required onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )"> تومان</td>
				  </tr>
				  <tr>
				    <td>ظرفیت : </td>
				    <td><input type="text" name="capacity" class="input-t" dir="ltr" value="'.$editrow['capacity'].'" required onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )"> نفر</td>
				  </tr>
				  <tr>
				    <td>محدودیت فروش : </td>
				    <td><input type="text" name="sale_limit" class="input-t" dir="ltr" value="'.$editrow['sale_limit'].'" required onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )"> نفر</td>
				  </tr>

				  <tr>
					<td>زمان شروع : </td>
					<td>
					'.$admin->select_number(0 , 59 , 'start_minute' , $editrow['start_minute']) . ' : ' . $admin->select_number(0 , 23 , 'start_hour' , $editrow['start_hour']).'
					<input type="text" name="start_date" id="start_date" class="input-t" value="'.$editrow['start_date'].'" dir="ltr">
					</td>
				  </tr>
				  <tr>
					<td>زمان پایان : </td>
					<td>
					'.$admin->select_number(0 , 59 , 'end_minute' , $editrow['end_minute']) . ' : ' . $admin->select_number(0 , 23 , 'end_hour' , $editrow['end_hour']).'
					<input type="text" name="end_date" id="end_date" class="input-t" value="'.$editrow['end_date'].'" dir="ltr">
					</td>
				  </tr>
				  <tr>
				    <td>تخفیف : </td>
				    <td><label><input type="checkbox" name="use_coupon" '.($editrow['use_coupon'] == 'on' ? 'checked="checked"' : '').'> قابلیت استفاده از گیفت کارت </label></td>
				  </tr>
				  	<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>زمان مجاز مرجوعی : </td>
						<td><input type="text" name="return_time_limit" class="input-t" dir="ltr" value="'.$editrow['return_time_limit'].'" size="4"> دقیقه</td>
					</tr>
					<tr>
						<td>مبلغ خسارت : </td>
						<td><input type="text" name="return_damage_percent" class="input-t" dir="ltr" value="'.$editrow['return_damage_percent'].'" size="4"> درصد</td>
					</tr>
				  <tr>
					<td>توضیحات : </td>
					<td><textarea name="description" class="input-s" style="width:300px;">'.$editrow['description'].'</textarea></td>
				  </tr>
				  <tr>
					<td>&nbsp;</td>
					<td><input type="submit" value="تایید" class="input-b" /></td>
				  </tr>
				</table>
				
				</form>
				<div style="border:1px solid #e1e1e1; margin-top:20px; margin-bottom:20px;"></div>';

				if (isset($_POST['part']))
				{
					if ($_POST['part'] == 'temp_part')
					{
						$_POST['mens_amount'] = str_replace(',', '', $_POST['mens_amount']);
						$_POST['womens_amount'] = str_replace(',', '', $_POST['womens_amount']);

						$sql = $admin->sql("insert into temp_part set showtime_id = '$_GET[id]' , suid = '".SUID."' , name = '$_POST[name]' , mens_check = '$_POST[mens_check]' , womens_check = '$_POST[womens_check]' , mens_personel_check = '$_POST[mens_personel_check]' , womens_personel_check = '$_POST[womens_personel_check]' , mens_amount = '$_POST[mens_amount]' , womens_amount = '$_POST[womens_amount]' , income_ip = '$_POST[income_ip]' , income_port = '$_POST[income_port]' , output_ip = '$_POST[output_ip]' , output_port = '$_POST[output_port]' , description = '$_POST[description]' , datetime = '".$admin->time('Y-m-d H:i:s')."' , only_admin = '$_POST[only_admin]' ");
						if  ($sql)
						{
							$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
						}
						else
						{
							$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
						}

						$admin->LOG('بخش موقت جدید' , $msg);
					}
					else
					{
						$sql = $admin->sql("insert into showtime_part set showtime_id = '$_GET[id]' , part_id = '$_POST[part_id]' , type = 'continual' ");
						if  ($sql)
						{
							$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
						}
						else
						{
							$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
						}
						
						$admin->LOG('افزودن بخش به سانس' , $msg);
					}
					
				}

				if (isset($_POST['tags_category']))
				{
					$sql = $admin->sql("insert into showtime_tagscategory set showtime_id = '$_GET[id]' , tags_category_id = '$_POST[tags_category_id]' ");
					if  ($sql)
					{
						$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
					}
					else
					{
						$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
					}
					
					$admin->LOG('افزودن گروه تگ به سانس' , $msg);
				}

				if (isset($_POST['closet_category_name']))
				{
					$sql = $admin->sql("insert into showtime_closet_category set showtime_id = '$_GET[id]' , cname = '$_POST[closet_category_name]' ");
					if  ($sql)
					{
						$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
					}
					else
					{
						$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
					}
					
					$admin->LOG('افزودن گروه تگ به سانس' , $msg);
				}

				if (isset($_GET['sop']) and $_GET['sop'] == 'remove_tags_category')
				{
					$sql = $admin->sql("delete from showtime_tagscategory where (showtime_id = '$_GET[id]' and tags_category_id = '$_GET[sid]') limit 1 ");
					if  ($sql)
					{
						$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
					}
					else
					{
						$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
					}
					
					$admin->LOG('حذف گروه تگ به سانس' , $msg);
				}

				if (isset($_GET['sop']) and $_GET['sop'] == 'remove_part')
				{
					$sql = $admin->sql("delete from showtime_part where (showtime_id = '$_GET[id]' and part_id = '$_GET[sid]') limit 1 ");
					if  ($sql)
					{
						$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
					}
					else
					{
						$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
					}
					
					$admin->LOG('حذف بخش به سانس' , $msg);
				}
				
				if (isset($_GET['sop']) and $_GET['sop'] == 'remove_temp_part')
				{
					$sql = $admin->sql("delete from temp_part where (showtime_id = '$_GET[id]' and id = '$_GET[sid]') limit 1 ");
					if  ($sql)
					{
						$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
					}
					else
					{
						$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
					}
					
					$admin->LOG('حذف بخش موقت به سانس' , $msg);
				}
				
				if (isset($_GET['sop']) and $_GET['sop'] == 'remove_closet_category')
				{
					$sql = $admin->sql("delete from showtime_closet_category where (showtime_id = '$_GET[id]' and id = '$_GET[sid]') limit 1 ");
					if  ($sql)
					{
						$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
					}
					else
					{
						$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
					}
					
					$admin->LOG('حذف بخش موقت به سانس' , $msg);
				}
				


				if (isset($_GET['sop']) and $_GET['sop'] == 'item_default')
				{
					$sql = $admin->sql("update showtime_part set item_default = '$_GET[sub]' where (showtime_id = '$_GET[id]' and part_id = '$_GET[sid]') limit 1 ");
					if  ($sql)
					{
						$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
					}
					else
					{
						$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
					}
					
					$admin->LOG('تغییر وضعیت پیشفرض بخش بلیط' , $msg);
				}
				
				if (isset($_GET['sop']) and $_GET['sop'] == 'item_lock')
				{
					$sql = $admin->sql("update showtime_part set item_lock = '$_GET[sub]' where (showtime_id = '$_GET[id]' and part_id = '$_GET[sid]') limit 1 ");
					if  ($sql)
					{
						$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
					}
					else
					{
						$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
					}
					
					$admin->LOG('تغییر وضعیت قفل کردن بخش بلیط' , $msg);
				}

				if (isset($_GET['sop']) and $_GET['sop'] == 'temp_default')
				{
					$sql = $admin->sql("update temp_part set item_default = '$_GET[sub]' where (showtime_id = '$_GET[id]' and id = '$_GET[sid]') limit 1 ");
					if  ($sql)
					{
						$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
					}
					else
					{
						$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
					}
					
					$admin->LOG('تغییر وضعیت پیشفرض بخش بلیط' , $msg);
				}
				
				if (isset($_GET['sop']) and $_GET['sop'] == 'temp_lock')
				{
					$sql = $admin->sql("update temp_part set item_lock = '$_GET[sub]' where (showtime_id = '$_GET[id]' and id = '$_GET[sid]') limit 1 ");
					if  ($sql)
					{
						$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
					}
					else
					{
						$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
					}
					
					$admin->LOG('تغییر وضعیت قفل کردن بخش بلیط' , $msg);
				}

				if (isset($_REQUEST['tab']))
				{
					$tab = $_REQUEST['tab'];
				}
				else
				{
					$tab = 'continual';
				}

				echo '<style>';
				switch ($tab)
				{
					case 'temp' :
						echo '
						.tabone {display:none;}
						.tab_2 {display:block;}
						';
					break;

					case 'tags' :
						echo '
						.tabone {display:none;}
						.tab_3 {display:block;}
						';
					break;

					case 'closet' :
						echo '
						.tabone {display:none;}
						.tab_4 {display:block;}
						';
					break;
				}
				echo '</style>';
				?>


<link rel="stylesheet" href="jalalijscalendar/skins/calendar-blue.css">
<script src="jalalijscalendar/jalali.js"></script>
<script src="jalalijscalendar/calendar.js"></script>
<script src="jalalijscalendar/calendar-setup.js"></script>
<script src="jalalijscalendar/lang/calendar-fa.js"></script>


<script>

  Calendar.setup({
    inputField: 'start_date',
    ifFormat: '%Y-%m-%d',
    dateType: 'jalali',
    showOthers  : true,
    weekNumbers : true,

});
  Calendar.setup({
    inputField: 'end_date',
    ifFormat: '%Y-%m-%d',
    dateType: 'jalali',
    showOthers  : true,
    weekNumbers : true,

});
</script>
				<script type="text/javascript">
					function show_tab(id)
					{
						$(".tab_content .tabone").css("display" , "none");
						$(".tab_content .tab_"+id).css("display" , "block");

						$(".tabsx li a").removeClass("active");
						$(".head_"+id).addClass("active");
					}
				</script>
				<ul class="tabsx">
					<li><a href="javascript:void(0)" class="head_1 <?PHP if ($tab == 'continual') {echo 'active';} ?>" onclick="show_tab(1)">بخش ها</a></li>
					<?PHP /*<li><a href="javascript:void(0)" class="head_2 <?PHP if ($tab == 'temp') {echo 'active';} ?>" onclick="show_tab(2)">بخش موقت</a></li>*/ ?>
					<li><a href="javascript:void(0)" class="head_3 <?PHP if ($tab == 'tags') {echo 'active';} ?>" onclick="show_tab(3)">تگها</a></li>
					<li><a href="javascript:void(0)" class="head_4 <?PHP if ($tab == 'closet') {echo 'active';} ?>" onclick="show_tab(4)">کمد</a></li>
				</ul>
				<div class="cls"></div>
				<div class="tab_content">
					<div class="tabone tab_1">
						
						<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
						  <tr bgcolor="#cccccc" height="30">
						    <td width="40" align="center">#</td>
						    <td align="center">نام بخش</td>
						    <td align="center">گیت های ورودی</td>
						    <td align="center">گیت های خروجی</td>
						    <td align="center"><img src="images/1.png"></td>
						    <td align="center"><img src="images/2.png"></td>
						    <td align="center"><img src="images/3.png"></td>
						    <td align="center"><img src="images/4.png"></td>
						    <td align="center">اجازه ثبت</td>

						    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
						    <td width="170" align="center">ابزار</td>
						  </tr>
						<?PHP


						$exec = '';
						$x = 1;

						$now = substr($admin->true_time() , 0 , 10);
						$type = array('مهمان آقا' => '1' , 'مهمان خانم' => '2' , 'پرسنل آقا' => '3' , 'پرسنل خانم' => '4');


						$sql = $admin->sql("select * from part where (id IN(select part_id from showtime_part where (showtime_id = '$_GET[id]' and type = 'continual'))) order by id desc");

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
							<td align="center">'.$admin->ip_list('income' , 'part' , $row).'</td>
							<td align="center">'.$admin->ip_list('output' , 'part' , $row).'</td>
							<td align="center">'.($row['mens_check'] == 'on' ? number_format($row['mens_amount']).' تومان' : '<img src="images/no.jpg">').'</td>
							<td align="center">'.($row['womens_check'] == 'on' ? number_format($row['womens_amount']).' تومان' : '<img src="images/no.jpg">').'</td>
							<td align="center">'.($row['mens_personel_check'] == 'on' ? '<img src="images/yes.jpg">' : '<img src="images/no.jpg">').'</td>
							<td align="center">'.($row['womens_personel_check'] == 'on' ? '<img src="images/yes.jpg">' : '<img src="images/no.jpg">').'</td>
							<td align="center">'.($row['only_admin'] == 'on' ? 'فقط مدیر' : 'همه کاربران').'</td>
							'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
						    <td align="center">'.$admin->description($row , 'part').'&nbsp;&nbsp;
								
								';
								if ($admin->sql("select item_default from showtime_part where (showtime_id = '$_GET[id]' and part_id = '$row[id]') limit 1")->fetch_object()->item_default == 1)
								{
									echo '<a href="index.php?do=showtime_manage&op=edit&id='.$_GET['id'].'&sop=item_default&sub=0&sid='.$row['id'].'&tab=continual"><img src="images/star_enable.png" border="0" alt="پیشفرض کردن" title="پیشفرض کردن" align="texttop"></a>';
								}
								else
								{
									echo '<a href="index.php?do=showtime_manage&op=edit&id='.$_GET['id'].'&sop=item_default&sub=1&sid='.$row['id'].'&tab=continual"><img src="images/star_disable.png" border="0" alt="پیشفرض کردن" title="پیشفرض کردن" align="texttop"></a>';
								}

								echo '&nbsp;&nbsp;';

								if ($admin->sql("select item_lock from showtime_part where (showtime_id = '$_GET[id]' and part_id = '$row[id]') limit 1")->fetch_object()->item_lock == 1)
								{
									echo '<a href="index.php?do=showtime_manage&op=edit&id='.$_GET['id'].'&sop=item_lock&sub=0&sid='.$row['id'].'&tab=continual"><img src="images/lock.png" border="0" alt="قفل کردن" title="قفل کردن" align="texttop"></a>';
								}
								else
								{
									echo '<a href="index.php?do=showtime_manage&op=edit&id='.$_GET['id'].'&sop=item_lock&sub=1&sid='.$row['id'].'&tab=continual"><img src="images/unlock.png" border="0" alt="قفل کردن" title="قفل کردن" align="texttop"></a>';
								}
								
								echo '
								
								&nbsp;&nbsp;
								<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do=showtime_manage&op=edit&id='.$_GET['id'].'&sop=remove_part&sid='.$row['id'].'&tab=continual"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
							</td>
						  </tr>
							';
							//<a href="index.php?do=part_manage&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							$x++;
						}

						$sql = $admin->sql("select * from temp_part where (showtime_id = '$_GET[id]') order by id desc");

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
							<td align="center">موقت :‌ '.$row['name'].'</td>
							<td align="center">'.$row['income_ip'].':'.$row['income_port'].'</td>
							<td align="center">'.$row['output_ip'].':'.$row['output_port'].'</td>
							<td align="center">'.($row['mens_check'] == 'on' ? number_format($row['mens_amount']).' تومان' : '<img src="images/no.jpg">').'</td>
							<td align="center">'.($row['womens_check'] == 'on' ? number_format($row['womens_amount']).' تومان' : '<img src="images/no.jpg">').'</td>
							<td align="center">'.($row['mens_personel_check'] == 'on' ? '<img src="images/yes.jpg">' : '<img src="images/no.jpg">').'</td>
							<td align="center">'.($row['womens_personel_check'] == 'on' ? '<img src="images/yes.jpg">' : '<img src="images/no.jpg">').'</td>
							<td align="center">'.($row['only_admin'] == 'on' ? 'فقط مدیر' : 'همه کاربران').'</td>
							'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
						    <td align="center">'.$admin->description($row , 'temp_part').'&nbsp;&nbsp;
								
								';
								
								if ($admin->sql("select item_default from temp_part where (showtime_id = '$_GET[id]' and id = '$row[id]') limit 1")->fetch_object()->item_default == 1)
								{
									echo '<a href="index.php?do=showtime_manage&op=edit&id='.$_GET['id'].'&sop=temp_default&sub=0&sid='.$row['id'].'&tab=continual"><img src="images/star_enable.png" border="0" alt="پیشفرض کردن" title="پیشفرض کردن" align="texttop"></a>';
								}
								else
								{
									echo '<a href="index.php?do=showtime_manage&op=edit&id='.$_GET['id'].'&sop=temp_default&sub=1&sid='.$row['id'].'&tab=continual"><img src="images/star_disable.png" border="0" alt="پیشفرض کردن" title="پیشفرض کردن" align="texttop"></a>';
								}

								echo '&nbsp;&nbsp;';

								if ($admin->sql("select item_lock from temp_part where (showtime_id = '$_GET[id]' and id = '$row[id]') limit 1")->fetch_object()->item_lock == 1)
								{
									echo '<a href="index.php?do=showtime_manage&op=edit&id='.$_GET['id'].'&sop=temp_lock&sub=0&sid='.$row['id'].'&tab=continual"><img src="images/lock.png" border="0" alt="قفل کردن" title="قفل کردن" align="texttop"></a>';
								}
								else
								{
									echo '<a href="index.php?do=showtime_manage&op=edit&id='.$_GET['id'].'&sop=temp_lock&sub=1&sid='.$row['id'].'&tab=continual"><img src="images/unlock.png" border="0" alt="قفل کردن" title="قفل کردن" align="texttop"></a>';
								}
								
								//&nbsp;

								//<a href="index.php?do=tags_category_manage&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a>
								
								echo '
								

								&nbsp;&nbsp;

								<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do=showtime_manage&op=edit&id='.$_GET['id'].'&sop=remove_temp_part&sid='.$row['id'].'&tab=continual"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
							</td>
						  </tr>
							';
							$x++;
						}


						?>
						</table>

						<div id="temp_part_modal" class="modal fade" role="dialog">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title description_modal-title">افزودن بخش موقت</h4>
									</div>
									<div class="modal-body">
										<p>
											<form method="post" action="index.php?do=showtime_manage&op=edit&id=<?=$_GET['id']?>">
												<input type="hidden" name="part" value="temp_part">
												<table cellpadding="2">
													<tr>
														<td>نام بخش : </td>
														<td><input type="text" name="name" class="input-t" size="40" required></td>
													</tr>

													<tr>
														<td><label><input type="checkbox" name="mens_check">آقا : </label></td>
														<td>قیمت ورودی : <input type="text" name="mens_amount" class="input-t" dir="ltr" onkeydown="return ( event.ctrlKey || event.altKey 
															|| (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
															|| (95<event.keyCode && event.keyCode<106)
															|| (event.keyCode==8) || (event.keyCode==9) 
															|| (event.keyCode>34 && event.keyCode<40) 
															|| (event.keyCode==46) )" <?=NUMERAL?>> تومان</td>
													</tr>

													<tr>
														<td><label><input type="checkbox" name="womens_check">خانم : </label></td>
														<td>قیمت ورودی : <input type="text" name="womens_amount" class="input-t" dir="ltr" onkeydown="return ( event.ctrlKey || event.altKey 
															|| (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
															|| (95<event.keyCode && event.keyCode<106)
															|| (event.keyCode==8) || (event.keyCode==9) 
															|| (event.keyCode>34 && event.keyCode<40) 
															|| (event.keyCode==46) )" <?=NUMERAL?>> تومان</td>
													</tr>

													<tr>
														<td><label><input type="checkbox" name="mens_personel_check">پرسنل آقا </label></td>
														<td>&nbsp;</td>
													</tr>

													<tr>
														<td><label><input type="checkbox" name="womens_personel_check">پرسنل خانم </label></td>
														<td>&nbsp;</td>
													</tr>


													<tr>
														<td>IP دستگاه ورودی : </td>
														<td><input type="text" name="income_ip" class="input-t" dir="ltr" required> 
															پورت دستگاه ورودی : &nbsp;
															<input type="text" name="income_port" class="input-t" dir="ltr" required onkeydown="return ( event.ctrlKey || event.altKey 
																|| (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
																|| (95<event.keyCode && event.keyCode<106)
																|| (event.keyCode==8) || (event.keyCode==9) 
																|| (event.keyCode>34 && event.keyCode<40) 
																|| (event.keyCode==46) )"> </td>
													</tr>

													<tr>
														<td>IP دستگاه خروجی : </td>
														<td><input type="text" name="output_ip" class="input-t" dir="ltr" required> 
															پورت دستگاه خروجی : 
															<input type="text" name="output_port" class="input-t" dir="ltr" required onkeydown="return ( event.ctrlKey || event.altKey 
																|| (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
																|| (95<event.keyCode && event.keyCode<106)
																|| (event.keyCode==8) || (event.keyCode==9) 
																|| (event.keyCode>34 && event.keyCode<40) 
																|| (event.keyCode==46) )"> </td>
													</tr>


													<tr>
														<td>توضیحات : </td>
														<td><textarea name="description" class="input-s"  style="width:300px;"></textarea></td>
													</tr>


													<tr>
														<td>&nbsp;</td>
														<td>&nbsp;</td>
													</tr>



													<tr>
														<td>&nbsp;</td>
														<td><label><input type="checkbox" name="only_admin">اجازه ثبت فقط توسط مدیر </label></td>
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
										</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default pull-left" data-dismiss="modal">بستن</button>
									</div>
								</div>
							</div>
						</div>

						<br>
						<script type="text/javascript">
							function check_temp_part()
							{
								if ($('#part_id').val() == '0')
								{
									$("#temp_part_modal").modal();


									return false;
								}
							}
						</script>
						<form method="post" action="index.php?do=showtime_manage&op=edit&id=<?=$_GET['id']?>" onsubmit="return check_temp_part();">
							<input type="hidden" name="part" value="continual">
							<input type="hidden" name="tab" value="continual">
							انتخاب بخش : 
							<select name="part_id" id="part_id" class="input-s" required>
							    <option value="">انتخاب کنید</option>
							    <option value="0">بخش موقت روزانه</option>
							    <?PHP
							    $sql = $admin->sql("select * from part where (id NOT IN(select part_id from showtime_part where (showtime_id = '$_GET[id]' and type = 'continual'))) order by id desc");
							    while ($r = $admin->row($sql))
							    {
							      echo '<option value="'.$r['id'].'">'.$r['name'].'</option>';
							    }
							   	?>
							    </select>
							    <input type="submit" value="اضافه کن" class="input-b">
						</form>

					</div>
					<?PHP /*
					<div class="tabone tab_2">
						

						<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
						  <tr bgcolor="#cccccc" height="30">
						    <td width="40" align="center">#</td>
						    <td align="center">نام بخش</td>
						    <td align="center">گیت های ورودی</td>
						    <td align="center">گیت های خروجی</td>
						    <td align="center"><img src="images/1.png"></td>
						    <td align="center"><img src="images/2.png"></td>
						    <td align="center"><img src="images/3.png"></td>
						    <td align="center"><img src="images/4.png"></td>
						    <td align="center">توضیحات</td>
						    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
						    <td width="80" align="center">ابزار</td>
						  </tr>
						<?PHP
						$sql = $admin->sql("select * from part where (id IN(select part_id from showtime_part where (showtime_id = '$_GET[id]' and type = 'temp'))) order by id desc");

						$exec = '';
						$x = 1;

						$now = substr($admin->true_time() , 0 , 10);
						$type = array('مهمان آقا' => '1' , 'مهمان خانم' => '2' , 'پرسنل آقا' => '3' , 'پرسنل خانم' => '4');
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
							<td align="center">'.$row['income_ip'].':'.$row['income_port'].'</td>
							<td align="center">'.$row['output_ip'].':'.$row['output_port'].'</td>
							<td align="center">'.($row['mens_check'] == 'on' ? number_format($row['mens_amount']).' تومان' : '<img src="images/no.jpg">').'</td>
							<td align="center">'.($row['womens_check'] == 'on' ? number_format($row['womens_amount']).' تومان' : '<img src="images/no.jpg">').'</td>
							<td align="center">'.($row['mens_personel_check'] == 'on' ? '<img src="images/yes.jpg">' : '<img src="images/no.jpg">').'</td>
							<td align="center">'.($row['womens_personel_check'] == 'on' ? '<img src="images/yes.jpg">' : '<img src="images/no.jpg">').'</td>
							<td align="center">'.$row['description'].'</td>
							
							'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
						    <td align="center">
							
							<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do=showtime_manage&op=edit&id='.$_GET['id'].'&sop=remove_part&sid='.$row['id'].'&tab=temp"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
							</td>
						  </tr>
							';

							//<a href="index.php?do=part_manage&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
							$x++;
						}

						if (mysqli_num_rows($sql) == 0)
							echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=15>متاسفانه نتیجه ای یافت نشد</td></tr>';


						?>
						</table>

						<br>

						<form method="post" action="index.php?do=showtime_manage&op=edit&id=<?=$_GET['id']?>">
							<input type="hidden" name="part" value="temp">
							<input type="hidden" name="tab" value="temp">
							انتخاب بخش : 
							<select name="part_id" class="input-s" required>
							    <option value="">انتخاب کنید</option>
							    <?PHP
							    $sql = $admin->sql("select * from part where (id NOT IN(select part_id from showtime_part where (showtime_id = '$_GET[id]' and type = 'temp'))) order by id desc");
							    while ($r = $admin->row($sql))
							    {
							      echo '<option value="'.$r['id'].'">'.$r['name'].'</option>';
							    }
							   	?>
							    </select>
							    <input type="submit" value="اضافه کن" class="input-b">
						</form>


					</div>
					*/ ?>
					<div class="tabone tab_3">
						
						<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
						  <tr bgcolor="#cccccc" height="30">
						    <td width="40" align="center">#</td>
						    <td align="center">نام گروه تگ</td>
						    <td align="center">نوع تگ</td>
						    <td align="center">رنگ</td>
						    <td align="center">رنگ</td>
						    <td align="center">گرویی</td>
						    <td align="center">آقا</td>
						    <td align="center">خانم</td>
						    <td align="center">آزاد</td>
						    <td align="center">مجموع</td>
						    <td align="center">گرویی کل</td>
						    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
						    <td width="80" align="center">ابزار</td>
						  </tr>
						<?PHP

						$sql = $admin->sql("select * from tags_category where (id IN(select tags_category_id from showtime_tagscategory where (showtime_id = '$_GET[id]'))) order by id desc");

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
							
							
							echo '
						  <tr height="25" bgcolor="'.$color.'" class="tblrow">
						    <td bgcolor="#d1d1d1" align="center">'.$row['id'].'</td>
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
							
							'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
						    <td align="center">'.$admin->description($row , 'tags_category').'
							
							<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do=showtime_manage&op=edit&id='.$_GET['id'].'&sop=remove_tags_category&sid='.$row['id'].'&tab=tags"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
							</td>
						  </tr>
							';
							//<a href="index.php?do=tags_category_manage&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							$x++;
						}

						if (mysqli_num_rows($sql) == 0)
							echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=15>متاسفانه نتیجه ای یافت نشد</td></tr>';


						?>
						</table>

						<br>

						<form method="post" action="index.php?do=showtime_manage&op=edit&id=<?=$_GET['id']?>">
							<input type="hidden" name="tags_category" value="">
							<input type="hidden" name="tab" value="tags">
							انتخاب گروه تگ : 
							<select name="tags_category_id" class="input-s" required>
							    <option value="">انتخاب کنید</option>
							    <?PHP
							    $sql = $admin->sql("select * from tags_category where (id NOT IN(select tags_category_id from showtime_tagscategory where (showtime_id = '$_GET[id]'))) order by id desc");
							    while ($r = $admin->row($sql))
							    {
							      echo '<option value="'.$r['id'].'">'.$r['name'].'</option>';
							    }
							   	?>
							    </select>
							    <input type="submit" value="اضافه کن" class="input-b">
						</form>

					</div>

					<div class="tabone tab_4">
						

						<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
						  <tr bgcolor="#cccccc" height="30">
						    <td width="40" align="center">#</td>
						    <td align="center">گروه کمد</td>
						    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
						    <td width="80" align="center">ابزار</td>
						  </tr>
						<?PHP
						$sql = $admin->sql("select * from showtime_closet_category where (showtime_id = '$_GET[id]') order by id desc");

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
							<td align="center">'.$row['cname'].'</td>
							
							'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
						    <td align="center">
							
							<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do=showtime_manage&op=edit&id='.$_GET['id'].'&sop=remove_closet_category&sid='.$row['id'].'&tab=closet"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
							</td>
						  </tr>
							';

							$x++;
						}

						if (mysqli_num_rows($sql) == 0)
							echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=15>متاسفانه نتیجه ای یافت نشد</td></tr>';


						?>
						</table>

						<br>

						<form method="post" action="index.php?do=showtime_manage&op=edit&id=<?=$_GET['id']?>">
							<input type="hidden" name="tab" value="closet">
							انتخاب گروه کمد : 
						
							<select name="closet_category_name" class="input-s" id="closet_category_name" required>
							    <option value="">انتخاب کنید</option>
							    <?PHP
							    $sql = $admin->sql("select distinct(category_name) as cname from closet  where (category_name NOT IN(select cname from showtime_closet_category where (showtime_id = '$_GET[id]')))");
							    
							    while ($r = $admin->row($sql))
							    {
							      echo '<option value="'.$r['cname'].'">'.$r['cname'].'</option>';
							    }
							   	?>
							    </select>
							    <input type="submit" id="add_komod" value="اضافه کن" class="input-b">
						</form>
						

					</div>


				</div>	

			<?PHP
			
		break;
	}
}

if (!isset($_GET['op']) and $_GET['op'] != 'edit')
//if (true)
{
?>
<center>
<form method="post" action="">
جستجو بر اساس عنوان سانس : <input type="text" name="search" class="input-t" size="45" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
</form>
</center>
<br /><br />
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center"><a href="index.php?do=<?=$url?>&sort=id&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">#</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=name&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">عنوان</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=mode&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">نوع سانس</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=capacity&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">ظرفیت</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=capacity&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">محدودیت فروش</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=price&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">ورودی<br>تومان</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=start_date&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">آغاز</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=end_date&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">پایان</a></td>
    <td align="center">ورود مجاز</td>
    <td align="center">گیفت کارت</td>
    <td align="center">زمان مجاز مرجوعی</td>
    <?PHP /*
    <td align="center">کل بلیط</td>
    <td align="center">بلیط فعال</td>
    <td align="center">بلیط مرجوع</td>
    <td align="center">بلیط ابطالی</td>
    <td align="center">بلیط تاریخ گذشته</td>
    */ ?>
    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
    <td width="170" align="center">ابزار</td>
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
	$sql = $admin->sql("select * from $tblname where(name like '%$_POST[search]%' and archive = 0)");
}
else
{
	if (isset($_GET['sort']))
	{
		$sql = $admin->sql("select * from $tblname where ( archive = 0) order by $_GET[sort] $_GET[type] limit $start,$pagCo");
	}
	else
	{
		$sql = $admin->sql("select * from $tblname where ( archive = 0) order by id desc limit $start,$pagCo");
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
	
	
	echo '
  <tr height="25" bgcolor="'.$color.'" class="tblrow">
    <td bgcolor="#d1d1d1" align="center">'.$row['id'].'</td>
	<td align="center">'.$row['name'].'</td>
	<td align="center">'.$row['mode'].'</td>
	<td align="center">'.$row['capacity'].' نفر</td>
	<td align="center">'.$row['sale_limit'].'</td>
	<td align="center">'.number_format($row['price']).'</td>
	<td align="center" dir="ltr">'.$row['start_date'].' '.$row['start_hour'].':'.$row['start_minute'].'</td>
	<td align="center" dir="ltr">'.$row['end_date'].' '.$row['end_hour'].':'.$row['end_minute'].'</td>
	<td align="center">';

	echo stripos($row['type'], 'مهمان آقا') !== false ? '<img src="images/1.png">' : '';
	echo stripos($row['type'], 'مهمان خانم') !== false ? '<img src="images/2.png">' : '';
	echo stripos($row['type'], 'پرسنل آقا') !== false ? '<img src="images/3.png">' : '';
	echo stripos($row['type'], 'پرسنل خانم') !== false ? '<img src="images/4.png">' : '';


	echo '</td>
	<td align="center">'.($row['use_coupon'] == 'on' ? '<img src="images/yes.jpg">' : '<img src="images/no.jpg">').'</td>
	<td align="center">'.$row['return_time_limit'].' دقیقه</td>'; /*
	<td align="center">'.$admin->result($admin->sql("select count(*) from ticket where showtime_id = '$row[id]' ") , 0).'</td>
	<td align="center">'.$admin->result($admin->sql("select count(*) from ticket where (status = 'فعال' and showtime_id = '$row[id]') ") , 0).'</td>
	<td align="center">'.$admin->result($admin->sql("select count(*) from ticket where (status = 'مرجوع' and showtime_id = '$row[id]') ") , 0).'</td>
	<td align="center">'.$admin->result($admin->sql("select count(*) from ticket where (status = 'ابطال' and showtime_id = '$row[id]') ") , 0).'</td>
	<td align="center">'.$admin->result($admin->sql("select count(*) from ticket where (time_finish <= '$now' and showtime_id = '$row[id]') ") , 0).'</td>
	
	'; */ if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="center">'.$admin->description($row , $tblname).'&nbsp;&nbsp;
	<a href="index.php?do='.$url.'&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> 
	&nbsp;&nbsp;
	<a onclick="return confirm(\'آیا سانس آرشیو شود ؟ \')" href="index.php?do='.$url.'&op=archive&id='.$row['id'].'"><img src="images/archive.png" border="0" alt="آرشیو" title="آرشیو" align="texttop"></a>
	&nbsp;&nbsp;
	<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do='.$url.'&op=remove&id='.$row['id'].'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
	
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
	$sql = $admin->sql("select * from $tblname where ( archive = 0)");
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
