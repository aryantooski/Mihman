<?PHP
if (!defined("SECURITY_CHECK"))
{
	die("SECURITY CHECK FAILED ON THIS FILE . FORBIDDEN USE");
}
else
{
	if (SECURITY_CHECK != "MOHAMMAD_REZA_POURSOLTAN")
	{
		die("SECURITY CHECK FAILED ON THIS FILE . FORBIDDEN USE");
	}
}

define ("NUMERAL" , ' onkeyup="checkComma(this);" onkeypress="return checkDigit();"');

$autologoutmin = $admin->result($admin->sql("select autologoutmin from admin"));


if ($autologoutmin > 0)
{
	if ((($_SESSION['lastviewstamp'] + ($autologoutmin * 60)) < time()) and ($_GET['do'] != 'logout' and $_GET['do'] != 'login'))
	{
		exit('<meta http-equiv="refresh" content="0;URL=index.php?do=logout">'); 
	}
}
$_SESSION['lastviewstamp'] = time();
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title><?=$admin->sql("select name from admin")->fetch_object()->name?></title>
<link href="inc/main.css" rel="stylesheet" type="text/css">
<script src="inc/SpryTabbedPanels.js?v=1" type="text/javascript"></script>
<script src="chosen/jquery.js"></script>
<link href="inc/SpryTabbedPanels.css?v=1" rel="stylesheet" type="text/css">
<META content="Mohammad Reza Poursoltan.com" name="author">
<META content="Dmarket System" name="publisher">
<META content="نرم افزار مدیریت مجموعه پارنیک - www.mihanservice.com" name="copyright">
<link href="inc/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="inc/bootstrap.min.js"></script>


</head>
<body>

<div id="description_modal" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title description_modal-title">ویرایش توضیحات</h4>
			</div>
			<div class="modal-body">
				<p>
					<form method="post" action="" id="description_form" onsubmit="return description_submit()">
						<div class="form-group">
							<label for="new_description" style="font-weight: bold; display: block;">توضیحات : </label>
							<textarea name="new_description" id="new_description" style="width: 100%; height: 60px;"></textarea>
						</div>
						<button type="submit" class="btn btn-success">ذخیره</button><button type="button" class="btn btn-default pull-left" data-dismiss="modal">بستن</button>
					</form>
				</p>
			</div>
			
		</div>
	</div>
</div>

<div class="bgset">
<center>
<div class="content">
<table cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td align="center" valign="top" style="background: #e2f5ff">
    <div class="header" style="background-image: url(upload/<?=(empty($_SESSION['data']['header']) ? '../images/header.png' : $_SESSION['data']['header'])?>)">
    	<div class="links">
        	<?PHP
			if ($_SESSION['login'] == 'poster-control')
			{
				?>
                <a href="index.php?do=dashboard"><img src="images/dashboard.png" style="margin-left:10px"> <span class="user_span">داشبورد</span></a> &nbsp;&nbsp;&nbsp;&nbsp; 
                <a href="index.php?do=read_msg"><img src="images/email.png" style="margin-left:10px"> <span class="user_span">پیغام ها</span></a> &nbsp;&nbsp;&nbsp;&nbsp; 
                <a href="index.php?do=logout"><img src="images/exit_new.png" style="margin-left:10px"> <span class="user_span">خروج</span></a>
                <?PHP
			}
			elseif ($_SESSION['login'] == 'full-control')
			{
				//<a href="index.php?do=backup"><img src="images/server.png"> <span>پشتیبان</span></a> &nbsp;
				?>
                <a href="index.php?do=dashboard"><img src="images/dashboard.png"> <span>داشبورد</span></a> &nbsp;
                <a href="index.php?do=log&userid=0"><img src="images/log.png"> <span>لاگ</span></a> &nbsp;
                
                <a href="index.php?do=logout"><img src="images/exit_new.png"> <span>خروج</span></a> &nbsp;
                <a href="index.php?do=read_msg">
				<?PHP
				if ($connection_string == 'true')
				{
					$cnt = @$admin->result($admin->sql("select count(*) from msgs_fromusers where read_msg=0 ") , 0);
					
					if ($cnt == 0)
					{
						echo '<img src="images/mail_read.png"> <span>'.$cnt.'</span>';
					}
					else
					{
						echo '<img src="images/mail_unread.png"> <span>'.$cnt.'</span>';
						
					   
					}
				}
				 @$admin->result($admin->sql("update msgs_fromusers set read_msg=1"));
				?></a>
                <?PHP
			}
			?>
        </div>
    </div>
    </td>
  </tr>
  <tr><?PHP require_once('inc/GDate.php'); ?>
    <td style="height:26px; background-color: #e2f5ff; text-align: center;">امروز <?=$admin->time('l j F Y').' - '.arabicDate('hj:  j F Y ',time()).' - '.str_replace(array('January' , 'February' , 'March' , 'April' , 'May' , 'June' , 'July' , 'August' , 'September' , 'October' , 'November' , 'December') , array('ژانویه' , 'فوریه' , 'مارس' , 'آوریل' , 'مه' , 'ژوئن' , 'ژوئیه' , 'اوت' , 'سپتامبر' , 'اکتبر' , 'نوامبر' , 'دسامبر') , date('j F Y')).' - '?> <span id="show_time_1">
<script language="JavaScript">
function show_time_1(){
 d=new Date();
 H=d.getHours();H=(H<10)?"0"+H:H;
 i=d.getMinutes();i=(i<10)?"0"+i:i;
 s=d.getSeconds();s=(s<10)?"0"+s:s;
 document.getElementById('show_time_1').innerHTML=H+":"+i+":"+s;
 setTimeout("show_time_1()",1000);/* 1 sec */
} show_time_1();
</script>
</span></td>
  </tr>
  <tr>
    <td valign="top" class="tabs">
<br>
<?PHP
if (isset($_SESSION['login']))
{
	?>
<script language="javascript" type="text/javascript">
var comma = ',';
function checkDigit()
{
	var keyCode = window.event.keyCode;
	if ((keyCode >= 48 && keyCode <= 57) || keyCode == 27)
	{
		return true;
	}
	else if (keyCode == 13)
	{
		window.setTimeout('Calculate();',1);
		return false;
	}
	else
	{
		return false;
	}
};

function checkComma(textbox)
{
	while (textbox.value.indexOf(comma) > 0)
	{
		textbox.value = textbox.value.replace(comma,'');
	}
	var num = textbox.value;
	if (num.length != 0 && parseInt(num))
	{
		var regex  = new RegExp('(-?[0-9]+)([0-9]{3})');
		while(regex.test(num))
		{
			num = num.replace(regex, '$1' + comma + '$2');
		}
	}
	textbox.value = num;
};


function description_tip(row_id , tablename)
{
	$(".description_modal-title").html('ویرایش توضیحات #'+row_id);
	$(".description_modal-title").html('ویرایش توضیحات #'+row_id);
	$("#description_form").attr('onsubmit' , "return description_submit('"+row_id+"' , '"+tablename+"') " );


	$.ajax({
		type:'post',
		url:'core.php?act=description',
		data:'id='+row_id+'&tablename='+tablename,
		success: function (data) {
			$("#description_modal").modal();
			$("#new_description").html(data);
		}
	})
}

function description_submit(row_id , tablename)
{
	$.ajax({
		type:'post',
		url:'core.php?act=description_save',
		data:'id='+row_id+'&tablename='+tablename+'&new_description='+$("#new_description").val(),
		success: function (data) {
			//$("#description_modal").modal('hide');
			alert(data);
		}
	})

	if ($("#new_description").val() == '')
	{
		$(".description_tip_"+row_id).attr('src' , 'images/balloon.png');
	}
	else
	{
		$(".description_tip_"+row_id).attr('src' , 'images/balloon-filled.png');
	}

	return false;
}


jQuery.fn.filterByText = function(textbox, selectSingleMatch) {
	return this.each(function() {
		var select = this;
		var options = [];
		$(select).find('option').each(function() {
			options.push({value: $(this).val(), text: $(this).text()});
		});
		$(select).data('options', options);
		$(textbox).bind('change keyup', function() {
			var options = $(select).empty().data('options');
			var search = $.trim($(this).val());
			var regex = new RegExp(search,"gi");
		  
			$.each(options, function(i) {
				var option = options[i];
				if(option.text.match(regex) !== null) {
					$(select).append(
					   $('<option>').text(option.text).val(option.value)
					);
				}
			});
			if (selectSingleMatch === true && $(select).children().length === 1) {
				$(select).children().get(0).selected = true;
			}
		});            
	});
};

	/*
$(function() {
	$('#seachableSelect').filterByText($('#textbox'), true);
});
*/






function show_date_finish()
{
	$(".frm_class_date_finish").html('در حال محاسبه ...');

	$.ajax({
		url:"core.php?act=class_date_finish",
		type:"post",
		data:$("#frm_class_add").serialize(),
		success: function (data){
			$(".frm_class_date_finish").html('<span style="color:blue">'+data+'</span>');
		},
		error: function (er) {
			$(".frm_class_date_finish").html('<span style="color:red">خطا در عملیات</span>');
		}
	});

	return false;
}
			


function pic_camera()
{
	reset_pics();

	var video = document.getElementById('video');

	// Get access to the camera!
	if(navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
	    // Not adding `{ audio: true }` since we only want video now
	    navigator.mediaDevices.getUserMedia({ video: true }).then(function(stream) {
	        video.src = window.URL.createObjectURL(stream);
	        video.play();
	    });
	}

	$("#camera_modal").modal();
}

function take_picture()
{
	var canvas = document.getElementById('canvas');
	var context = canvas.getContext('2d');
	var video = document.getElementById('video');

	context.drawImage(video, 0, 0, 640, 360);

	$("#video").css({'display':'none'});
	$("#canvas").css({'display':'block'});

	$("#snap").css({'display':'none'});
	$("#retake").css({'display':'inline-block'});
	$("#accept_pic").css({'display':'inline-block'});
}


function active_cam()
{
	$("#video").css({'display':'block'});
	$("#canvas").css({'display':'none'});

	$("#snap").css({'display':'inline-block'});
	$("#retake").css({'display':'none'});
	$("#accept_pic").css({'display':'none'});
}
var cropper_selector = '';

function accept_pic()
{
	var canvas = document.getElementById('canvas');

	$("#crop_img").attr('src' , canvas.toDataURL());

	$("#camera_modal").modal('hide');
	$("#crop_modal").modal();

	var crop_width = <?=$admin->sql("select crop_width from admin")->fetch_object()->crop_width?>;
	var crop_height = <?=$admin->sql("select crop_height from admin")->fetch_object()->crop_height?>;

	var image = document.getElementById('crop_img');
	var cropper = new Cropper(image, {
		aspectRatio: crop_width / crop_height,
		scalable:false,
		zoomable:false,
		cropBoxResizable:false,
		background:false,
		viewMode:3,
		minCropBoxWidth:<?=$admin->sql("select crop_width from admin")->fetch_object()->crop_width?>,
		minCropBoxHeight:<?=$admin->sql("select crop_height from admin")->fetch_object()->crop_height?>,

		crop: function(e) {
			$('#crop_x').val(e.detail.x);
			$('#crop_y').val(e.detail.y);
			$('#crop_w').val(e.detail.width);
			$('#crop_h').val(e.detail.height);
			//save_pic()
			//console.log(e.detail.x);
			//console.log(e.detail.y);
			//console.log(e.detail.width);
			//console.log(e.detail.height);
			
			//console.log(e.detail.rotate);
			//console.log(e.detail.scaleX);
			//console.log(e.detail.scaleY);
		}
	});
	cropper_selector = cropper;
}

function save_pic()
{
	var imageData = cropper_selector.getImageData();
	//alert('-'+$('#crop_x').val()+'px -'+$('#crop_y').val()+'px');
	$("#final_image").css({'background-image':'url('+$("#crop_img").attr('src')+')'});
	//$("#final_image").css({'background-size':$('#crop_w').val()+'px '+$('#crop_h').val()+'px' });
	$("#final_image").css({'background-size':'640px 360px' });
	$("#final_image").css({'width':$('#crop_w').val()+'px' });
	$("#final_image").css({'height':$('#crop_h').val()+'px' });
	$("#final_image").css({'background-position':'-'+$('#crop_x').val()+'px -'+$('#crop_y').val()+'px' });
	$("#crop_modal").modal('hide');
	$("#image_data").val($("#crop_img").attr('src'));
}


function pic_upload()
{
	reset_pics();

	var elem = document.getElementById('upload_file');
	if(elem && document.createEvent)
	{
		var evt = document.createEvent("MouseEvents");
		evt.initEvent("click", true, false);
		elem.dispatchEvent(evt);
	}
}

function show_selector(input)
{
	if (input.files && input.files[0])
	{
		var reader = new FileReader();

		reader.onload = function (e) {
			$('#crop_img').attr('src', e.originalTarget.result);
			$('#crop_img').css({'max-width':'640px','max-height':'360px'});
		};

		reader.readAsDataURL(input.files[0]);


		$("#crop_modal").modal();
		window.setTimeout(function(){
			var image = document.getElementById('crop_img');
			
			var cropper = new Cropper(image, {
				aspectRatio: <?=$admin->sql("select crop_width from admin")->fetch_object()->crop_width?> / <?=$admin->sql("select crop_height from admin")->fetch_object()->crop_height?>,
				
				scalable:false,
				zoomable:false,
				cropBoxResizable:false,
				background:false,
				viewMode:3,
				minCropBoxWidth:<?=$admin->sql("select crop_width from admin")->fetch_object()->crop_width?>,
				minCropBoxHeight:<?=$admin->sql("select crop_height from admin")->fetch_object()->crop_height?>,

				crop: function(e) {
					$('#crop_x').val(e.detail.x);
					$('#crop_y').val(e.detail.y);
					$('#crop_w').val(e.detail.width);
					$('#crop_h').val(e.detail.height);
					//save_pic()
					//console.log(e.detail.x);
					//console.log(e.detail.y);
					//console.log(e.detail.width);
					//console.log(e.detail.height);
					
					//console.log(e.detail.rotate);
					//console.log(e.detail.scaleX);
					//console.log(e.detail.scaleY);
				}
			});

			cropper_selector = cropper;

		} , 200);
	}

}

function reset_pics()
{
	$("#crop_x").val('');
	$("#crop_y").val('');
	$("#crop_w").val('');
	$("#crop_h").val('');
	$("#image_data").val('');
	$("#final_image").css({'background-image':'url(images/def.jpg);'});
	$("#upload_file").val('');
	$("#video").attr('src' , '');
	$("#canvas").attr('src' , '');

}

</script>
<?PHP
}
?>

<div id="camera_modal" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title description_modal-title">گرفتن عکس با دوربین</h4>
			</div>
			<div class="modal-body">
				<p>
					<video id="video" width="640" height="360" style="background: black" autoplay></video>
					<canvas id="canvas" width="640" height="360" style="display: none"></canvas>
				</p>
			</div>
			<div class="modal-footer">
				<button id="snap" onclick="take_picture()" class="input-b">گرفتن عکس!</button>
				<button id="accept_pic" onclick="accept_pic()" class="input-b" style="display: none">تایید عکس</button>
				<button id="retake" onclick="active_cam()" class="input-g" style="display: none">گرفتن مجدد عکس</button>
			</div>
		</div>
	</div>
</div>

<link  href="cropperjs/dist/cropper.css" rel="stylesheet">
<script src="cropperjs/dist/cropper.js"></script>

<div id="crop_modal" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title description_modal-title">برش تصویر</h4>
			</div>
			<div class="modal-body">
				<p>
					<div style="width: 640px; height: 360px; margin: 0 auto;">
						<img src="" id="crop_img" style="max-width: 100%;">
					</div>
				</p>
			</div>
			<div class="modal-footer">
				<button onclick="save_pic()" class="input-b">تایید عکس</button>
			</div>
		</div>
	</div>
</div>


<?PHP
if (isset($_SESSION['data_poster']))
{
	$perm = $_SESSION['data_poster']['permit'];
	$permit = array();
	foreach (explode("," , $perm) as $k => $v)
		$permit[$v] = 'on';
}
$permit[0] = 'on';
$permit[-1] = 'on';
$permit[-2] = 'on';
$permit[-3] = 'on';


$dows = array();
$dows[0] = 'dashboard';
$dows[-1] = 'login';
$dows[-2] = 'logout';
$dows[-3] = 'msg';

$dows[11] = 'personal_new';
$dows[12] = 'personal_manage';
$dows[13] = 'personal_time';
$dows[15] = 'personal_managetime';
$dows[14] = 'personal_update';
$dows[16] = 'personal_deduction_group_new';
$dows[17] = 'personal_deduction_group_manage';
$dows[18] = 'personal_deduction_new';
$dows[19] = 'personal_deduction_manage';
$dows[111] = 'personal_saviorprogram_new';
$dows[112] = 'personal_saviorprogram_manage';


$dows[21] = 'showtime_new';
$dows[22] = 'showtime_manage';

$dows[31] = 'class_new';
$dows[32] = 'class_manage';
$dows[33] = 'card_new';
$dows[34] = 'card_manage';

$dows[41] = 'ticket_new';
$dows[42] = 'ticket_return';
$dows[43] = 'ticket_cancel';
$dows[45] = 'ticket_cancel_group';
$dows[44] = 'ticket_manage';
$dows[46] = 'ticket_multifunction';
$dows[47] = 'ticket_print';

$dows[51] = 'user_new';
$dows[52] = 'user_manage';
$dows[53] = 'user_msg_new';
$dows[54] = 'user_msg_manage';

$dows[61] = 'cost_group_new';
$dows[62] = 'cost_group_manage';
$dows[63] = 'cost_new';
$dows[64] = 'cost_manage';
$dows[65] = 'cost_report';
$dows[66] = 'cost_payment_new';
$dows[69] = 'costract_payment_new';
$dows[67] = 'costract_payment_manage';
$dows[68] = 'cost_payment_manage';

$dows[71] = 'report_ticket';
$dows[72] = 'report_personel_time';
$dows[73] = 'report_costs';
$dows[74] = 'report_class';
$dows[75] = 'report_contract';
$dows[76] = 'report_account';
$dows[77] = 'report_settle';
$dows[78] = 'report_paystubs';

$dows[81] = 'contract_new';
$dows[82] = 'contract_manage';

$dows[91] = 'account_new';
$dows[92] = 'account_manage';
$dows[93] = 'account_transfer';
$dows[94] = 'account_settle';

$dows[101] = 'xperson_new';
$dows[102] = 'xperson_manage';

$dows[111] = 'guest_new';
$dows[112] = 'guest_manage';
$dows[113] = 'guest_block_report';

$dows[114] = 'coupon_new';
$dows[115] = 'coupon_manage';

$dows[120] = 'backup';
$dows[150] = 'changeinfo';

$dowx = array_flip($dows);


//if (($permit[$dowx[$do]] != 'on') and ($from == 'index') and ($admin->login_check() == 'LESS_ACCESS'))
//{
	
// //}echo '
// 	<center>
// 	<br />
// 	<b>
// 	دسترسی غیرمجاز
// 	</b>
// 	</center>
// 	</td>
// 	</tr>
// 		<td valign="top" align=center>
		
// 		<div style="color:red; font-size:30pt; text-align:center; margin:150px 0; font-family:b titr,titr,arial,tahoma;">شما اجازه استفاده از این بخش را ندارید.</div>
		
// 		</td>
// 	  </tr>
// 	</table>';
// 	exit;