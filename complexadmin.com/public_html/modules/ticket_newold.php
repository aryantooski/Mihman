<?PHP
require_once("header.php");
require_once("menu.php");
?>
</td>
</tr>
<tr>
	<td valign="top">
		<div class="text-cont">
			<?PHP
			if (isset($_POST['post']))
			{
				$use_tag_sql = $admin->sql("select * from tags where (category_id = '$_POST[tags_category_id]')");
				if (mysqli_num_rows($use_tag_sql))
				{
					$coupon_sql = $admin->sql("select id from coupon where (serial = '$_POST[coupon]' and status = 'فعال')");
					if (mysqli_num_rows($coupon_sql) == 1 or empty($_POST['coupon']))
					{
						$tag = $admin->row($use_tag_sql);

						$admin->sql("update tags set status = 'active' where (id = '".$tag['id']."') limit 1");

						$sql = $admin->sql("insert into ticket set archive = 0 , suid = '".SUID."' , showtime_id = '$_POST[showtime_id]' , tag_category_id = '$_POST[tags_category_id]' , make_time = '".$admin->time('YmdHis')."' , make_time_stamp = '0' , description = '$_POST[description]' , login_amount = (select price from showtime where (id = '$_POST[showtime_id]')) , total_part_amount = '' , tag_discount = (select discount from tags_category where (id = '$_POST[tags_category_id]')) , tag_pledge = (select pledge from tags_category where (id = '$_POST[tags_category_id]')) , amount = '' , tag_id = '$tag[id]' , coupon_id = (select id from coupon where (serial = '$_POST[coupon]')) ");


						if ($sql)
						{

							$admin->sql("update coupon set status = 'استفاده شده' where (serial = '$_POST[coupon]') limit 1 ");

							$ticket_id = $admin->sql("select last_insert_id() as insert_id from ticket");
							$ticket_id = $admin->row($ticket_id);
							$ticket_id = $ticket_id['insert_id'];

							//$admin->sql("insert into tags_log set suid = '".SUID."' , datetime = '".$admin->time('Y-m-d H:i:s')."' , tag_id = '".$tag['id']."' , serial = '".$tag['serial']."' , details = 'اتصال تگ به بلیط $ticket_id' , status = 'active'  ");

							unset($_POST['post'] , $_POST['showtime_id'] , $_POST['tags_category_id'] , $_POST['description']);

							$count_slots = 0;
							foreach ($_POST as $k => $guest_id)
							{
								list($type , $gp , $vc) = explode('_' , $k);
								if ($gp == 'guest' and count($_POST[$type.'_part_'.$vc]))
								{
									foreach ($_POST[$type.'_part_'.$vc] as $u => $part_id)
									{
										$admin->sql("insert into ticket_part set ticket_id = '$ticket_id' , guest_id = '$guest_id' , part_id = '$part_id' , type = '$type' ");

										if ($type != 'free')
										{
											$total_part_amount += $admin->result($admin->sql("select ".$type."s_amount from part where (id = '$part_id') ") , 0);
											
										}

									}

									$count_slots++;
								}

							}

							$admin->sql("update ticket set login_amount = login_amount * $count_slots where (id = '$ticket_id') limit 1");
							$admin->sql("update ticket set total_part_amount = '$total_part_amount' where (id = '$ticket_id') limit 1");
							$admin->sql("update ticket set amount = login_amount + total_part_amount - tag_discount + tag_pledge  where (id = '$ticket_id') limit 1");




							$msg = "عملیات درخواستی با موفقیت انجام شد "; echo $admin->msg($msg , "true");
						}
						else
						{
							$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
						}
					}
					else
					{
						$msg = "کوپن وارد شده صحیح نیست"; echo $admin->msg($msg , "critical");
					}

				}
				else
				{
					$msg = "تگ به اندازه کافی موجود نیست"; echo $admin->msg($msg , "critical");
				}

				$admin->LOG('ثبت بلیط جدید' , $msg);


//if ($admin->sql("select status from guest where (id = '$_POST[guest_id]') limit 1")->fetch_object()->status == 1)
//{
//  $msg = "امکان ثبت بلیط برای مهمان مسدود وجود ندارد"; echo $admin->msg($msg , "critical");
//}
//else
//{



/*
$sql_showtime = $admin->sql("select * from showtime where id = '$_POST[showtime_id]' ");
$showtime = $admin->row( $sql_showtime);

$time_start = $showtime['start_date'].' '.$showtime['start_hour'].':'.$showtime['start_minute'].':00';
$time_finish = $showtime['end_date'].' '.$showtime['end_hour'].':'.$showtime['end_minute'].':00';



$sql = $admin->sql("insert into ticket (suid , guest_id , showtime_id , name, amount , time_start , time_finish , description , status , usetime , type) values('".SUID."' , '$_POST[guest_id]' , '$_POST[showtime_id]' , '$_POST[name]' , '$showtime[price]' , '$time_start' , '$time_finish' , '$_POST[description]' , 'فعال' , '".$admin->true_time()."' , '$_POST[type]')");
if  ($sql)
{
$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
}
else
{
$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
}
/*
}
else
{
$s = 0;
$r = 0;
for ($i = $_POST['code_from'] ; $i <= $_POST['code_to']; $i++)
{
$code = ($_POST['showtime_id']+1).'0000'.$i;

if (mysqli_num_rows(mysqli_query("select * from ticket where code = '$code'")) == 0)
{
$sql = $admin->sql("insert into ticket (suid , guest_id , showtime_id , name , code , amount , time_start , time_finish , description , status , usetime , type) values('".SUID."' , '$_POST[guest_id]' , '$_POST[showtime_id]' , '$_POST[name]' , '".$code."' , '".str_replace("," , "" , $_POST['amount'])."' , '$time_start' , '$time_finish' , '$_POST[description]' , 'فعال' , '".$admin->true_time()."' , '$_POST[type]')") or die(mysqli_error());

$s++;
}
else
{
$r++;
}
}

if  ($sql or true)
{

}
else
{

}
}*/


//}


}
?>

<script src="chosen/chosen.jquery.min.js"></script>
<link href="chosen/chosen.min.css" rel="stylesheet">

<div class="part_men" style="display:none;"></div>
<div class="part_women" style="display:none;"></div>
<div class="part_free" style="display:none;"></div>
<div class="part_men_personel" style="display:none;"></div>
<div class="part_women_personel" style="display:none;"></div>
<div class="part_free_mens" style="display:none;"></div>
<div class="part_free_womens" style="display:none;"></div>

<script type="text/javascript">

	function show_showtime()
	{
		$(".tags_category").attr("disabled" , "disabled");
		$(".tags_category_"+$("#showtime_id").val()).removeAttr('disabled');
		$(".tags_category").css("display" , "none");
		$(".tags_category_"+$("#showtime_id").val()).css("display" , "inline-block");

		if ($("#showtime_id").val() != '')
		{
			$("#showtime_data").html('آغاز : <span dir=ltr>' + $("#showtime_id option:selected").attr('data-start') + '</span> &nbsp;&nbsp;&nbsp; پایان : <span dir=ltr>' + $("#showtime_id option:selected").attr('data-end')+'</span> &nbsp;&nbsp;&nbsp; ظرفیت : <span dir=ltr>' + $("#showtime_id option:selected").attr('data-capacity')+'</span> نفر &nbsp;&nbsp;&nbsp; ورودی : <span dir=ltr>' + $("#showtime_id option:selected").attr('data-price')+'</span> تومان &nbsp;&nbsp;&nbsp; ' + $("#showtime_id option:selected").attr('data-persx')+'');
			$("#amount_showtime").html('<span style="color:green"> + '+$("#showtime_id option:selected").attr('data-price').replace(',' , '')+'</span>');


			if ($("#showtime_id option:selected").attr('data-usecoupon') == 'on')
			{
				$('#can_use_coupon').css({'display':'table-row'});
			}
			else
			{
				$('#can_use_coupon').css({'display':'none'});
			}

			update_total();
		}
		else
		{
			$("#showtime_data , #showtime_tags_category , .persons , #amount_parts , #amount_showtime , #amount_tagdiscount , #amount_tagpledge , #amount_total").html("");
			document.getElementById('mform').reset();
		}
	}
	var xc = ['men' , 'women' , 'free'];
	xc['men'] = 1;
	xc['women'] = 1;
	xc['free'] = 1;




var part = [];


part['mens'] = '<option value="">انتخاب کنید</option><?PHP
$part_sql = $admin->sql("select * from part where (mens_check = 'on') order by id desc");
while ($part = $admin->row($part_sql))
{
	if (($part['only_admin'] == 'on' and SUID == 0) or $part['only_admin'] != 'on')
	{
		echo '<option value="'.$part['id'].'" data-ip="'.$part['ip'].'" data-mensamount="'.number_format($part['mens_amount']).'" data-womensamount="'.number_format($part['womens_amount']).'" >'.$part['name'].'</option>';
	}
}
?>';



part['womens'] = '<option value="">انتخاب کنید</option><?PHP
$part_sql = $admin->sql("select * from part where (womens_check = 'on') order by id desc");
while ($part = $admin->row($part_sql))
{
	if (($part['only_admin'] == 'on' and SUID == 0) or $part['only_admin'] != 'on')
	{
		echo '<option value="'.$part['id'].'" data-ip="'.$part['ip'].'" data-mensamount="'.number_format($part['mens_amount']).'" data-womensamount="'.number_format($part['womens_amount']).'" >'.$part['name'].'</option>';
	}
}
?>';



part['mens_personel'] = '<option value="">انتخاب کنید</option><?PHP
$part_sql = $admin->sql("select * from part where (mens_personel_check = 'on') order by id desc");
while ($part = $admin->row($part_sql))
{
	if (($part['only_admin'] == 'on' and SUID == 0) or $part['only_admin'] != 'on')
	{
		echo '<option value="'.$part['id'].'" data-ip="'.$part['ip'].'" data-mensamount="'.number_format($part['mens_amount']).'" data-womensamount="'.number_format($part['womens_amount']).'" >'.$part['name'].'</option>';
	}
}
?>';



part['womens_personel'] = '<option value="">انتخاب کنید</option><?PHP
$part_sql = $admin->sql("select * from part where (womens_personel_check = 'on') order by id desc");
while ($part = $admin->row($part_sql))
{
	if (($part['only_admin'] == 'on' and SUID == 0) or $part['only_admin'] != 'on')
	{
		echo '<option value="'.$part['id'].'" data-ip="'.$part['ip'].'" data-mensamount="'.number_format($part['mens_amount']).'" data-womensamount="'.number_format($part['womens_amount']).'" >'.$part['name'].'</option>';
	}
}
?>';


part['free'] = '<option value="">انتخاب کنید</option><?PHP
$part_sql = $admin->sql("select * from part order by id desc");
while ($part = $admin->row($part_sql))
{
echo '<option value="'.$part['id'].'" data-ip="'.$part['ip'].'" data-mensamount="'.number_format($part['mens_amount']).'" data-womensamount="'.number_format($part['womens_amount']).'" >'.$part['name'].'</option>';
}
?>';


part['free_mens'] = '<option value="">انتخاب کنید</option><?PHP
$part_sql = $admin->sql("select * from part where (mens_check = 'on') order by id desc");
while ($part = $admin->row($part_sql))
{
echo '<option value="'.$part['id'].'" data-ip="'.$part['ip'].'" data-mensamount="'.number_format($part['mens_amount']).'" data-womensamount="'.number_format($part['womens_amount']).'" >'.$part['name'].'</option>';
}
?>';


part['free_womens'] = '<option value="">انتخاب کنید</option><?PHP
$part_sql = $admin->sql("select * from part where (womens_check = 'on') order by id desc");
while ($part = $admin->row($part_sql))
{
echo '<option value="'.$part['id'].'" data-ip="'.$part['ip'].'" data-mensamount="'.number_format($part['mens_amount']).'" data-womensamount="'.number_format($part['womens_amount']).'" >'.$part['name'].'</option>';
}
?>';




	function show_tags_category(showtime_id)
	{


		if ($(".tags_category_"+showtime_id).val() != '')
		{
			$("#showtime_tags_category").html('نوع تگ : ' + $(".tags_category_"+showtime_id+" option:selected").attr('data-type') + ' &nbsp;&nbsp;&nbsp; رنگ : ' + $(".tags_category_"+showtime_id+" option:selected").attr('data-colorname')+' <span style="width:15px; height:15px; border:1px solid #999; display:inline-block; background-color:'+$(".tags_category_"+showtime_id+" option:selected").attr('data-colorcode')+'"></span> &nbsp;&nbsp;&nbsp; گرویی : ' + $(".tags_category_"+showtime_id+" option:selected").attr('data-pledge')+' &nbsp;&nbsp;&nbsp; آقا : ' + $(".tags_category_"+showtime_id+" option:selected").attr('data-menscount')+' &nbsp; خانم : ' + $(".tags_category_"+showtime_id+" option:selected").attr('data-womenscount')+' &nbsp; آزاد : ' + $(".tags_category_"+showtime_id+" option:selected").attr('data-freescount')+' &nbsp; &nbsp;&nbsp; تخفیف تگ : ' + $(".tags_category_"+showtime_id+" option:selected").attr('data-discount')+'');

		}
		else
		{
			$("#showtime_tags_category , .persons , #amount_parts , #amount_showtime , #amount_tagdiscount , #amount_tagpledge , #amount_total").html("");

		}


		var persons = '';
		var guest = '<option value="">انتخاب کنید</option><?PHP
		$guest_sql = $admin->sql("select * from guest order by id desc");
		while ($guest = $admin->row($guest_sql))
		{
			echo '<option value="'.$guest['id'].'" data-block="'.($admin->guest_is_block($guest['id']) ? 'yes' : 'no').'" data-sex="'.$guest['sex'].'">'.$guest['name'].'</option>';
		}
		?>';

		var guest_mens = '<option value="">انتخاب کنید</option><?PHP
		$guest_sql = $admin->sql("select * from guest where sex = 'مرد' order by id desc");
		while ($guest = $admin->row($guest_sql))
		{
			echo '<option value="'.$guest['id'].'" data-block="'.($admin->guest_is_block($guest['id']) ? 'yes' : 'no').'" data-sex="'.$guest['sex'].'">'.$guest['name'].'</option>';
		}
		?>';

		var guest_wemens = '<option value="">انتخاب کنید</option><?PHP
		$guest_sql = $admin->sql("select * from guest where sex = 'زن' order by id desc");
		while ($guest = $admin->row($guest_sql))
		{
			echo '<option value="'.$guest['id'].'" data-block="'.($admin->guest_is_block($guest['id']) ? 'yes' : 'no').'" data-sex="'.$guest['sex'].'">'.$guest['name'].'</option>';
		}
		?>';

		var personel_mens = '<option value="">انتخاب کنید</option><?PHP
		$personel_sql = $admin->sql("select * from personel where gender = 'مرد' order by id desc");
		while ($personel = $admin->row($personel_sql))
		{
			echo '<option value="'.$personel['id'].'" data-block="no" data-sex="'.$guest['sex'].'">'.$personel['name'].'</option>';
		}
		?>';

		var personel_wemens = '<option value="">انتخاب کنید</option><?PHP
		$personel_sql = $admin->sql("select * from personel where gender = 'زن' order by id desc");
		while ($personel = $admin->row($personel_sql))
		{
			echo '<option value="'.$personel['id'].'" data-block="no" data-sex="'.$guest['sex'].'">'.$personel['name'].'</option>';
		}
		?>';


		var personel = '<option value="">انتخاب کنید</option><?PHP
		$personel_sql = $admin->sql("select * from personel order by id desc");
		while ($personel = $admin->row($personel_sql))
		{
			echo '<option value="'.$personel['id'].'" data-block="no" data-sex="all">'.$personel['name'].'</option>';
		}
		?>';

/*
var part = '<option value="">انتخاب کنید</option><?PHP
$part_sql = $admin->sql("select * from part order by id desc");
while ($part = $admin->row($part_sql))
{
echo '<option value="'.$part['id'].'" data-ip="'.$part['ip'].'" data-mensamount="'.number_format($part['mens_amount']).'" data-womensamount="'.number_format($part['womens_amount']).'" >'.$part['name'].'</option>';
}
?>';
*/


$(".part_men").html(part['mens']);
$(".part_women").html(part['womens']);
$(".part_men_personel").html(part['mens_personel']);
$(".part_women_personel").html(part['womens_personel']);
$(".part_free").html(part['free']);
$(".part_free_mens").html(part['free_mens']);
$(".part_free_womens").html(part['free_womens']);


for (var i = 0 ; i < parseInt($(".tags_category_"+showtime_id+" option:selected").attr('data-menscount')) ; i++ )
{
	if ($(".tags_category_"+showtime_id+" option:selected").attr('data-type') == 'مهمان')
	{
		var ldox = guest_mens;
	}
	else
	{
		var ldox = personel_mens;
	}

	persons += '<tr><td width=80>آقا : </td><td><select name="men_guest_'+i+'" class="input-s chosen chosen-rtl guest_select">'+ldox+'</select></td></tr><tr><td>بخش : </td><td><select name="men_part_'+i+'['+xc['men']+']" id="men_part_'+i+'_1" class="input-s parts_ax" onchange="show_parts(\'men\' , \''+i+'\' , \'1\')">'+part['mens']+'</select> &nbsp;&nbsp; <span id="parts_data_men_guest_'+i+'_'+xc['men']+'"></span></td></tr><tr><td>&nbsp;</td><td><div id="men_part_'+i+'_place"></div><a href="javascript:void(0)" onclick="append_part(\'men\' , \''+i+'\')"><img src="images/add.png"></a></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr>';
}

for (var i = 0 ; i < parseInt($(".tags_category_"+showtime_id+" option:selected").attr('data-womenscount')) ; i++ )
{
	//persons += '<tr><td width=80>خانم : </td><td><select name="women_guest_'+i+'" class="input-s">'+guest+'</select></td></tr><tr><td>بخش : </td><td><select name="women_part_'+i+'" id="women_part_'+i+'" class="input-s" onchange="show_parts(\'women\' , \''+i+'\')">'+part+'</select> &nbsp;&nbsp; <span id="parts_data_women_guest_'+i+'"></span></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr>';

	if ($(".tags_category_"+showtime_id+" option:selected").attr('data-type') == 'مهمان')
	{
		var ldox = guest_wemens;
	}
	else
	{
		var ldox = personel_wemens;
	}


	persons += '<tr><td width=80>خانم : </td><td><select name="women_guest_'+i+'" class="input-s chosen chosen-rtl guest_select">'+ldox+'</select></td></tr><tr><td>بخش : </td><td><select name="women_part_'+i+'['+xc['women']+']" id="women_part_'+i+'_1" class="input-s parts_ax" onchange="show_parts(\'women\' , \''+i+'\' , \'1\')">'+part['womens']+'</select> &nbsp;&nbsp; <span id="parts_data_women_guest_'+i+'_'+xc['women']+'"></span></td></tr><tr><td>&nbsp;</td><td><div id="women_part_'+i+'_place"></div><a href="javascript:void(0)" onclick="append_part(\'women\' , \''+i+'\')"><img src="images/add.png"></a></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr>';
}

for (var i = 0 ; i < parseInt($(".tags_category_"+showtime_id+" option:selected").attr('data-freescount')) ; i++ )
{

	if ($(".tags_category_"+showtime_id+" option:selected").attr('data-type') == 'مهمان')
	{
		var ldox = guest;
	}
	else
	{
		var ldox = personel;
	}


	persons += '<tr><td width=80>آزاد : </td><td><select name="free_guest_'+i+'" class="input-s chosen chosen-rtl guest_select free_guest_'+i+'" onchange="show_unders(\'free_guest_'+i+'\' , '+i+')">'+ldox+'</select></td></tr><tr><td>بخش : </td><td><span class="free_guest_'+i+'_parts">انتخاب کنید</span></td></tr><tr><td>&nbsp;</td><td><span class="free_guest_'+i+'_append"></span></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr>';

//persons += '<tr><td width=80>آزاد : </td><td><select name="free_guest_'+i+'" class="input-s">'+guest+'</select></td></tr><tr><td>بخش : </td><td><select name="free_part_'+i+'" id="free_part_'+i+'" class="input-s" onchange="show_parts(\'free\' , \''+i+'\')">'+part+'</select> &nbsp;&nbsp; <span id="parts_data_free_guest_'+i+'"></span></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr>';
}

$(".persons").html('<table cellpadding="2">'+persons+'</table>');



update_total();
}

function show_unders(selector , i)
{
	switch ($("."+selector+" option:selected").attr('data-sex'))
	{
		case 'مرد' :
			$("."+selector+"_parts").html('<select name="men_part_'+i+'['+xc['free']+']" id="men_part_'+i+'_1" class="input-s parts_ax" onchange="show_parts(\'free\' , \''+i+'\' , \'1\')">'+part['free_mens']+'</select> &nbsp;&nbsp; <span id="parts_data_free_guest_'+i+'_'+xc['free']+'"></span>');

			$("."+selector+"_append").html('<div id="men_part_'+i+'_place"></div><a href="javascript:void(0)" onclick="append_part(\'free\' , \''+i+'\')"><img src="images/add.png"></a>');
		break;

		case 'زن' :
			$("."+selector+"_parts").html('<select name="women_part_'+i+'['+xc['free']+']" id="women_part_'+i+'_1" class="input-s parts_ax" onchange="show_parts(\'free\' , \''+i+'\' , \'1\')">'+part['free_womens']+'</select> &nbsp;&nbsp; <span id="parts_data_free_guest_'+i+'_'+xc['free']+'"></span>');

			$("."+selector+"_append").html('<div id="women_part_'+i+'_place"></div><a href="javascript:void(0)" onclick="append_part(\'free\' , \''+i+'\')"><img src="images/add.png"></a>');

		break;

		case 'all' :
			$("."+selector+"_parts").html('<select name="free_part_'+i+'['+xc['free']+']" id="free_part_'+i+'_1" class="input-s parts_ax" onchange="show_parts(\'free\' , \''+i+'\' , \'1\')">'+part['free_womens']+'</select> &nbsp;&nbsp; <span id="parts_data_free_guest_'+i+'_'+xc['free']+'"></span>');

			$("."+selector+"_append").html('<div id="free_part_'+i+'_place"></div><a href="javascript:void(0)" onclick="append_part(\'free\' , \''+i+'\')"><img src="images/add.png"></a>');

		break;
	}
	
}

function append_part(type , i)
{
	xc[type] = xc[type] + 1 ;
	
	var html = '';


	if (type == 'free')
	{
		switch ($(".free_guest_"+i+" option:selected").attr('data-sex'))
		{
			case 'مرد' :
				html = $(".part_free_mens").html();
			break;

			case 'زن' :
				html = $(".part_free_womens").html();
			break;
		}
	}
	else
	{
		html = $(".part_"+type).html()
	}

	console.log(xc);

	text_append = '<div><select name="'+type+'_part_'+i+'['+xc[type]+']" id="'+type+'_part_'+i+'_'+xc[type]+'" class="input-s parts_ax" onchange="show_parts(\''+type+'\' , \''+i+'\' , \''+xc[type]+'\')">'+html+'</select> &nbsp;&nbsp; <span id="parts_data_'+type+'_guest_'+i+'_'+xc[type]+'"></span></div>';

	$('#'+type+'_part_'+i+'_place').append(text_append);

	update_total();
}



function show_parts(type , i , x)
{
	var amount_type = '';

	if (type == 'free')
	{
		switch ($(".free_guest_"+i+" option:selected").attr('data-sex'))
		{
			case 'مرد' :
				amount_type = 'men';
			break;

			case 'زن' :
				amount_type = 'women';
			break;
		}
	}
	else
	{
		amount_type = type
	}
	

	if ($("#"+type+"_part_"+i+"_"+x).val() != '')
	{
		//console.debug(type , i , x);
		$("#parts_data_"+type+"_guest_"+i+"_"+x).html('آدرس دستگاه : ' + $("#"+type+"_part_"+i+"_"+x+" option:selected").attr('data-ip') + ' &nbsp;&nbsp;&nbsp; قیمت : <span class="parts">' + $("#"+type+"_part_"+i+"_"+x+" option:selected").attr('data-'+amount_type+'samount')+'</span>');
		update_total();
	}
	else
	{
		$("#parts_data_"+type+"_guest_"+i+"_"+x).html("");
	}
}

function update_total()
{
	$(".chosen").chosen({'width':'200px'});
	var showtime_id = $("#showtime_id").val();

	

	$("#amount_tagpledge").html('<span style="color:green"> + '+(parseInt($(".tags_category_"+showtime_id+" option:selected").attr('data-pledge').replace(',' , '')) *  parseInt($(".parts_ax").length) )+'</span>');

	$("#amount_tagdiscount").html('<span style="color:red"> - '+parseInt($(".tags_category_"+showtime_id+" option:selected").attr('data-discount').replace(',' , ''))+'</span>');
	$("#amount_coupondiscount").html('<span style="color:red"> - '+parseInt($("#coupon_discount").val())+'</span>');

	$("#amount_showtime").html('<span style="color:green"> + '+parseInt($("#showtime_id option:selected").attr('data-price').replace(',' , '') *  parseInt($(".guest_select").length) )+'</span>');


	var parts = 0;
	$(".parts").each(function (index , obj){
//console.debug($(obj).html().replace(',' , ''));
parts += parseInt($(obj).html().replace(',' , ''));
});

	$("#amount_parts").html('<span style="color:green">+ '+parts+'</span>');

	var total = 0;
	total += parseInt($("#amount_showtime span").html().replace('+' , ''));
	total += parts;
	total -= parseInt($("#amount_tagdiscount span").html().replace('-' , ''));
	total -= parseInt($("#amount_coupondiscount span").html().replace('-' , ''));
	total += parseInt($("#amount_tagpledge span").html().replace('+' , ''));

	$("#amount_total").html(total+' تومان');
}

function validate()
{
	var error = false;
	var not_select_anyone = true;

	$('.guest_select').each(function (index, value) {
		
		if ($(this).find(":selected").attr('value') != '')
		{
			not_select_anyone = false;
		}

		if ($(this).find(":selected").attr('data-block') == 'yes')
		{
			alert('امکان ثبت بلیط برای شخصی که مسدود است وجود ندارد - '+$(this).find(":selected").html());
			error = true;
			return false;
		}
	});

	if (not_select_anyone)
	{
		alert('نام میهمان در اسلات ثبت نشده است');
		return false;
	}

	if (coupon_error)
	{
		alert('گیفت کارت صحیح نیست');
		return false;
	}

	if (error)
	{
		return false;
	}
}

var coupon_error = false;

function show_coupon_data()
{
	if ($("#coupon_text").val() == '')
	{
		coupon_error = false;
		$('#coupun_data').html('');
	}
	else
	{
		$('#coupun_data').html('<img src="images/loading.gif">');

		$.ajax({
			data:"coupon="+$("#coupon_text").val(),
			type:"POST",
			url:"core.php?act=validate_coupon",
			success: function(data){

				switch (data)
				{
					case 'notfound' :
						data = '<span style="color:red">سریال کوپن موجود نیست</span>';
						coupon_error = true;
					break;

					case 'used' :
						data = '<span style="color:red">سریال کوپن قبلا استفاده شده است</span>';
						coupon_error = true;
					break;

					case 'reserved' :
						data = '<span style="color:red">سریال کوپن رزرو شده است</span>';
						coupon_error = true;
					break;

				}

				$('#coupun_data').html(data);

				if ($('#coupon_discount').val() > 0)
				{
					$('#amount_coupondiscount').html('<span style="color:green">'+$('#coupon_discount').val()+'</span>');
				}
			}
		});
	}
}

</script>


<div class="add-in">
	<b class="bx">ثبت بلیط جدید : </b>
	<div class="co">
		<form method="post" action="" id="mform" enctype="multipart/form-data" onsubmit="return validate()">
			<input type="hidden" name="post" />
			<table cellpadding="2" width="100%">
				<tr>
					<td width="80">عنوان سانس : </td>
					<td>

						<select name="showtime_id" id="showtime_id" class="input-s" onchange="show_showtime()" required>
							<option value="">انتخاب کنید</option>
							<?PHP
							$sql = $admin->sql("select * from showtime where (archive = 0) order by id desc");
							while ($r = $admin->row($sql))
							{
								$persx = stripos($r['type'], 'مهمان آقا') !== false ? '<img src=\'images/1.png\'>' : '';
								$persx .= stripos($r['type'], 'مهمان خانم') !== false ? '<img src=\'images/2.png\'>' : '';
								$persx .= stripos($r['type'], 'پرسنل آقا') !== false ? '<img src=\'images/3.png\'>' : '';
								$persx .= stripos($r['type'], 'پرسنل خانم') !== false ? '<img src=\'images/4.png\'>' : '';

								echo '<option value="'.$r['id'].'" data-id="'.$r['id'].'" data-price="'.$r['price'].'" data-capacity="'.$r['capacity'].'" data-persx="'.$persx.'" data-start="'.$r['start_date'].' '.$r['start_hour'].':'.$r['start_minute'].'" data-end="'.$r['end_date'].' '.$r['end_hour'].':'.$r['end_minute'].'" data-usecoupon="'.$r['use_coupon'].'">'.$r['name'].'</option>';
							}
							?>
						</select> &nbsp;&nbsp; <span id="showtime_data"></span>
					</td>
				</tr>

				<tr style="display:none" id="can_use_coupon">
					<td>گیفت کارت : </td>
					<td><input type="text" name="coupon" id="coupon_text" dir="ltr" class="input-t" onkeyup="show_coupon_data()" onpaste="show_coupon_data()"> <span id="coupun_data"><input type="hidden" name="coupon_discount" id="coupon_discount" value="0"></span></td>
				</tr>


				<tr>
					<td>گروه تگ : </td>
					<td>
						<?PHP
						$sql = $admin->sql("select * from showtime");
						while ($row = $admin->row($sql))
						{
							?>
							<select name="tags_category_id" id="tags_category_id" class="input-s tags_category tags_category_<?=$row[id]?>" onchange="show_tags_category('<?=$row[id]?>')" required disabled="disabled" style="display: none;">
								<option value="">انتخاب کنید</option>
								<?PHP
								$s = $admin->sql("select * from tags_category where (id IN(select tags_category_id from showtime_tagscategory where (showtime_id = '$row[id]'))) order by id desc");
								while ($r = $admin->row($s))
								{
									if (($r['only_admin'] == 'on' and SUID == 0) or $r['only_admin'] != 'on')
									{
										echo '<option value="'.$r['id'].'" data-id="'.$r['id'].'" data-colorname="'.$r['color_name'].'" data-colorcode="'.$r['color_code'].'" data-pledge="'.number_format($r['pledge']).'" data-pledgetotal="'.number_format($r['pledge'] * ($r['mens_count']+$r['womens_count']+$r['frees_count']) ).'" data-type="'.$r['type'].'" data-mens="'.$r['mens'].'" data-menscount="'.$r['mens_count'].'" data-womens="'.$r['womens'].'" data-womenscount="'.$r['womens_count'].'" data-frees="'.$r['frees'].'" data-freescount="'.$r['frees_count'].'" data-discount="'.number_format($r['discount']).'" >'.$r['name'].'</option>';
									}
								}
								?>
							</select>


							<?PHP
						}
						?>
						&nbsp;&nbsp; <span id="showtime_tags_category"></span>
					</td>
				</tr>

			</table>
			<br><br>
			<div class="persons"></div>
			<br><br>
			<table cellpadding="2">
				<tr>
					<td width="80">&nbsp;</td>
					<td>
						<table cellpadding="4">
							<tr>
								<td>ورودی سانس : </td>
								<td width="80"><span id="amount_showtime"></span></td>
								<td>&nbsp;</td>
								<td>کل بخش ها : </td>
								<td width="80"><span id="amount_parts"></span></td>
								<td>&nbsp;</td>
								<td>تخفیف تگ : </td>
								<td width="80"><span id="amount_tagdiscount"></span></td>
								<td>&nbsp;</td>
								<td>تخفیف کوپن : </td>
								<td width="80"><span id="amount_coupondiscount"></span></td>
								<td>&nbsp;</td>
								<td>گرویی تگ ها : </td>
								<td width="80"><span id="amount_tagpledge"></span></td>
								<td>&nbsp;</td>
								<td>مبلغ قابل پرداخت : </td>
								<td><span id="amount_total" style="font-weight:bold; font-size:12pt;"></span></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>توضیحات : </td>
					<td><textarea name="description" class="input-s" style="width:300px;"></textarea></td>
				</tr>

				<tr>
					<td>&nbsp;</td>
					<td><input type="submit" value="تایید" class="input-b" /> زمان صدور بلیط : <span style="direction: ltr; font-weight: bold;" dir="ltr"><?PHP echo $admin->true_time() ?></span></td>
				</tr>
			</table>

		</form>
	</div>
</div>
</div>
</td>
</tr>
</table>
