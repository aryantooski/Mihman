<?PHP
require_once("header.php");
require_once("menu.php");

$sql = $admin->sql("select * from guest");
while ($row = $admin->row($sql))
{
	$admin->sql("update guest set ticket_all = (select count(*) from ticket_part where (guest_id = '$row[id]')) limit 1");

	$admin->sql("update guest set ticket_active = (select count(*) from ticket_part where (guest_id = '$row[id]' and ticket_id=(select id from ticket where status = 'فعال') )) where id = '$row[id]' limit 1");
	
	$admin->sql("update guest set ticket_refund = (select count(*) from ticket_part where (guest_id = '$row[id]' and ticket_id=(select id from ticket where status = 'مرجوعی'))) where id = '$row[id]' limit 1");
	
	//$admin->sql("update guest set ticket_expired = (select count(*) from ticket where (guest_id = '$row[id]' and status = 'مرجوعی')) where id = '$row[id]' limit 1");
	
	$admin->sql("update guest set ticket_used = (select count(*) from ticket_part where (guest_id = '$row[id]' and ticket_id=(select id from ticket where status = 'ابطالی'))) where id = '$row[id]' limit 1");
	// echo $row['id'].'-->'.var_dump($admin->guest_is_block($row['id'])).'<br>';
	if($admin->guest_is_block($row['id']) == true){
		$guest_status=true;
	}else{
		$guest_status=false;
	}
	
	$admin->sql("update guest set status = '".$guest_status."' where id = '$row[id]' limit 1");
}
?>
    </td>
  </tr>
  <tr>
    <td valign="top">
<div class="text-cont">

<div class="add-in">
<b class="bx">مدیریت مهمانان : </b>
<div class="co">
<?PHP
$tblname = 'guest';
$pagCo = 20;
$url = 'guest_manage';
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
			
			$admin->LOG('مدیریت مهمانان - حذف' , $msg);
		break;
		
		case 'edit' :
			if (isset($_POST['post']))
			{
				require_once('inc/date.php');

				$sql_my_reg_date = $admin->sql("select date from guest where id = '$_GET[id]' ");
				$row_my_reg_date = $admin->row($sql_my_reg_date);
				$my_reg_date = $row_my_reg_date['date'];

				$sql_ref_reg_date = $admin->sql("select date from guest where id = '$_POST[ref_id]' ");
				$row_ref_reg_date = $admin->row($sql_ref_reg_date);
				$ref_reg_date = $row_ref_reg_date['date'];

				list($my_y , $my_m , $my_d) = explode('-' , $my_reg_date);
				$my_time = jmaketime(0 , 0 , 0 , $my_m , $my_d , $my_y);

				list($ref_y , $ref_m , $ref_d) = explode('-' , $ref_reg_date);
				$ref_time = jmaketime(0 , 0 , 0 , $ref_m , $ref_d , $ref_y);

				// if ($ref_time > $my_time)
				// {
				// 	$msg = "تغییر معرف به شخصی که تاریخ عضویتش جدیدتر باشد امکانپذیر نیست"; echo $admin->msg($msg , "critical");
				// }
				// else
				// {
				// 	$image = $_POST['post'];
					
					if (!empty($_FILES['image']['tmp_name']))
					{
						$name = str_replace('.' , '' , microtime(true)).'.'.end(explode('.' , $_FILES['image']['name']));
						if (move_uploaded_file($_FILES['image']['tmp_name'] , 'upload/'.$name))
						{
							$image = $name;
						}
					}
					

					
					$updsql = $admin->sql("update $tblname set ref_id = '$_POST[ref_id]' , name = '$_POST[name]' , mobile = '$_POST[mobile]' , type = '$_POST[type]' , sex = '$_POST[sex]' , image = '$image' , date = '".str_replace('/' , '-' , $_POST['date'])."' where id = '$_GET[id]' limit 1");
					
					if ($updsql)
					{
						$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
					}
					else
					{
						$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
					}
					
					$admin->LOG('مدیریت مهمانان - ویرایش' , $msg);
				}
			//}

			$editsql = $admin->sql("select * from $tblname where id = '$_GET[id]' limit 1");
			$editrow = $admin->row($editsql);
			
			echo '
			
			
<script src="chosen/chosen.jquery.min.js"></script>
<link href="chosen/chosen.min.css" rel="stylesheet">

<script>

$(function(){
	$("#chosen").chosen();
});



function check(field)
{
	$("#validate_"+field).html(\'<img src="images/loading.gif">\');

	$.ajax({
		data:field+"="+$("#"+field).val(),
		type:"POST",
		url:"core.php?act=validate_field&edit='.$_GET['id'].'",
		success: function(data){
			$("#validate_"+field).html(data);
		}
	});
}

</script>
<script type="text/javascript" src="inc/PersianDatePicker.min.js"></script>
<link type="text/css" rel="stylesheet" href="inc/PersianDatePicker.min.css" />

			
			<form method="post" action="" enctype="multipart/form-data">
			<input type="hidden" name="post" value="'.$editrow['image'].'">
			<table cellpadding="2" width="100%">
				<tr>
					<td style="width:50%" valign="top">
						<table cellpadding="2">
						  <tr>
							<td>نام و نام خانوادگی : </td>
							<td><input type="text" name="name" class="input-t" size="40" value="'.$editrow['name'].'" required onkeyup="check(\'name\')" id="name"> <span id="validate_name"></span></td>
						  </tr>
						  <tr>
							<td>جنسیت : </td>
							<td>';
							$s2[$editrow['sex']] = 'selected=selected';
							echo '<select name="sex" class="input-s" required>
							<option '.$s2['مرد'].' value="مرد">مرد</option>
							<option '.$s2['زن'].' value="زن">زن</option>
							</select></td>
						  </tr>
						  <tr>
							<td>شماره موبایل : </td>
							<td><input type="text" name="mobile" class="input-t" dir="ltr" value="'.$editrow['mobile'].'"  required onkeydown="return ( event.ctrlKey || event.altKey 
                || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                || (95<event.keyCode && event.keyCode<106)
                || (event.keyCode==8) || (event.keyCode==9) 
                || (event.keyCode>34 && event.keyCode<40) 
                || (event.keyCode==46) )" onkeyup="check(\'mobile\')" id="mobile"> <span id="validate_mobile"></span></td>
						  </tr>
						  <tr>
							<td>معرف : </td>
							<td>'.($editrow['ref_id'] == 0 ? 'مدیر' : $admin->select('guest' , 'ref_id' , 'name' , $editrow['ref_id'] , true , '' , 'chosen' , " where (type = 'قدیمی' or id = '".$editrow['ref_id']."') " , 'chosen-select chosen-rtl" data-placeholder="معرف انتخاب شود" required style="width:200px;')).'</td>
						  </tr>
						  <tr>
							<td>نوع مهمان : </td>
							<td>';
							$s1[$editrow['type']] = 'selected=selected';
							echo '<select name="type" class="input-s" required>
							<option '.$s1['تازه وارد'].' value="تازه وارد">تازه وارد</option>
							<option '.$s1['قدیمی'].' value="قدیمی">قدیمی</option>
							</select></td>
						  </tr>
						  <tr>
							<td>تاریخ ثبت نام : </td>
							<td><input type="text" name="date" id="date" class="input-t" dir="ltr" required value="'.$editrow['date'].'"></td>
						  </tr>
						</table>
					</td>
					<td style="width:50%" valign="top">
			<table style="width:100%;">
				<tr>
					<td style="text-align:left;">
						<input type="hidden" name="crop_x" id="crop_x" value="0">
						<input type="hidden" name="crop_y" id="crop_y" value="0">
						<input type="hidden" name="crop_w" id="crop_w" value="0">
						<input type="hidden" name="crop_h" id="crop_h" value="0">
						<input type="hidden" name="image_data" id="image_data">

						<div class="image_area" id="final_image" style="background-image:url(';
			if (empty($editrow['image']) or $editrow['image'] == 'noimage')
			{
				echo 'images/def.jpg';
			}
			else
			{
				echo 'upload/'.$editrow['image'];
			}
				echo '); background-position: 0px 0px; background-size: cover; width:'.$admin->sql("select crop_width from admin")->fetch_object()->crop_width.'px; height:'.$admin->sql("select crop_height from admin")->fetch_object()->crop_height.'px;"></div>
					</td>
				</tr>
				<tr>
					<td style="text-align:left;">
						<input type="file" id="upload_file" name="upload_file" onchange="show_selector(this);" style="display: none">
						<input type="button" class="input-g" value="انتخاب تصویر از کامپیوتر" onclick="pic_upload()">
						<input type="button" class="input-g" value="گرفتن عکس با دوربین" onclick="pic_camera()">
					</td>
				</tr>
			</table>
		</td>
					
				</tr>
			</table>
			<input type="submit" value="تایید" class="input-b" />
			</form>
			<div style="border:1px solid #e1e1e1; margin-top:20px; margin-bottom:20px;"></div>
			';
			?>

			<script type="text/javascript">
				function show_tab(id)
				{
					$(".tab_content .tabone").css("display" , "none");
					$(".tab_content .tab_"+id).css("display" , "block");

					$(".tabsx li a").removeClass("active");
					$(".head_"+id).addClass("active");
				}
			</script>
			<?PHP
			if (isset($_POST['postx']) and (substr($_POST['postx'] , 0 , 5) == 'head_'))
			{
				$tab_vew[$_POST['postx']] = 'active';
				?>
				<script type="text/javascript">
				$(window).load(function(){
					show_tab(<?=substr($_POST['postx'], 5 , 1)?>);
				});
					
				</script>
				<?PHP
			}
			else
			{
				$tab_vew['head_1'] = 'active';
			}

			$now = substr($admin->true_time() , 0 , 10);

			?>
			<ul class="tabsx">
				<li><a href="javascript:void(0)" class="head_1 <?=$tab_vew['head_1']?>" onclick="show_tab(1)">معرفی شده ها</a></li>
				<li><a href="javascript:void(0)" class="head_2 <?=$tab_vew['head_2']?>" onclick="show_tab(2)">مسدودی ها</a></li>
				<li><a href="javascript:void(0)" class="head_3 <?=$tab_vew['head_3']?>" onclick="show_tab(3)">بلیط ها</a></li>
				<li><a href="javascript:void(0)" class="head_4 <?=$tab_vew['head_4']?>" onclick="show_tab(4)">تگ</a></li>
				<li><a href="javascript:void(0)" class="head_5 <?=$tab_vew['head_5']?>" onclick="show_tab(5)">بخش</a></li>
			</ul>
			<div class="cls"></div>
			<div class="tab_content">
				<div class="tabone tab_1">
					
					<link rel="stylesheet" type="text/css" href="datatables/datatables.min.css"/>
					<script type="text/javascript" src="datatables/datatables.min.js"></script>

					<script type="text/javascript">
						$(document).ready(function() {
							$('.data-tables').DataTable();
						});
					</script>

					<table cellspacing="0" cellpadding="4" border="1" bordercolor="#FFFFFF" style="color:#069" width="100%">
						<tr>
						
							<td bgcolor="#88b3c9" style="color:#FFFFFF">کل معرفی شده ها : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from guest where (ref_id = '$_GET[id]')")->fetch_object()->cnt?> نفر</td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">قدیمی : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from guest where (ref_id = '$_GET[id]' and type = 'قدیمی')")->fetch_object()->cnt?> نفر</td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">تازه وارد : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from guest where (ref_id = '$_GET[id]' and type = 'تازه وارد')")->fetch_object()->cnt?> نفر</td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">مسدود : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from guest where (ref_id = '$_GET[id]' and status = 'true')")->fetch_object()->cnt?> نفر</td>

							<td bgcolor="#88b3c9" style="color:#FFFFFF">فعال : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from guest where (ref_id = '$_GET[id]' and status = 'false')")->fetch_object()->cnt?> نفر</td>
						</tr>
						<tr>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">یلیطهای خریداری شده : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from ticket where (id IN (select ticket_id from ticket_part where (guest_id = '$_GET[id]') ) )")->fetch_object()->cnt?></td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">بلیط فعال : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from ticket where (status = 'فعال' and id IN (select ticket_id from ticket_part where (guest_id = '$_GET[id]') ) )")->fetch_object()->cnt?></td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">بلیط رزرو : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from ticket where (status = 'رزرو' and id IN (select ticket_id from ticket_part where (guest_id = '$_GET[id]') ) )")->fetch_object()->cnt?></td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">بلیط ابطالی : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from ticket where (status = 'ابطال' and id IN (select ticket_id from ticket_part where (guest_id = '$_GET[id]') ) )")->fetch_object()->cnt?></td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">بلیط مرجوعی : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from ticket where (status = 'مرجوع' and id IN (select ticket_id from ticket_part where (guest_id = '$_GET[id]') ) )")->fetch_object()->cnt?></td>
						</tr>
						<tr>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">یلیطهای تاریخ مصرف گذشته : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from ticket where (time_finish <= '$now' and id IN (select ticket_id from ticket_part where (guest_id = '$_GET[id]') ) )")->fetch_object()->cnt?></td>
							
						</tr>
					</table>
					<br>




<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="data-tables managetable">
	<thead>
  <tr bgcolor="#cccccc" height="30">
    <th width="40" align="center">#</th>
    <th align="center">نام و نام خانوادگی</th>
    <th align="center">موبایل</th>
    <th align="center">نوع مهمان</th>
    <th align="center">بلیط خریداری شده</th>
    <th align="center">بلیط فعال</th>
    <th align="center">بلیط ابطالی</th>
    <th align="center">بلیط مرجوعی</th>
    <th align="center">بلیط تاریخ مصرف گذشته</th>
    <th align="center">وضعیت</th>
    <th align="center">تاریخ ثبت نام</th>
    <?PHP  if (SUID == 0) echo '<th align="center">کاربر</th>'; ?>

    <?PHP /*<th align="center" width="150">ابزار</th>*/ ?>
  </tr>
</thead>
<tbody>
<?PHP



if (isset($_GET['sort']))
		{
			$sql = $admin->sql("select * from guest where (ref_id = '$_GET[id]') order by $_GET[sort] $_GET[type]");
		}
		else
		{
			$sql = $admin->sql("select * from guest where (ref_id = '$_GET[id]') order by id asc");

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
	
	$sql_block_report = $admin->sql("select * from guest_block where(user_id = '$row[id]')");
	if ($sql_block_report->num_rows == 1)
	{
		$block_report = $admin->row($sql_block_report);

		$link = 'index.php?do=guest_block_report&op=edit&id='.$block_report['id'];
	}
	else
	{
		$link = 'index.php?do=guest_block_add&userid='.$row['id'];
	}

	echo '
  <tr height="25" bgcolor="'.$color.'" class="tblrow">
    <td bgcolor="#d1d1d1" align="center">'.$x.'</td>
	<td align="center">'.$row['name'].'</td>
	<td align="center">'.$row['mobile'].'</td>
	<td align="center">'.$row['type'].'</td>
	<td align="center">'.$row['ticket_all'].'</td>
	<td align="center">'.$row['ticket_active'].'</td>
	<td align="center">'.$row['ticket_used'].'</td>
	<td align="center">'.$row['ticket_refund'].'</td>
	<td align="center">'.$row['ticket_expired'].'</td>
	<td align="center">'.($row['status'] ? '<span style="color:red">مسدود</span>' : '<span style="color:green">فعال</span>').'</td>
	<td align="center"><span dir=ltr>'.$row['date'].'</span></td>
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } /*echo '
    <td align="center">
	<a href="'.$link.'"><img src="images/block_add.png" border="0" align="texttop" alt="مسدود" title="مسدود"></a> &nbsp;&nbsp;&nbsp;
	<a href="index.php?do=guest_block_report&userid='.$row['id'].'"><img src="images/block_manage.png" border="0" align="texttop" alt="گزارش" title="گزارش"></a>
	
	<a href="index.php?do=guest_manage&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;&nbsp;
	<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do=guest_manage&op=remove&id='.$row['id'].'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
	</td> */ echo '
  </tr>
	';
	
	$x++;
}

if (mysqli_num_rows($sql) == 0)
	echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=13>متاسفانه نتیجه ای یافت نشد</td></tr>';


?>
</tbody>
</table>


				</div>

				<div class="tabone tab_2">


					<table cellspacing="0" cellpadding="4" border="1" bordercolor="#FFFFFF" style="color:#069" width="100%">
						<tr>
						
							<td bgcolor="#88b3c9" style="color:#FFFFFF">تعداد دفعات : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from guest_block where (user_id = '$_GET[id]')")->fetch_object()->cnt?> دفعه</td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">مجموع روزهای مسدودی : </td>
							<td align="center" bgcolor="#e2f5ff"><?PHP
							$sql = $admin->sql("select * from guest_block where(user_id = '$_GET[id]')");
							
							$sum_days = 0;

							require_once('inc/date.php');

							while ($row = $admin->row($sql))
							{
								$sql_guest = $admin->sql("select * from guest where (id = '$row[user_id]')");
								$guest = $admin->row($sql_guest);
								
								
								$is_block = false;
								switch ($row['type'])
								{
									case 'todate' : 
										
										list($yx , $mx , $dx) = explode('-' , $row['todate_value']);
										list($yy , $my , $dy) = explode('-' , $row['date']);
										
										$date_to_stamp = jmaketime(0 , 0 , 0 , $mx , $dx , $yx);
										$start_stamp = jmaketime(0 , 0 , 0 , $my , $dy , $yy);
										
										$remains = ceil(($date_to_stamp - $start_stamp) / 86400);
										
										$sum_days += $remains;

									break;
									
									case 'until' : 
										list($y , $m , $d) = explode('-' , $row['date']);

										$date_to_stamp = jmaketime(0 , 0 , 0 , $m , $d , $y) + ($row['until_value'] * 86400);
										$today_stamp = jmaketime(0 , 0 , 0 , $admin->time('m') , $admin->time('d') , $admin->time('Y'));
										
										$remains = ceil(($date_to_stamp - $today_stamp) / 86400);

										$sum_days += $row['until_value'];

									break;
									
									case 'notexpire' : 
										//echo 'تا اطلاع ثانوی</td><td align="center">'.$row['date'].'</td><td align="center">تا اطلاع ثانوی';
									break;
								}
							}

							echo $sum_days;
							?> روز</td>
						</tr>
						
					</table>
					<br>



<?PHP


if (isset($_POST['postx']))
{
	if ($admin->result($admin->sql("select status from guest where id = '$_GET[id]'") , 0) != 1)
	{
		$sql = $admin->sql("insert into guest_block set suid = '".SUID."' , user_id = '$_GET[id]' , type = '$_POST[type]' , todate_value = '".str_replace('/' , '-' , $_POST['todate_value'])."' , until_value = '$_POST[until_value]' , description = '$_POST[description]' , date = '".$admin->time('Y-m-d')."' , time = '".$admin->time('H:i:s')."' ");

		if  ($sql)
		{
			$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
		}
		else
		{
			$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
		}
		
		$admin->LOG('انسداد مهمان جدید' , $msg);
	}
	else
	{
		$msg = "مهمان در حال حاظر مسدود می باشد و امکان انسداد مجدد وجود ندارد"; echo $admin->msg($msg , "critical");
	}
}

?>
<script language="javascript">
function validate()
{
	if ($("input[name=type]:checked"). val() == 'todate')
	{
		if ($("input[name=todate_value]").val() == '')
		{
			alert('تاریخ درج نشده است');
			return false;
		}
	}
	else if ($("input[name=type]:checked"). val() == 'until')
	{
		if ($("input[name=until_value]").val() == '')
		{
			alert('مدت زمان روز درج نشده است');
			return false;
		}
	}
	else
	{
		return true;
	}
	
	return true;
}
</script>



<form method="post" action="" enctype="multipart/form-data" onSubmit="return validate()">
<input type="hidden" name="postx" value="head_2" />

<script type="text/javascript" src="inc/PersianDatePicker.min.js"></script>
<link type="text/css" rel="stylesheet" href="inc/PersianDatePicker.min.css" />

<table cellpadding="5">
  <tr>
    <td>نوع انسداد : </td>
    <td>
		<table>
			<tr>
				<td><label><input type="radio" name="type" value="todate" checked> تا تاریخ</label></td>
				<td><input type="text" name="todate_value" id="todate_value" class="input-t" placeholder="<?=$admin->time('Y-m-d')?>" dir="ltr"></td>
			</tr>
			<tr>
				<td><label><input type="radio" name="type" value="until"> به مدت</label></td>
				<td><input type="text" name="until_value" class="input-t" dir="ltr"> روز</td>
			</tr>
			<tr>
				<td><label><input type="radio" name="type" value="notexpire"> تا اطلاع ثانوی</label></td>
			</tr>
		</table>
	</td>
  </tr>
  <tr>
    <td>توضیحات : </td>
    <td><input type="text" name="description" class="input-t" size="100" /></td>
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

















<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="data-tables managetable">
	<thead>
  <tr bgcolor="#cccccc" height="30">
    <th width="40" align="center">#</th>
    <th align="center">نوع مسدودیت</th>
    <th align="center">تاریخ اجرا</th>
    <th align="center">تاریخ پایان</th>
    <?PHP if (SUID == 0) echo '<th width="80" align="center">کاربر</th>'; ?>
    <th width="120" align="center">ابزار</th>
  </tr>
</thead>
<tbody>
<?PHP


if (isset($_GET['sort']))
		{
			$sql = $admin->sql("select * from guest_block where(user_id = '$_GET[id]') order by $_GET[sort] $_GET[type]");
		}
		else
		{
			$sql = $admin->sql("select * from guest_block where(user_id = '$_GET[id]') order by id desc");

		}
	
require_once('inc/date.php');

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
	
	$sql_guest = $admin->sql("select * from guest where (id = '$row[user_id]')");
	$guest = $admin->row($sql_guest);
	
	echo '
  <tr height="25" bgcolor="'.$color.'" class="tblrow">
    <td bgcolor="#d1d1d1" align="center">'.$x.'</td>
	<td align="center">';
	$is_block = false;
	switch ($row['type'])
	{
		case 'todate' : 
			
			list($yx , $mx , $dx) = explode('-' , $row['todate_value']);
			
			$date_to_stamp = jmaketime(0 , 0 , 0 , $mx , $dx , $yx);
			$today_stamp = jmaketime(0 , 0 , 0 , $admin->time('m') , $admin->time('d') , $admin->time('Y'));
			
			$remains = ceil(($date_to_stamp - $today_stamp) / 86400);
			
			if ($remains > 0)
			{
				echo 'تا تاریخ</td><td align="center">'.$row['date'].'</td><td align="center"> <span dir="ltr">'.$row['todate_value'].'</span> - باقیمانده '.$remains.' روز';
			}
			else
			{
				echo 'تا تاریخ</td><td align="center">'.$row['date'].'</td><td align="center">  <span dir="ltr">'.$row['todate_value']."</span> - پایان یافته";
				$is_block = true;
			}
			
		break;
		
		case 'until' : 
			list($y , $m , $d) = explode('-' , $row['date']);

			$date_to_stamp = jmaketime(0 , 0 , 0 , $m , $d , $y) + ($row['until_value'] * 86400);
			$today_stamp = jmaketime(0 , 0 , 0 , $admin->time('m') , $admin->time('d') , $admin->time('Y'));
			
			$remains = ceil(($date_to_stamp - $today_stamp) / 86400);

			if ($remains > 0)
			{
				echo 'به مدت  '.$row['until_value'].' روز</td><td align="center">'.$row['date'].'</td><td align="center">   باقیمانده '.$remains.' روز';
			}
			else
			{
				echo 'به مدت '.$row['until_value'].' روز</td><td align="center">'.$row['date'].'</td><td align="center">پایان یافته';
				$is_block = true;
			}
		break;
		
		case 'notexpire' : 
			echo 'تا اطلاع ثانوی</td><td align="center">'.$row['date'].'</td><td align="center">تا اطلاع ثانوی';
		break;
	}

	
	if ($row['end_stamp'] <= time() and $row['end_stamp'] != 0)
	{
		echo '<div style="color:blue;">پایان یافته در تاریخ <span dir=ltr>'.$admin->time('Y-m-d H:i:s' , $row['end_stamp']).'</span></div>';
		$is_block = true;
	}
	//<a href="index.php?do=guest_block_report&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;&nbsp;
	
	echo '</td>
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="center">'.$admin->description($row , 'guest_block').'&nbsp;&nbsp;
	
	';						

	if (!$is_block)
	{
		echo '<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do=guest_block_report&op=end&id='.$row['id'].'"><img src="images/end.png" border="0" alt="پایان مسدودی" title="پایان مسدودی" align="texttop"></a> &nbsp;&nbsp;';
	}
	echo '
	

	<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do=guest_block_report&op=remove&id='.$row['id'].'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
	</td>
  </tr>
	';
	
	$x++;
}

if (mysqli_num_rows($sql) == 0)
	echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=6>متاسفانه نتیجه ای یافت نشد</td></tr>';


?>
</tbody>
</table>


				</div>

				<div class="tabone tab_3">
					<table cellspacing="0" cellpadding="4" border="1" bordercolor="#FFFFFF" style="color:#069" width="100%">
						<tr>
						
							<td bgcolor="#88b3c9" style="color:#FFFFFF">تعداد کل بلیط : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from ticket where (archive = 0 and id IN(select ticket_id from ticket_part where (guest_id IN (select id from guest where (ref_id = '$_GET[id]')  )  )))")->fetch_object()->cnt?></td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">بلیط های این شخص : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from ticket where (archive = 0 and id IN(select ticket_id from ticket_part where (guest_id = '$_GET[id]')))")->fetch_object()->cnt?></td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">تعداد گیفت کارت : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from ticket where (coupon_id != 0 and id IN(select ticket_id from ticket_part where (guest_id = '$_GET[id]')))")->fetch_object()->cnt?></td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">کل مبلغ گیفت کارت : </td>
							<td align="center" bgcolor="#e2f5ff"><?=number_format($admin->sql("select sum(coupon_discount) as cnt from ticket where (coupon_id != 0 and id IN(select ticket_id from ticket_part where (guest_id = '$_GET[id]')))")->fetch_object()->cnt)?> تومان</td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">کل ورودی : </td>
							<td align="center" bgcolor="#e2f5ff"><?=number_format($admin->sql("select sum(login_amount) as cnt from ticket where (id IN(select ticket_id from ticket_part where (guest_id = '$_GET[id]')))")->fetch_object()->cnt)?> تومان</td>
						</tr>
						<tr>
						
							<td bgcolor="#88b3c9" style="color:#FFFFFF">کل بخش ها : </td>
							<td align="center" bgcolor="#e2f5ff"><?=number_format($admin->sql("select sum(total_part_amount) as cnt from ticket where (id IN(select ticket_id from ticket_part where (guest_id = '$_GET[id]')))")->fetch_object()->cnt)?> تومان</td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">کل تخفیف تگ : </td>
							<td align="center" bgcolor="#e2f5ff"><?=number_format($admin->sql("select sum(tag_discount) as cnt from ticket where (id IN(select ticket_id from ticket_part where (guest_id = '$_GET[id]')))")->fetch_object()->cnt)?> تومان</td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">کل گروی تگ : </td>
							<td align="center" bgcolor="#e2f5ff"><?=number_format($admin->sql("select sum(tag_pledge) as cnt from ticket where (id IN(select ticket_id from ticket_part where (guest_id = '$_GET[id]')))")->fetch_object()->cnt)?> تومان</td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">کل مبالغ پرداختی : </td>
							<td align="center" bgcolor="#e2f5ff"><?=number_format($admin->sql("select sum(amount) as cnt from ticket where (id IN(select ticket_id from ticket_part where (guest_id = '$_GET[id]')))")->fetch_object()->cnt)?> تومان</td>
						</tr>
						
					</table>
					<br>



			<?PHP
echo $admin->show_ticket_additional();
?>		
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="data-tables managetable">
	<thead>
  <tr bgcolor="#cccccc" height="30">
    <th width="40" align="center">#</th>
    <th align="center">سانس و بلیط</th>
    <th align="center">خریدار</th>
    <th align="center">گروه تگ</th>
    <th align="center">بن تخفیف</th>
    
    <th align="center">مبلغ ورودی(تومان)</th>
    <th align="center">کل بخش ها(تومان)</th>
    <th align="center">تخفیف تگ(تومان)</th>
    <th align="center">گرویی تگ(تومان)</th>
    <th align="center">مبلغ قابل پرداخت(تومان)</th>
    <th align="center">زمان صدور</th>
    
    <?PHP if (SUID == 0) echo '<th width="50" align="center">کاربر</th>'; ?>
    <th width="170" align="center">ابزار</th>
  </tr>
  </thead>
  <tbody>
<?PHP

if (isset($_GET['sort']))
		{
			$sql = $admin->sql("select * from ticket where (archive = 0 and id IN(select ticket_id from ticket_part where (guest_id = '$_GET[id]'))) order by $_GET[sort] $_GET[type]");
		}
		else
		{
			$sql = $admin->sql("select * from ticket where (archive = 0 and id IN(select ticket_id from ticket_part where (guest_id = '$_GET[id]'))) order by id desc");

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
	


	$buyer_name_sql = $admin->sql("select name from guest where (id IN (select guest_id from ticket_part where (ticket_id = '$row[id]') order by id asc)) limit 1");
	$buyer_name_row = $admin->row($buyer_name_sql);

	

	echo '
  <tr height="25" bgcolor="'.$color.'" class="tblrow">
    <td bgcolor="#d1d1d1" align="center">'.$row['id'].'</td>
	<td align="center">'.$admin->result($admin->sql("select name from showtime where id = '$row[showtime_id]'") , 0).' <br> #'.$row['id'].'</td>
	<td align="center">'.$buyer_name_row['name'].'</td>
	<td align="center">'.$admin->result($admin->sql("select name from tags_category where id = '$row[tag_category_id]'") , 0).'</td>
	<td align="center">'.$admin->result($admin->sql("select serial from coupon where id = '$row[coupon_id]'") , 0).'</td>
	
	
	
	<td align="center">'.number_format($row['login_amount']).'</td>
	<td align="center">'.number_format($row['total_part_amount']).' </td>
	<td align="center">'.number_format($row['tag_discount']).'</td>
	<td align="center">'.number_format($row['tag_pledge']).' </td>
	<td align="center">'.number_format($row['amount']).' </td>
	<td align="center"><span dir=ltr>'.$admin->parse_int_to_date($row['make_time']).'</span></td>
	
	
	
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="center">'.$admin->description($row , 'ticket').'&nbsp;&nbsp;
	
	<a href="javascript:void(0)" onclick="tag_log(\''.$row['id'].'\')"><img src="images/tag_function.png" width="32" border="0" alt="لاگ" title="لاگ" align="texttop"></a>

	&nbsp;&nbsp;
	
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
</tbody>
</table>

<script type="text/javascript">
	function tag_log(ticket_id) 
	{
		$('.tr_ticket').css({"background-color" : ""});
		$('.tr_ticket_'+ticket_id).css({"background-color" : "#7fbb5b"});
		show_tab(4);
	}
</script>

				</div>

				<div class="tabone tab_4">
					

<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="data-tables managetable">
	<thead>
  <tr bgcolor="#cccccc" height="30">
    <th width="40" align="center">#</th>
    <th align="center">تگ و سریال</th>
    <th align="center">سانس و شماره بلیط</th>
    <th align="center">زمان</th>
    <th align="center">عملیات</th>
    <?PHP if (SUID == 0) echo '<th width="80" align="center">کاربر</th>'; ?>
    <th width="80" align="center">ابزار</th>
  </tr>
</thead>
<tbody>
<?PHP

if (isset($_GET['start']))
{
	$start = $_GET['start'];
}
else
{
	$start = 0;
}




if (isset($_GET['sort']))
{
	$sql = $admin->sql("select * from tags_log where (guest_id = '$_GET[id]') order by $_GET[sort] $_GET[type]");
}
else
{
	$sql = $admin->sql("select * from tags_log where (guest_id = '$_GET[id]') order by id desc");
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


	$showtime_sql = $admin->sql("select * from showtime where (id = (select showtime_id from ticket where (id = '$row[ticket_id]')))");
	$showtime = $admin->row($showtime_sql);

	


	
	echo '
  <tr height="25" bgcolor="'.$color.'" class="tblrow tr_ticket tr_ticket_'.$row['ticket_id'].'">
    <td bgcolor="#d1d1d1" align="center">'.$x.'</td>
	<td align="center"><span style="display:inline-block; width:10px; height:10px; background-color:'.$tags_category['color_code'].'"></span> '.$tags_category['color_name'].' - '.$tag['serial'].'</td>
	<td align="center">#'.$row['ticket_id'].' - '.$showtime['name'].'</td>
	<td align="center"><span dir=ltr>'.$row['datetime'].'</span></td>
	<td align="center"><img src="images/'.$icon[$row['details']].'" alt="'.$row['details'].'" title="'.$row['details'].'"></td>
	
	

	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    
    <td align="center">
    ';

    $ticket_sql = $admin->sql("select * from ticket where (id = '$row[ticket_id]')");
    if ($admin->cnt($ticket_sql))
	{
    	echo '<a href="javascript:void(0)" onclick="reload_content(\''.$row['ticket_id'].'\' , 0); $(\'#ticket_'.$row['ticket_id'].'\').modal({backdrop: true});"><img src="images/info.png" border="0" alt="مشاهده" title="مشاهده" align="texttop"></a>';
    }
    else
    {
    	echo 'بلیط ناموجود';
    }
    echo '
	</td>

  </tr>
	';
	
	$x++;
}
$tx = '';

if (mysqli_num_rows($sql) == 0)
	echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=15>متاسفانه نتیجه ای یافت نشد</td></tr>';


?>
</tbody>
</table>


				</div>

				<div class="tabone tab_5">

					aaas

				</div>
			</div>
<?PHP
$ticket_sql = $admin->sql("select * from ticket where (id IN (select ticket_id from tags_log where (guest_id = '$_GET[id]') ) or id IN(select ticket_id from ticket_part where (guest_id = '$_GET[id]')))");
while ($ticket = $admin->row($ticket_sql))
{
	echo $admin->show_ticket($ticket);
}

?>
			<div style="border:1px solid #e1e1e1; margin-top:20px; margin-bottom:20px;"></div>

			<link rel="stylesheet" href="jalalijscalendar/skins/calendar-blue.css">
<script src="jalalijscalendar/jalali.js"></script>
<script src="jalalijscalendar/calendar.js"></script>
<script src="jalalijscalendar/calendar-setup.js"></script>
<script src="jalalijscalendar/lang/calendar-fa.js"></script>


<script>

  Calendar.setup({
    inputField: 'date',
    ifFormat: '%Y-%m-%d %H:%M',
    dateType: 'jalali',
    showOthers  : true,
    weekNumbers : true,
    showsTime   : true,

});

  Calendar.setup({
    inputField: 'todate_value',
    ifFormat: '%Y-%m-%d',
    dateType: 'jalali',
    showOthers  : true,
    weekNumbers : true,

});
</script>

			<?PHP
			
			
		break;
	}
}
else
{
?>
<center>
<form method="post" action="index.php?do=guest_manage">
جستجو بر اساس نام و نام خانوادگی / شماره موبایل : <input type="text" name="search" class="input-t" size="45" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
</form>
</center>
<br /><br />
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center"><a href="index.php?do=<?=$url?>&sort=id&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">#</a></td>
    <td align="center">تصویر</td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=name&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">نام و نام خانوادگی</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=mobile&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">موبایل</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=type&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">نوع مهمان</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=ticket_all&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">بلیط خریداری شده</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=ticket_active&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">بلیط فعال</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=ticket_used&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">بلیط ابطالی</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=ticket_refund&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">بلیط مرجوعی</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=ticket_expired&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">بلیط تاریخ مصرف گذشته</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=status&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">وضعیت</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=date&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">تاریخ ثبت نام</a></td>
    <?PHP if (SUID == 0) echo '<td align="center">کاربر</td>'; ?>

    <td align="center" width="150">ابزار</td>
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
	$sql = $admin->sql("select * from $tblname where(name like '%$_POST[search]%' or mobile like '%$_POST[search]%')");
}
else
{
	if (isset($_GET['sort']))
	{
		$sql = $admin->sql("select * from $tblname order by $_GET[sort] $_GET[type] limit $start,$pagCo");
	}
	else
	{
		if (isset($_GET['op']) and $_GET['op'] == 'edit')
		{
			$sql = $admin->sql("select * from $tblname where (ref_id = '$_GET[id]') order by id asc limit $start,$pagCo");
		}
		else
		{
			$sql = $admin->sql("select * from $tblname order by id asc limit $start,$pagCo");
		}
		
	}
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
	
	$sql_block_report = $admin->sql("select * from guest_block where(user_id = '$row[id]')");
	if ($sql_block_report->num_rows == 1)
	{
		$block_report = $admin->row($sql_block_report);

		$link = 'index.php?do=guest_block_report&op=edit&id='.$block_report['id'];
	}
	else
	{
		$link = 'index.php?do=guest_block_add&userid='.$row['id'];
	}


//<a href="'.$link.'"><img src="images/block_add.png" border="0" align="texttop" alt="مسدود" title="مسدود"></a> &nbsp;&nbsp;&nbsp;
	//<a href="index.php?do=guest_block_report&userid='.$row['id'].'"><img src="images/block_manage.png" border="0" align="texttop" alt="گزارش" title="گزارش"></a>
	echo '
  <tr height="25" bgcolor="'.$color.'" class="tblrow">
    <td bgcolor="#d1d1d1" align="center">'.$row['id'].'</td>
	<td align="center">';

	if (empty($row['image']) or end(explode('.' , $row['image'])) == '')
	{
		echo '<img src="images/def.jpg" style="width:70px;">';
	}
	else
	{
		echo '<a href="upload/'.$row['image'].'" target="_blank"><img src="upload/'.$row['image'].'" style="width:70px;"></a>';
	}

	echo '</td>
	<td align="center">'.$row['name'].'</td>
	<td align="center">'.$row['mobile'].'</td>
	<td align="center">'.$row['type'].'</td>
	<td align="center">'.$row['ticket_all'].'</td>
	<td align="center">'.$row['ticket_active'].'</td>
	<td align="center">'.$row['ticket_used'].'</td>
	<td align="center">'.$row['ticket_refund'].'</td>
	<td align="center">'.$row['ticket_expired'].'</td>
	<td align="center">'.($row['status'] ? '<span style="color:red">مسدود</span>' : '<span style="color:green">فعال</span>').'</td>

	<td align="center"><span dir=ltr>'.$row['date'].'</span></td>
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="center">
	
	<a href="index.php?do='.$url.'&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;&nbsp;
	<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do='.$url.'&op=remove&id='.$row['id'].'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
	</td>
  </tr>
	';
	
	$x++;
}

if (mysqli_num_rows($sql) == 0)
	echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=13>متاسفانه نتیجه ای یافت نشد</td></tr>';


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
			
			$ret .= '<a href="index.php?do='.$url.'&start='.$start;
			
			if (isset($_GET['sort']))
				$ret .= '&sort='.$_GET['sort'];
			
			if (isset($_GET['type']))
				$ret .= '&type='.$_GET['type'];
			
			$ret .= '" '.$theme.'>'.$x.'</a>';
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
<!-- <td style="width:50%" valign="top">
						<table style="width:100%;">
							<tr>
								<td style="text-align:left;">
									<div class="image_area" style="background-image:url(';
			if (empty($editrow['image']) or $editrow['image'] == 'noimage')
			{
				echo 'images/def.jpg';
			}
			else
			{
				echo 'upload/'.$editrow['image'];
			}
				echo ')"></div>
								</td>
							</tr>
							<tr>
								<td style="text-align:left;">
									<input type="file" name="image" class="input-s" accept="image/*" capture="camera">
									'; /*<input type="button" value="دوربین" class="input-s"> */ echo '
								</td>
							</tr>
						</table>
					</td> -->