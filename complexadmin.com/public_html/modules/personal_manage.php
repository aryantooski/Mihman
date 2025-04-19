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
<b class="bx">مدیریت پرسنل : </b>
<div class="co">
<?PHP
$tblname = 'personel';
$pagCo = 20;
$url = 'personal_manage';
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
			
			$admin->LOG('مدیریت پرسنل - حذف' , $msg);
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
					<td>نوع همکاری : </td>
					<td><input type="text" name="type" class="input-t" value="'.$editrow['type'].'" required/> <span style="color:red">*</span></td>
				  </tr>
				  <tr>
					<td>نام و نام خانوادگی : </td>
					<td><input type="text" name="name" class="input-t" value="'.$editrow['name'].'" required/> <span style="color:red">*</span></td>
				  </tr>
				  <tr>
				    <td>جنسیت : </td>
				    <td>
				    ';
				    $sxxy[$editrow['gender']] = 'selected=selected';
				    echo '
				    <select name="gender" class="input-s" required>
				      <option value="">انتخاب کنید</option>
				      <option '.$sxxy['مرد'].' value="مرد">مرد</option>
				      <option '.$sxxy['زن'].' value="زن">زن</option>
				    </select> <span style="color:red">*</span>
				    </td>
				  </tr>
				  <tr>
					<td>کد ملی : </td>
					<td><input type="text" name="ntcode" class="input-t" dir="ltr" value="'.$editrow['ntcode'].'" /> بدون خط تیره</td>
				  </tr>
				  <tr>
					<td>شماره شناسنامه : </td>
					<td><input type="text" name="shsh" class="input-t" dir="ltr" value="'.$editrow['shsh'].'" /></td>
				  </tr>
				  ';
				  /*
				  <tr>
					<td>حداقل ساعت کارکرد در روز : </td>
					<td><input type="text" name="hour_per_day" class="input-t" dir="ltr" size="15" value="'.$editrow['hour_per_day'].'" /> ساعت</td>
				  </tr>
				  */
				  echo '
				  <tr>
				    <td>نوع دستمزد : </td>
				    <td>
				    ';
				    $sxx[$editrow['amount_type']] = 'selected=selected';
				    echo '
				    <select name="amount_type" class="input-s" required>
				      <option value="">انتخاب کنید</option>
				      <option '.$sxx['ساعتی'].' value="ساعتی">ساعتی</option>
				      <option '.$sxx['روزانه'].' value="روزانه">روزانه</option>
				    </select> <span style="color:red">*</span>
				    </td>
				  </tr>

				  <tr>
				    <td>پرداختی : </td>
					<td><input type="text" name="amount_per_hour" class="input-t" dir="ltr" '.NUMERAL.' required value="'.$editrow['amount_per_hour'].'" /> <span style="color:red">*</span> تومان</td>
				  </tr>
				  <tr>
					<td>شماره بیمه : </td>
					<td><input type="text" name="insurance" class="input-t" dir="ltr" value="'.$editrow['insurance'].'" /></td>
				  </tr>
				  
				  <tr>
					<td>نام پدر : </td>
					<td><input type="text" name="fathername" class="input-t" value="'.$editrow['fathername'].'" /></td>
				  </tr>
				  <tr>
					<td>تاریخ تولد : </td>
					<td><input type="text" name="birthdate" class="input-t" dir="ltr" value="'.$editrow['birthdate'].'"/></td>
				  </tr>
				  <tr>
					<td>محل کار : </td>
					<td><input type="text" name="workplace" class="input-t" value="'.$editrow['workplace'].'" required/> <span style="color:red">*</span></td>
				  </tr>

				  <tr>
					<td>شماره تماس : </td>
					<td><input type="text" name="tel" class="input-t" dir="ltr" value="'.$editrow['tel'].'" required/> <span style="color:red">*</span></td>
				  </tr>
				  <tr>
					<td>آدرس : </td>
					<td><textarea name="address" style="width: 250px;" class="input-s" required>'.$editrow['address'].'</textarea> <span style="color:red">*</span></td>
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
			?>
			<ul class="tabsx">
				<li><a href="javascript:void(0)" class="head_1 <?=$tab_vew['head_1']?>" onclick="show_tab(1)">بلیط ها</a></li>
				<li><a href="javascript:void(0)" class="head_2 <?=$tab_vew['head_2']?>" onclick="show_tab(2)">تگ</a></li>
				<li><a href="javascript:void(0)" class="head_3 <?=$tab_vew['head_3']?>" onclick="show_tab(3)">بخش</a></li>
			</ul>
			<div class="cls"></div>
			<div class="tab_content">
				
				<div class="tabone tab_1">
					<table cellspacing="0" cellpadding="4" border="1" bordercolor="#FFFFFF" style="color:#069" width="100%">
						<tr>
						
							<td bgcolor="#88b3c9" style="color:#FFFFFF">تعداد کل بلیط : </td>
							<td align="center" bgcolor="#e2f5ff"><?=$admin->sql("select count(*) as cnt from ticket where (archive = 0 and id IN(select ticket_id from ticket_part where (guest_id = '$_GET[id]')))")->fetch_object()->cnt?></td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF">بلیط های این شخص : </td>
							<td align="center" bgcolor="#e2f5ff">???</td>
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
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center">#</td>
    <td align="center">سانس و بلیط</td>
    <td align="center">خریدار</td>
    <td align="center">گروه تگ</td>
    <td align="center">بن تخفیف</td>
    
    <td align="center">مبلغ ورودی</td>
    <td align="center">کل بخش ها</td>
    <td align="center">تخفیف تگ</td>
    <td align="center">گرویی تگ</td>
    <td align="center">مبلغ قابل پرداخت</td>
    <td align="center">زمان صدور</td>
    
    <?PHP if (SUID == 0) echo '<td width="50" align="center">کاربر</td>'; ?>
    <td width="170" align="center">ابزار</td>
  </tr>
<?PHP
$sql = $admin->sql("select * from ticket where (archive = 0 and id IN(select ticket_id from ticket_part where (guest_id = '$_GET[id]'))) order by id desc");

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
	
	
	
	<td align="center">'.number_format($row['login_amount']).' تومان</td>
	<td align="center">'.number_format($row['total_part_amount']).' تومان</td>
	<td align="center">'.number_format($row['tag_discount']).' تومان</td>
	<td align="center">'.number_format($row['tag_pledge']).' تومان</td>
	<td align="center">'.number_format($row['amount']).' تومان</td>
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

				<div class="tabone tab_2">
					

<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center"><a href="index.php?do=<?=$url?>&sort=id&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">#</a></td>
    <td align="center">تگ و سریال</td>
    <td align="center">سانس و شماره بلیط</td>
    <td align="center">زمان</td>
    <td align="center">عملیات</td>
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


$sql = $admin->sql("select * from tags_log where (guest_id = '$_GET[id]') order by id desc");



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
</table>


				</div>

				<div class="tabone tab_3">

					aaas

				</div>
			</div>

















































				<?PHP
			}
			else
			{
				/*
				$type = '';
				if ($_POST['t1'] == 'on')
					$type .= 'پرسنل,';
				
				if ($_POST['t2'] == 'on')
					$type .= 'مربی آموزشی,';
				
				if ($_POST['t3'] == 'on')
					$type .= 'ناجی,';
				
				$type = substr($type , 0 , strlen($type) - 1);
				*/
				$updsql = $admin->sql("update $tblname set type = '$_POST[type]' , name = '$_POST[name]' , gender = '$_POST[gender]' , ntcode = '$_POST[ntcode]' , shsh = '$_POST[shsh]' , hour_per_day = '$_POST[hour_per_day]' , amount_type = '$_POST[amount_type]' , amount_per_hour = '".str_replace("," , "" , $_POST[amount_per_hour])."' , insurance = '$_POST[insurance]' , address = '$_POST[address]' , fathername = '$_POST[fathername]' , birthdate = '$_POST[birthdate]' , workplace = '$_POST[workplace]' , workplace_code = '$_POST[workplace_code]' , tel = '$_POST[tel]' where id = '$_GET[id]' limit 1");

				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				
				$admin->LOG('مدیریت پرسنل - ویرایش' , $msg);
			}
		break;
	}
}

if ($_GET['op'] != 'edit')
{
	?>
	<center>
	<form method="post" action="">
	جستجو بر اساس نام و نام خانوادگی / موبایل : <input type="text" name="search" class="input-t" size="45" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
	</form>
	</center>
	<br /><br />
	<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
	  <tr bgcolor="#cccccc" height="30">
	    <td width="40" align="center"><a href="index.php?do=<?=$url?>&sort=id&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">#</a></td>
	    <td align="center"><a href="index.php?do=<?=$url?>&sort=name&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">نام و نام خانوادگی</a></td>
	    <td align="center"><a href="index.php?do=<?=$url?>&sort=type&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">نوع همکاری</a></td>
	    <td align="center"><a href="index.php?do=<?=$url?>&sort=tel&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">شماره تماس</a></td>
	    <td align="center"><a href="index.php?do=<?=$url?>&sort=gender&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">جنسیت</a></td>
	    <td align="center"><a href="index.php?do=<?=$url?>&sort=amount_per_hour&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">دستمزد</a></td>
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
		$sql = $admin->sql("select * from $tblname where(name like '%$_POST[search]%' or tel like '%$_POST[search]%')");
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
		<td align="center">'.$row['type'].'</td>
		<td align="center">'.$row['tel'].'</td>
		<td align="center">'.$row['gender'].'</td>
		<td align="center">'.$row['amount_type'].' '.@number_format($row['amount_per_hour']).' تومان</td>
		';
		if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
	    <td align="center">
		<a href="index.php?do='.$url.'&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do='.$url.'&op=remove&id='.$row['id'].'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
		</td>
	  </tr>
		';
		
		$x++;
	}

	if (mysqli_num_rows($sql) == 0)
		echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=9>متاسفانه نتیجه ای یافت نشد</td></tr>';


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
