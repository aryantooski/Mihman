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
				if ($_POST['شنبه'] == 'on') {$days .= 'شنبه,';}
				if ($_POST['یکشنبه'] == 'on') {$days .= 'یکشنبه,';}
				if ($_POST['دوشنبه'] == 'on') {$days .= 'دوشنبه,';}
				if ($_POST['سه_شنبه'] == 'on') {$days .= 'سه شنبه,';}
				if ($_POST['چهار_شنبه'] == 'on') {$days .= 'چهار شنبه,';}
				if ($_POST['پنج_شنبه'] == 'on') {$days .= 'پنج شنبه,';}
				if ($_POST['جمعه'] == 'on') {$days .= 'جمعه,';}

				$days = substr($days , 0 , strlen($days) - 1);

				$type = $_POST['type1'].','.$_POST['type2'].','.$_POST['type3'].','.$_POST['type4'];

				$_POST['start_minute'] = strlen($_POST['start_minute']) == 1 ? '0'.$_POST['start_minute'] : $_POST['start_minute'];
				$_POST['start_hour'] = strlen($_POST['start_hour']) == 1 ? '0'.$_POST['start_hour'] : $_POST['start_hour'];
				$_POST['end_minute'] = strlen($_POST['end_minute']) == 1 ? '0'.$_POST['end_minute'] : $_POST['end_minute'];
				$_POST['end_hour'] = strlen($_POST['end_hour']) == 1 ? '0'.$_POST['end_hour'] : $_POST['end_hour'];

				$sql = $admin->sql("insert into showtime (suid , mode , name , price , capacity , type , start_date , start_minute , start_hour , end_date , end_minute , end_hour , description , use_coupon , return_time_limit , return_damage_percent , sale_limit) values('".SUID."' , '$_POST[mode]' , '$_POST[name]' , '$_POST[price]' , '$_POST[capacity]' , '$type' , '".str_replace('/' , '-' , $_POST['start_date'])."' , '$_POST[start_minute]' , '$_POST[start_hour]' , '".str_replace('/' , '-' , $_POST['end_date'])."' , '$_POST[end_minute]' , '$_POST[end_hour]' , '$_POST[description]' , '$_POST[use_coupon]' , '$_POST[return_time_limit]' , '$_POST[return_damage_percent]' , '$_POST[sale_limit]')");
				if  ($sql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
					echo '<meta http-equiv="refresh" content="0;URL=index.php?do=showtime_manage">';
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}

				$admin->LOG('سانس جدید' , $msg);
			}

			?>

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
			<div class="add-in">
				<b class="bx">سانس جدید : </b>
				<div class="co">
					<form method="post" action="" enctype="multipart/form-data" onsubmit="return validate()">
						<input type="hidden" name="post" />
						<table cellpadding="2">
							<tr>
								<td>نوع سانس : </td>
								<td><select name="mode" class="input-s" required>
								<option value="">انتخاب کنید</option>
								<option value="آزاد">آزاد</option>
								<option value="ویژه مهمانان">ویژه مهمانان</option>
								</select></td>
							</tr>
							<tr>
								<td>ورود مجاز : </td>
								<td>
									<label><input type="checkbox" name="type1" value="مهمان آقا">مهمان آقا</label>
									<label><input type="checkbox" name="type2" value="مهمان خانم">مهمان خانم</label>
									<label><input type="checkbox" name="type3" value="پرسنل آقا">پرسنل آقا</label>
									<label><input type="checkbox" name="type4" value="پرسنل خانم">پرسنل خانم</label>

								</td>
							</tr>
							<tr>
								<td>عنوان : </td>
								<td><input type="text" name="name" class="input-t" size="40" required tabindex="2"></td>
							</tr>
							<tr>
								<td>ورودی : </td>
								<td><input type="text" name="price" class="input-t" dir="ltr" required onkeydown="return ( event.ctrlKey || event.altKey 
									|| (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
									|| (95<event.keyCode && event.keyCode<106)
									|| (event.keyCode==8) || (event.keyCode==9) 
									|| (event.keyCode>34 && event.keyCode<40) 
									|| (event.keyCode==46) )" tabindex="3"> تومان</td>
								</tr>
								<tr>
									<td>ظرفیت : </td>
									<td><input type="text" name="capacity" class="input-t" dir="ltr" required onkeydown="return ( event.ctrlKey || event.altKey 
										|| (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
										|| (95<event.keyCode && event.keyCode<106)
										|| (event.keyCode==8) || (event.keyCode==9) 
										|| (event.keyCode>34 && event.keyCode<40) 
										|| (event.keyCode==46) )" tabindex="4"> نفر</td>
									</tr>

									<td>محدودیت فروش : </td>
									<td><input type="text" name="sale_limit" class="input-t" dir="ltr" required onkeydown="return ( event.ctrlKey || event.altKey 
										|| (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
										|| (95<event.keyCode && event.keyCode<106)
										|| (event.keyCode==8) || (event.keyCode==9) 
										|| (event.keyCode>34 && event.keyCode<40) 
										|| (event.keyCode==46) )" tabindex="4"> نفر</td>
									</tr>

									<tr>
										<td>زمان شروع : </td>
										<td>
											<?=$admin->select_number(0 , 59 , 'start_minute' , 0 , 6) . ' : ' . $admin->select_number(0 , 23 , 'start_hour' , 0 , 5);?>
											<input type="text" name="start_date" id="start_date" class="input-t" tabindex="7" placeholder="1396-04-19" dir="ltr" value="<?=$admin->time('Y-m-d');?>">
										</td>
									</tr>
									<tr>
										<td>زمان پایان : </td>
										<td>
											<?=$admin->select_number(0 , 59 , 'end_minute' , 0 , 9) . ' : ' . $admin->select_number(0 , 23 , 'end_hour' , 0 , 8); ?>
											<input type="text" name="end_date" id="end_date" class="input-t" tabindex="10" placeholder="1396-04-19" dir="ltr" value="<?=$admin->time('Y-m-d');?>">
										</td>
									</tr>
									<tr>
										<td>تخفیف : </td>
										<td><label><input type="checkbox" name="use_coupon" checked="checked"> قابلیت استفاده از گیفت کارت </label></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>زمان مجاز مرجوعی : </td>
										<td><input type="text" name="return_time_limit" class="input-t" dir="ltr" size="4"> دقیقه</td>
									</tr>
									<tr>
										<td>مبلغ خسارت : </td>
										<td><input type="number" min="0" max="100" name="return_damage_percent" class="input-t" dir="ltr" size="4" > درصد</td>
									</tr>
									<tr>
										<td>توضیحات : </td>
										<td><textarea name="description" class="input-s" tabindex="11" style="width:300px;"></textarea></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td><input type="submit" value="تایید" class="input-b" /></td>
									</tr>
								</table>

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
							</form>
						</div>
					</div>
				</div>
			</td>
		</tr>
	</table>
