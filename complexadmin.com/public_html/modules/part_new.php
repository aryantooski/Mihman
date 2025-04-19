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
				
				$_POST['mens_amount'] = str_replace(',', '', $_POST['mens_amount']);
				$_POST['womens_amount'] = str_replace(',', '', $_POST['womens_amount']);

				$sql = $admin->sql("insert into part set suid = '".SUID."' , name = '$_POST[name]' , mens_check = '$_POST[mens_check]' , womens_check = '$_POST[womens_check]' , mens_personel_check = '$_POST[mens_personel_check]' , womens_personel_check = '$_POST[womens_personel_check]' , mens_amount = '$_POST[mens_amount]' , womens_amount = '$_POST[womens_amount]' , income_ip = '$_POST[income_ip]' , income_port = '$_POST[income_port]' , output_ip = '$_POST[output_ip]' , output_port = '$_POST[output_port]' , description = '$_POST[description]' , datetime = '".$admin->time('Y-m-d H:i:s')."' , only_admin = '$_POST[only_admin]' ");
				if  ($sql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
					
					$part_id = $admin->sql("select last_insert_id() as insert_id from part")->fetch_object()->insert_id;

					if ($_POST['cip'] > 0)
					{
						for ($i = 1 ; $i <= $_POST['cip'] ; $i++)
						{
							if (!empty($_POST['ip_'.$i]) and substr($_POST['ip_'.$i] , 0 , 1) != '_')
							{
								if (empty($_POST['type_'.$i]))
									$_POST['type_'.$i] = 'income';

								$admin->sql("insert into part_ip set table_name = 'part' , part_id = '$part_id' , ip = '".$_POST['ip_'.$i]."' , port = '".$_POST['port_'.$i]."' , type = '".$_POST['type_'.$i]."' ");
							}
							
						}
					}
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}

				$admin->LOG('بخش جدید' , $msg);
			}

			?>

			<script type="text/javascript">
				function check_price()
				{
					if ($('#type').val() == '' || $('#type').val() == 'پرسنل آقا' || $('#type').val() == 'پرسنل خانم')
					{
						$("#price").attr('readonly' , 'readonly');
						$("#price").val('0');
					}
					else
					{
						$("#price").removeAttr('readonly');
						$("#price").val('');
					}
				}
				function change_type()
				{
					if ($('#type').val() == 'daily')
					{
						$('.part_new_step').css({'visibility':'hidden'})
					}
					else
					{
						$('.part_new_step').css({'visibility':'visible'});
						$('.part_new_reloadable').css({'visibility':'hidden'});
					}
				}
			</script>

			<div class="add-in">
				<b class="bx">بخش جدید : </b>
				<div class="co">
					<form method="post" action="" enctype="multipart/form-data">
						<input type="hidden" name="post" />
						<table cellpadding="2">
							<tr>
								<td>نوع بخش : </td>
								<td>
									<select class="input-s" name="type" id="type" onchange="change_type()">
										<option value="daily">روزانه</option>
										<option value="step">مرتبه ای</option>
									</select>
									
								</td>
							</tr>
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

							<?PHP 
							/*
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

							*/
							?>

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

							<script src="inputmask/dist/inputmask/inputmask.js"></script>
							<script src="inputmask/dist/inputmask/inputmask.extensions.js"></script>
							<script src="inputmask/dist/inputmask/inputmask.numeric.extensions.js"></script>
							<script src="inputmask/dist/inputmask/inputmask.date.extensions.js"></script>
							<script src="inputmask/dist/inputmask/inputmask.phone.extensions.js"></script>
							<script src="inputmask/dist/inputmask/jquery.inputmask.js"></script>

							<script type="text/javascript">
								$(document).ready(function(){
									$(".mask-ip").inputmask("ip");
								});
								var cip = 2;
								function append_ip()
								{
									$('.tbl-ip-port').append('<tr class="tr_'+cip+'"><td><input type="text" name="port_'+cip+'" class="mask-port" tabindex="'+cip+'2" dir="ltr" size="10"></td><td><input type="text" name="ip_'+cip+'" class="mask-ip" tabindex="'+cip+'1" dir="ltr" size="30"></td><td><select name="type_'+cip+'" class="input-s" tabindex="'+cip+'3"><option value="">انتخاب کنید</option><option value="income">ورودی</option><option value="output">خروجی</option></select></td><td><a href="javascript:void(0)" onclick="$(\'.tr_'+cip+'\').remove();"><img src="images/deactive.png"></a></td></tr>');
									cip++;
									$(".mask-ip").inputmask("ip");
									$("#cip").val(cip);
								}
							</script>
							<tr>
								<td>آی پی : </td>
								<td>
									<input type="hidden" name="cip" value="1" id="cip">
									<table cellpadding="3" style="text-align: center;" class="tbl-ip-port">
										<tr style="background: #333; color: white;">
											<td>PORT</td>
											<td>IP</td>
											<td>نوع</td>
											<td style="background: white;"><a href="javascript:void(0)" onclick="append_ip()"><img src="images/add.png"></a></td>
										</tr>
										<tr class="tr_1">
											<td><input type="text" name="port_1" tabindex="12" class="mask-port" dir="ltr" size="10"></td>
											<td><input type="text" name="ip_1" class="mask-ip" tabindex="11" dir="ltr" size="30"></td>
											<td><select name="type_1" class="input-s" tabindex="13"><option value="">انتخاب کنید</option><option value="income">ورودی</option><option value="output">خروجی</option></select></td>
											<td><a href="javascript:void(0)" onclick="$('.tr_1').remove();"><img src="images/deactive.png"></a></td>
										</tr>
									</table>


								</td>
							</tr>



							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>

							<style type="text/css">
								.part_new_step {
									visibility:hidden;
								}
							</style>
							<script type="text/javascript">
								function check_reloadable(element)
								{
									if ($(element).val() == 'reloadable')
									{
										$('.part_new_reloadable').css({'visibility':'visible'});
									}
									else
									{
										$('.part_new_reloadable').css({'visibility':'hidden'});
									}
								}
							</script>
							<tr>
								<td>&nbsp;</td>
								<td>
									<table cellpadding="5">
										<tr>

											<td class="part_new_step">
												ویژگی : <select name="property" class="input-s" onchange="check_reloadable(this)">
													<option value="onetime">یکبار مصرف</option>
													<option value="reloadable">ریلود شونده</option>
												</select>

											</td>
											<td>&nbsp;</td>
											<td class="part_new_step">
												تعداد کل :‌ <input type="text" name="total_count" size="4" dir="ltr" class="input-t">
											</td>
											<td>&nbsp;</td>
											<td class="part_new_step part_new_reloadable">
												زمان ریلود :‌ <input type="text" name="reload_time" size="4" dir="ltr" class="input-t"> دقیقه
											</td>

											<td>&nbsp;</td>
											<td class="part_new_step part_new_reloadable">
												تعداد استفاده همزمان :‌ <input type="text" name="simult_count" size="4" dir="ltr" class="input-t">
											</td>
											<td>&nbsp;</td>
											<td class="part_new_step part_new_reloadable">
												نحوه ریلود : <select name="reload_type" class="input-s">
													<option value="simult">همزمان</option>
													<option value="bystep">ترتیبی</option>
												</select>

											</td>
											
										</tr>
									</table>
									
								</td>
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
				</div>
			</div>
		</div>
	</td>
</tr>
</table>
