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
	if (!isset($_POST['ref_id']) and isset($_POST['admin_username'] , $_POST['admin_password']))
	{
		// its first time

		$row = $admin->supersql("select * from admin where (username = '".sha1(strtolower($_POST['admin_username']))."')");
			
		if (count($row) > 1)
		{
			$username = sha1(strtolower($_POST['admin_username']));
			$password = sha1($_POST['admin_password']);
			
			if ($username == $row['username'] and $password == $row['password'])
			{
				$contin = true;
				$ref_id = 0;
			}
			else
			{
				$contin = false;
				echo $admin->msg('نام کاربری و یا کلمه عبور اشتباه است' , "critical");
			}
		}
		else
		{
			$contin = false;
			echo $admin->msg('نام کاربری و یا کلمه عبور اشتباه است' , "critical");
		}

	}
	else
	{
		$contin = true;
		$ref_id = $_POST['ref_id'];
	}

	if ($contin)
	{
		/*
		if (!empty($_FILES['image']['tmp_name']))
		{
			$name = str_replace('.' , '' , microtime(true)).'.'.end(explode('.' , $_FILES['image']['name']));
			if (move_uploaded_file($_FILES['image']['tmp_name'] , 'upload/'.$name))
			{
				$image = $name;
			}
			else
			{
				$image = 'error';
			}
		}
		else
		{
			$image = 'noimage';
		}
		*/

		list($type, $data) = explode(';', $_POST['image_data']);
		$ext = end(explode('/' , $type));
		list(, $data)      = explode(',', $data);
		$data = base64_decode($data);

		if ($ext == 'jpeg')
		{
			$ext = 'jpg';
		}

		$image = uniqid().'.'.$ext;
		file_put_contents('upload/'.$image , $data);

		switch($ext)
		{
			case 'png' :
				$img = imagecreatefrompng('upload/'.$image);
			break;
			
			case 'gif' :
				$img = imagecreatefromgif('upload/'.$image);
			break;
			
			case 'jpg' :
				$img = imagecreatefromjpeg('upload/'.$image);
			break;
		}

		if ($img != NULL)
		{
			$dest = imagecrop($img , array('x' => $_POST['crop_x'] , 'y' => $_POST['crop_y'] , 'width' => $_POST['crop_w'] , 'height'=> $_POST['crop_h']));

			if ($dest !== FALSE)
			{
				imagepng($dest , 'upload/'.$image);
			}

			
			require_once('resize/resize-class.php');
			
			$resizeObj = new resize('upload/'.$image);
			$resizeObj->resizeImage($admin->sql("select crop_width from admin")->fetch_object()->crop_width , $admin->sql("select crop_height from admin")->fetch_object()->crop_height , 0);
			$resizeObj->saveImage('upload/'.$image , $admin->sql("select crop_quality from admin")->fetch_object()->crop_quality);
		}

		$sql = $admin->sql("insert into guest set suid = '".SUID."' , ref_id = '$ref_id' , name = '$_POST[name]' , mobile = '$_POST[mobile]' , type = '$_POST[type]' , sex = '$_POST[sex]' , image = '$image' , date = '$_POST[date]'");
		
		if  ($sql)
		{
			$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
		}
		else
		{
			$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
		}
		
		$admin->LOG('مهمان جدید' , $msg);
	}
	
}

?>

<script src="chosen/chosen.jquery.min.js"></script>
<link href="chosen/chosen.min.css" rel="stylesheet">

<script>
$(function(){
	$("#chosen").chosen();
});


function check(field)
{
	$("#validate_"+field).html('<img src="images/loading.gif">');

	$.ajax({
		data:field+"="+$("#"+field).val(),
		type:"POST",
		url:"core.php?act=validate_field",
		success: function(data){
			$("#validate_"+field).html(data);
		}
	});
}

function validate()
{
	
	if ($(".error_").length > 0)
	{
		alert('فیلد '+$(".error_").val()+' باید اصلاح شود');
		return false;
	}


	if ($(".chosen-ref").val() == '')
	{
		alert('معرف انتخاب نشده است');
		return false;
	}
	
}
</script>


<div class="add-in">
<b class="bx">مهمان جدید : </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data" onsubmit="return validate()">
<input type="hidden" name="post" />
<table cellpadding="2" width="100%">
	<tr>
		<td style="width:50%" valign="top">
			<table cellpadding="2">
			  <tr>
				<td>نام و نام خانوادگی : </td>
				<td><input type="text" name="name" class="input-t" size="25" required onkeyup="check('name')" id="name"> <span id="validate_name"></span></td>
			  </tr>
			  <tr>
				<td>جنسیت : </td>
				<td><select name="sex" class="input-s" required>
				<option value="">انتخاب کنید</option>
				<option value="مرد">مرد</option>
				<option value="زن">زن</option>
				</select></td>
			  </tr>
			  <tr>
				<td>شماره موبایل : </td>
				<td><input type="text" name="mobile" required class="input-t" dir="ltr" onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )" onkeyup="check('mobile')" id="mobile"> <span id="validate_mobile"></span></td>
			  </tr>
			  <tr>
				<td>معرف : </td>
				<td>
				<?PHP
				if ($admin->cnt($admin->sql("select * from guest where (type = 'قدیمی')")) == 0)
				{
					?>
					<div style="border: 1px solid #000; padding: 4px; width: 380px ">
						نام کاربری مدیر : <input type="text" name="admin_username" class="input-t" dir="ltr" size="20">
						رمز : <input type="password" name="admin_password" class="input-t" dir="ltr" size="20">
					</div>
					<?PHP
				}
				else
				{
					echo $admin->select('guest' , 'ref_id' , 'name' , 0 , true , '' , 'chosen' , " where (type = 'قدیمی') " , 'chosen-select chosen-rtl chosen-ref" data-placeholder="معرف انتخاب شود" style="width:200px;');
				}
				?>
				</td>
			  </tr>
			  <tr>
				<td>نوع مهمان : </td>
				<td><select name="type" class="input-s" required>
				<option value="">انتخاب کنید</option>
				<option value="تازه وارد">تازه وارد</option>
				<option value="قدیمی">قدیمی</option>
				</select></td>
			  </tr>
			  
			  <tr style="display: none;">
				<td>تاریخ ثبت نام : </td>
				<td><input type="text" name="date" class="input-t" dir="ltr" value="<?=$admin->time('Y-m-d H:i')?>" required></td>
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

						<div class="image_area" id="final_image" style="background-image:url(images/def.jpg); background-position: 0px 0px; background-size: cover; width:<?=$admin->sql("select crop_width from admin")->fetch_object()->crop_width?>px; height:<?=$admin->sql("select crop_height from admin")->fetch_object()->crop_height?>px;"></div>
					</td>
				</tr>
				<tr>
					<td style="text-align:left;">
						<input type="file" id="upload_file" name="upload_file" onchange="show_selector(this);" style="display: none">
						<input type="button" class="input-g" value="انتخاب تصویر از کامپیوتر" onclick="pic_upload()">
						<input type="button" class="input-g" value="گرفتن عکس با دوربین" onclick="pic_camera()">

						<?PHP /*<input type="file" name="image" class="input-s" accept="image/*" capture="camera"><input type="button" value="دوربین" class="input-s"> */ ?>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<input type="submit" value="ثبت" class="input-b" />

</form>
</div>
</div>
</div>
    </td>
  </tr>
</table>
