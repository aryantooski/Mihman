<?PHP
require_once("header.php");
require_once("menu.php");
?>
</td>
</tr>
<tr>
	<td valign="top">
		<div class="text-cont">
			

		<script src="chosen/chosen.jquery.min.js"></script>
		<link href="chosen/chosen.min.css" rel="stylesheet">



<div class="add-in">
	<b class="bx">ثبت بلیط جدید : </b>
	<div class="co">

		<?PHP
		
		switch ($_GET['step'])
		{



			default :
			case '1' : ?>



				<div style="text-align:center; margin-bottom: 25px;"><img src="images/step1.jpg"></div>




				<script type="text/javascript">

					function show_showtime()
					{
						$(".tags_category").attr("disabled" , "disabled");
						$(".tags_category_"+$("#showtime_id").val()).removeAttr('disabled');
						$(".tags_category").css("display" , "none");
						$(".tags_category_"+$("#showtime_id").val()).css("display" , "inline-block");

						if ($("#showtime_id").val() != '')
						{
							$("#showtime_tags_category").html('');
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

							if ($("#showtime_id option:selected").attr('data-closet') == 'yes')
							{
								$('#can_use_closet').css({'display':'table-row'});
							}
							else
							{
								$('#can_use_closet').css({'display':'none'});
							}
						}
						else
						{
							$("#tags_category_id").val('');
							$("#showtime_data").html('');
							$("#showtime_tags_category").html('');
							$('#can_use_closet').css({'display':'none'});
							$('#can_use_coupon').css({'display':'none'});
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
										coupon_error = false;
									}
								}
							});
						}
					}


					function show_tags_category(showtime_id)
					{
	
						if ($(".tags_category_"+showtime_id).val() != '')
						{
						// if ($("#showtime_id").val() != '')
						// 	{
							
							$("#showtime_tags_category").html('نوع تگ : ' + $(".tags_category_"+showtime_id+" option:selected").attr('data-type') + ' &nbsp;&nbsp;&nbsp; رنگ : ' + $(".tags_category_"+showtime_id+" option:selected").attr('data-colorname') + ' <span style="width:15px; height:15px; border:1px solid #999; display:inline-block; background-color: ' + $(".tags_category_"+showtime_id+" option:selected").attr('data-colorcode') + ' "></span> &nbsp;&nbsp;&nbsp; گرویی : ' + $(".tags_category_"+showtime_id+" option:selected").attr('data-pledge') + ' &nbsp;&nbsp;&nbsp; آقا : ' + $(".tags_category_"+showtime_id+" option:selected").attr('data-menscount') + ' &nbsp; خانم : ' + $(".tags_category_"+showtime_id+" option:selected").attr('data-womenscount') + ' &nbsp; آزاد : ' + $(".tags_category_"+showtime_id+" option:selected").attr('data-freescount') + ' &nbsp; &nbsp;&nbsp; تخفیف تگ : ' + $(".tags_category_"+showtime_id+" option:selected").attr('data-discount')+'');
							

							
							if ($(".tags_category_"+showtime_id+" option:selected").attr('data-type') == 'مهمان')
							{
								$('#can_use_coupon').css({'display':'table-row'});
							}
							else
							{
								$('#can_use_coupon').css({'display':'none'});
							}

						}
						else 
						{
							$("#showtime_tags_category").html('');
						}

					}


					function validate()
					{
						if (coupon_error)
						{
							alert('گیفت کارت صحیح نیست');
							return false
						}
					}

				</script>

				<form method="get" action="" onsubmit="return validate()">
					<input type="hidden" name="do" value="ticket_new">
					<input type="hidden" name="step" value="2">
					<?PHP
					foreach (explode('&' , $_SERVER['REQUEST_URI']) as $item)
					{
						list($key , $value) = explode('=' , urldecode($item));

						if ($key != 'step' and $key != '/index.php?do' and !empty($value))
							echo '<input type="hidden" name="'.$key.'" value="'.$value.'">';
					}
					?>
					<table cellpadding="5" width="100%">
						<tr>
							<td width="110">سانس انتخاب شود : </td>
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

										if ($admin->result($admin->sql("select count(*) as cnt from showtime_closet_category where (showtime_id = '$r[id]') ") , 0) >= 1)
										{
											$can_use_closet = 'yes';
										}
										else
										{
											$can_use_closet = 'no';
										}

										echo '<option value="'.$r['id'].'" data-id="'.$r['id'].'" data-price="'.$r['price'].'" data-capacity="'.$r['capacity'].'" data-persx="'.$persx.'" data-start="'.$r['start_date'].' '.$r['start_hour'].':'.$r['start_minute'].'" data-end="'.$r['end_date'].' '.$r['end_hour'].':'.$r['end_minute'].'" data-usecoupon="'.$r['use_coupon'].'" data-closet="'.$can_use_closet.'">'.$r['name'].'</option>';
									}
									?>
								</select> &nbsp;&nbsp; <span id="showtime_data"></span>
							</td>
						</tr>


						<tr>
							<td>گروه تگ انتخاب شود : </td>
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
												echo '<option value="'.$r['id'].'" data-id="'.$r['id'].'" data-colorname="'.$r['color_name'].'" data-colorcode="'.$r['color_code'].'" data-pledge="'.number_format($r['pledge']).'" data-pledgetotal="'.number_format($r['pledge'] * ($r['mens_count']+$r['womens_count']+$r['frees_count']) ).'" data-type="'.$r['type'].'" data-mens="'.$r['mens'].'" data-menscount="'.$r['mens_count'].'" data-womens="'.$r['womens'].'" data-womenscount="'.$r['womens_count'].'" data-frees="'.$r['frees'].'" data-freescount="'.$r['frees_count'].'" data-discount="'.number_format($r['discount']).'">'.$r['name'].'</option>';
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

						<tr id="can_use_coupon" style="display: none">
							<td>گیفت کارت : </td>
							<td><input type="text" name="coupon" id="coupon_text" dir="ltr" class="input-t" onkeyup="show_coupon_data()" onchange="show_coupon_data()" onpaste="show_coupon_data()"> <span id="coupun_data"><input type="hidden" name="coupon_discount" id="coupon_discount" value="0"></span></td>
						</tr>
						
						<tr id="can_use_closet" style="display: none">
							<td>تعداد کمد : </td>
							<td><input type="text" name="closet" id="closet_text" dir="ltr" class="input-t"></td>
						</tr>

						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td><input type="submit" value="مرحله بعد" class="input-b"></td>
						</tr>
					</table>
			</form>
				


				<?PHP

				if (isset($_GET['showtime_id']))
				{
					?>
					 <script>
						$("#showtime_id > option[value=<?=$_GET['showtime_id']?>]").prop("selected",true);
						$("#coupon_text").val('<?=$_GET['coupon']?>');
						$(".tags_category_<?=$_GET['showtime_id']?> > option[value=<?=$_GET['tags_category_id']?>]").prop("selected",true);




						show_showtime();
						show_coupon_data()
						show_tags_category('<?=$_GET['showtime_id']?>')
					</script> 
					<?PHP
				}
				else {?>
					 <script>
						$("#showtime_tags_category").html('');
					</script> 
				<?PHP }
				?>















			<?PHP break;
			
			case '2' : ?>






				<div style="text-align:center; margin-bottom: 25px;"><img src="images/step2.jpg"></div>


				<script>
					
					function show_parts(type , i , x)
					{
						var amount_type = '';
						
						if (type == 'frees')
						{
							switch ($(".guest_select_"+i+" option:selected").attr('data-sex'))
							{
								case 'مرد' :
									amount_type = 'mens';
								break;

								case 'زن' :
									amount_type = 'womens';
								break;
							}
						}
						else
						{
							amount_type = type;
						}
						

						if ($("#"+type+"_part_"+i+"_"+x).val() != '')
						{

							if (x >= 2 && $("#"+type+"_part_"+i+"_"+x+" option:selected").attr('data-lock') == '0')
							{
								var lock = '<a href="javascript:void(0)" onclick="remove_part(\''+amount_type+'_part_'+i+'_'+x+'\')"><img src="images/deactive.png" alt="حذف بخش" title="حذف بخش"></a> ';
							}
							else
							{
								var lock = '';
							}

							if ($("#"+type+"_part_"+i+"_"+x+" option:selected").attr('data-lock') == '1')
							{
								var lock = lock + '<img src="images/lock.png" width=16> ';
							}
							else
							{
								var lock = lock + '<img src="images/unlock.png" width=16> ';
							}

							//console.debug(type , i , x);
							//آدرس دستگاه ورودی : ' + $("#"+type+"_part_"+i+"_"+x+" option:selected").attr('data-incomeip') + ' &nbsp;&nbsp;&nbsp; آدرس دستگاه خروجی : ' + $("#"+type+"_part_"+i+"_"+x+" option:selected").attr('data-outputip') + ' &nbsp;&nbsp;&nbsp; 

							<?PHP
							if ($admin->sql("select type from tags_category where (id = '".intval($_GET['tags_category_id'])."') ")->fetch_object()->type == 'مهمان')
							{
								?>
								$("#parts_data_"+type+"_"+i+"_"+x).html(lock+' &nbsp;&nbsp; قیمت : ' + $("#"+type+"_part_"+i+"_"+x+" option:selected").attr('data-'+amount_type+'amount')+' تومان');
								<?PHP
							}
							else
							{
								?>
								$("#parts_data_"+type+"_"+i+"_"+x).html(lock+' &nbsp;&nbsp; رایگان برای پرسنل');
								<?PHP
							}
							?>
						}
						else
						{
							$("#parts_data_"+type+"_"+i+"_"+x).html("");
						}
					}

					var xx = 1;

					function show_part_as(i , item , x , mode)
					{
						if (x == 0)
						{
							xx = xx + 1;
							x = xx;
						}

						
						if ($(".guest_select_"+i+" option:selected").attr('data-sex') == undefined)
						{
							var text = 'لطفا یک مهمان یا پرسنل را انتخاب کنید';
							$(".add_plus_"+item+"_"+i).css({'visibility':'hidden'});
						}
						else
						{

							var text = '<select name="'+item+'_part_'+i+'['+x+']" id="'+item+'_part_'+i+'_'+x+'" class="input-s parts_ax" onchange="show_parts(\''+item+'\' , \''+i+'\' , \''+x+'\')"><option value="">انتخاب کنید</option>';
						

							switch ($(".guest_select_"+i+" option:selected").attr('data-sex'))
							{
								case 'مرد' :
									var type = 'mens';

									text += '<?PHP
											$part_sql = $admin->sql("select * from part where (mens_check = 'on') order by id desc");
											while ($part = $admin->row($part_sql))
											{
												if (($part['only_admin'] == 'on' and SUID == 0) or $part['only_admin'] != 'on')
												{
													echo '<option value="'.$part['id'].'" data-incomeip="'.$part['income_ip'].'" data-outputip="'.$part['output_ip'].'" data-mensamount="'.number_format($part['mens_amount']).'" data-womensamount="'.number_format($part['womens_amount']).'" data-lock="'.$admin->sql("select item_lock from showtime_part where (showtime_id = '".intval($_GET['showtime_id'])."' and part_id = '$part[id]' )  limit 1")->fetch_object()->item_lock.'" data-default="'.$admin->sql("select item_default from showtime_part where (showtime_id = '".intval($_GET['showtime_id'])."' and part_id = '$part[id]' ) ")->fetch_object()->item_default.'" >'.$part['name'].'</option>';
												}
											}


											$temp_part_sql = $admin->sql("select * from temp_part where (showtime_id = '".intval($_GET['showtime_id'])."' and mens_check = 'on')");
											while ($part = $admin->row($temp_part_sql))
											{
												if (($part['only_admin'] == 'on' and SUID == 0) or $part['only_admin'] != 'on')
												{
													echo '<option value="temp_'.$part['id'].'" data-incomeip="'.$part['income_ip'].'" data-outputip="'.$part['output_ip'].'" data-mensamount="'.number_format($part['mens_amount']).'" data-womensamount="'.number_format($part['womens_amount']).'" >'.$part['name'].' [موقت]</option>';
												}
											}

											?>';
								break;

								case 'زن' :
									var type = 'womens';

									text += '<?PHP
											$part_sql = $admin->sql("select * from part where (womens_check = 'on') order by id desc");
											while ($part = $admin->row($part_sql))
											{
												if (($part['only_admin'] == 'on' and SUID == 0) or $part['only_admin'] != 'on')
												{
													echo '<option value="'.$part['id'].'" data-incomeip="'.$part['income_ip'].'" data-outputip="'.$part['output_ip'].'" data-mensamount="'.number_format($part['mens_amount']).'" data-womensamount="'.number_format($part['womens_amount']).'" data-lock="'.$admin->sql("select item_lock from showtime_part where (showtime_id = '".intval($_GET['showtime_id'])."' and part_id = '$part[id]' ) limit 1")->fetch_object()->item_lock.'" data-default="'.$admin->sql("select item_default from showtime_part where (showtime_id = '".intval($_GET['showtime_id'])."' and part_id = '$part[id]' ) ")->fetch_object()->item_default.'" >'.$part['name'].'</option>';
												}
											}


											$temp_part_sql = $admin->sql("select * from temp_part where (showtime_id = '".intval($_GET['showtime_id'])."' and womens_check = 'on')");
											while ($part = $admin->row($temp_part_sql))
											{
												if (($part['only_admin'] == 'on' and SUID == 0) or $part['only_admin'] != 'on')
												{
													echo '<option value="temp_'.$part['id'].'" data-incomeip="'.$part['income_ip'].'" data-outputip="'.$part['output_ip'].'" data-mensamount="'.number_format($part['mens_amount']).'" data-womensamount="'.number_format($part['womens_amount']).'" >'.$part['name'].' [موقت]</option>';
												}
											}
											?>';
								break;

							}

							text += '</select> ';

							

							text += ' &nbsp;&nbsp; <span id="parts_data_'+item+'_'+i+'_'+x+'"></span>';

							
							$("#"+item+"_part_"+i+"_place .please").css({'display':'none'});
							$(".add_plus_"+item+"_"+i).css({'visibility':'visible'});
						}



						if (mode == 'html')
						{
							$("#"+item+"_part_"+i+"_place").html('<div style="margin-top:5px;">'+text+'</div>');
						}
						else if (mode == 'append')
						{
							$("#"+item+"_part_"+i+"_place").append('<div style="margin-top:5px;">'+text+'</div>');
						}

					}

					function remove_part(id)
					{
						$("#"+id).parent().remove();
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


						if (error == true)
						{
							return false;
						}
					}

				</script>
				<form method="get" action="" onsubmit="return validate()">
					<input type="hidden" name="do" value="ticket_new">
					<input type="hidden" name="step" value="3">
					<input type="hidden" name="showtime_id" value="<?=$_GET['showtime_id']?>">
					<input type="hidden" name="coupon" value="<?=$_GET['coupon']?>">
					<input type="hidden" name="coupon_discount" value="<?=$_GET['coupon_discount']?>">
					<input type="hidden" name="tags_category_id" value="<?=$_GET['tags_category_id']?>">
					
					<table cellpadding="5" width="100%">
						<?PHP
						$sql_showtime = $admin->sql("select * from showtime where (id = '".intval($_GET['showtime_id'])."') ");
						$showtime = $admin->row($sql_showtime);

						$tags_category_sql = $admin->sql("select * from tags_category where (id = '".intval($_GET['tags_category_id'])."')");
						$tags_category = $admin->row($tags_category_sql);

						$items = array('mens' => array(1 => 'آقا' , 2 => 'مرد') , 'womens' => array(1 => 'خانم' , 2 => 'زن') , 'frees' => array(1 => 'آزاد' , 2 => 'آزاد'));
						//var_dump($admin->guest_is_block(2));


						$closets = $admin->sql("select * from closet where (status = 'فعال' and category_name IN (select cname from showtime_closet_category where (showtime_id = '$showtime[id]'))) order by id asc");
						

						$i = 1;
						foreach ($items as $item => $name)
						{
							if ($tags_category[$item] == 'on')
							{
								for ($j = 1 ; $j <= $tags_category[$item.'_count'] ; $j++)
								{

									?>
									<tr>
										<td width="90"><?=$name[1]?> : </td>
										<td>
											<?PHP ?>
											<select name="<?=$item?>_guest_<?=$i?>" class="input-s chosen chosen-rtl guest_select guest_select_<?=$i?>" onchange="show_part_as('<?=$i?>' , '<?=$item?>' , '1' , 'html')" >
												<option value="">انتخاب کنید</option>
												<?PHP
												if($tags_category['type'] == 'مهمان'){
													$guest_sql = $admin->sql("select * from guest ".($item == 'frees' ? '' : " where sex = '$name[2]' ")." order by id desc");
													while ($guest = $admin->row($guest_sql))
													{
														echo '<option value="'.$guest['id'].'" data-block="'.($admin->guest_is_block($guest['id']) ? 'yes' : 'no').'" data-sex="'.$guest['sex'].'">'.$guest['name'].'</option>';
													}
												}
												elseif($tags_category['type'] == 'پرسنل'){
													$personel_sql = $admin->sql("select * from personel ".($item == 'frees' ? '' : " where gender = '$name[2]' ")." order by id desc");
													while ($personel = $admin->row($personel_sql))
													{
														echo '<option value="'.$personel['id'].'" data-block="'.($admin->guest_is_block($personel['id']) ? 'yes' : 'no').'" data-sex="'.$personel['gender'].'">'.$personel['name'].'</option>';
													}
													?>
													<script type="text/javascript">
														$("#can_use_coupon").css({'display':'none'})
													</script>
													<?PHP

												}

												?>
											</select>
										</td>
									</tr>

									<tr>
										<td>بخش : </td>
										<td>
											<div id="<?=$item?>_part_<?=$i?>_place">
												<span class="please">لطفا یک مهمان یا پرسنل را انتخاب کنید</span>
											</div>
										</td>
									</tr>
									
									<tr>
										<td>&nbsp;</td>
										<td>
											
											<div class="add_plus_<?=$item?>_<?=$i?>" style="visibility:hidden">
												<div id="<?=$item?>_part_<?=$i?>_place"></div>
												<a href="javascript:void(0)" onclick="show_part_as('<?=$i?>' , '<?=$item?>' , '0' , 'append')"><img src="images/add.png"></a>
											</div>

										</td>
									</tr>

									<?PHP
									if ($i <= $_GET['closet'])
									{
										?>
										<tr>
											<td>کمد : </td>
											<td>
												<select name="closet_<?=$i?>" class="chosen chosen-rtl">
													<option value="">انتخاب کنید</option>
													<?PHP
													foreach ($closets as $closet)
													{
														echo '<option value="'.$closet['id'].'">'.$closet['name'].' ['.($closet['price'] == 0 ? 'رایگان' : $closet['price'].' تومان').']</option>';
													}
													?>
												</select>
											</td>
										</tr>
										<?PHP
									}

									?>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>


									<?PHP 

									$i++;
								}
							}
						}

						?>

						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td><input type="submit" value="مرحله بعد" class="input-b"> <a href="<?=substr(str_replace('step=2' , 'step=1' , $_SERVER['REQUEST_URI']) , 1)?>" class="input-g">مرحله قبل</a></td>
						</tr>

					</table>
				</form>

				<script>
					

					<?PHP
					if (isset($_GET['back']) and $_GET['back'] == 'true') // user clicked on back from step 3
					{
						?>
						$(document).ready(function(){
							<?PHP
							foreach ($_GET as $k => $v)
							{
								
								
								if (stripos($k , 'guest') >= 1)
								{
									$item = explode('_' , $k);

									?>
									//console.log('k=><?=$k?>    item[0]=><?=$item[0]?>    item[1]=><?=$item[1]?>    item[2]=><?=$item[2]?>    v=><?=$v?>');
									
									<?PHP if (!empty($v)) { ?>
									$(".guest_select_<?=$item[2]?> option[value=<?=$v?>]").attr('selected','selected');
									<?PHP } ?>

									$('select').trigger("chosen:updated");
									show_part_as('<?=$item[2]?>' , '<?=$item[0]?>' , '1' , 'html');



									<?PHP
									for ($i = 1 ; $i <= 10 ; $i++)
									{
										if (!empty($_GET[$item[0].'_part_'.$item[2]][$i]))
										{
											if ($i > 1)
											{
												?>
												show_part_as('<?=$item[2]?>' , '<?=$item[0]?>' , '0' , 'append');
												<?PHP
											}

											?>
											//console.log("#<?=$item[0]?>_part_<?=$item[2]?>_<?=$i?> option[value=<?=$_GET[$item[0].'_part_'.$item[2]][$i]?>]")
											$("#<?=$item[0]?>_part_<?=$item[2]?>_<?=$i?> option[value=<?=$_GET[$item[0].'_part_'.$item[2]][$i]?>]").attr('selected','selected');
											show_parts('<?=$item[0]?>' , '<?=$item[2]?>' , '<?=$i?>');
											<?PHP
										}
									}
								}
							}
							?>
						});
						<?PHP
					}
					?>

					$(".chosen").chosen({'width':'200px'});
				</script>















			<?PHP break;
			
			case '3' : ?>

				<?PHP
				$session_key = uniqid();
				?>

				<div style="text-align:center; margin-bottom: 25px;"><img src="images/step3.jpg"></div>


				<form method="get" action="" onsubmit="return validate()">
					<input type="hidden" name="do" value="ticket_new">
					<input type="hidden" name="step" value="4">
					<input type="hidden" name="key" value="<?=$session_key?>">
					<?PHP
					foreach (explode('&' , $_SERVER['REQUEST_URI']) as $item)
					{
						list($key , $value) = explode('=' , urldecode($item));

						if ($key != 'step' and $key != '/index.php?do' and !empty($value))
							echo '<input type="hidden" name="'.$key.'" value="'.$value.'">';
					}
					?>
					
					<?PHP
					$row_c = 1;

					$guests = array();
					$parts = array();
					$guests_parts = array();

					foreach ($_GET as $key => $guest_id)
					{
						$e = explode('_' , $key);

						if ($e[1] == 'guest' and (in_array($e[0] , array('mens' , 'womens' , 'frees'))))
						{
							if (count($_GET[$e[0].'_part_'.$e[2]]))
							{
								foreach ($_GET[$e[0].'_part_'.$e[2]] as $none => $part_id)
								{
									$guests[$guest_id] = 0;
									$parts[$part_id] = array('guest_id' => $guest_id , 'item' => $e[0]);
									$guests_parts[$guest_id.'_'.$part_id] = $e[0];

									if (isset($_GET['closet_'.$e[2]]))
									{
										$closet_id = $_GET['closet_'.$e[2]];

										$closet_sql = $admin->sql("select * from closet where (id = '".intval($closet_id)."')");
										$closet_item = $admin->row($closet_sql);

										$closet[$guest_id] = $closet_item;
										$sum_closets += $closet_item['price'];
										$closet_text .= $closet_item['name'].' - ';
									}
								}
							}
						}
					}


					$showtime = $admin->sql("select * from showtime where (id = '".intval($_GET['showtime_id'])."' )")->fetch_object();
					$tags_category = $admin->sql("select * from tags_category where (id = '".intval($_GET['tags_category_id'])."' )")->fetch_object();
					
					foreach ($parts as $part_id => $value)
					{
						$guest_type = $admin->result($admin->sql("select sex from guest where (id = '".$value['guest_id']."')") , 0);

						$guest_type = $guest_type == 'مرد' ? 'mens' : 'womens';

					//	$sum_parts += $admin->result($admin->sql("select ".$guest_type."_amount from ".(substr($part_id , 0 , 4) == 'temp' ? 'temp_part' : 'part')." where (id = '".(substr($part_id , 0 , 4) == 'temp' ? substr($part_id , 5 , 4) : $part_id)."' )") , 0);
					}

					foreach ($guests_parts as $vx => $none)
					{
						list($guest_id , $part_id) = explode('_' , $vx);

						$sum_parts += $admin->result($admin->sql("select ".$guest_type."_amount from ".(substr($part_id , 0 , 4) == 'temp' ? 'temp_part' : 'part')." where (id = '".(substr($part_id , 0 , 4) == 'temp' ? substr($part_id , 5 , 4) : $part_id)."' )") , 0);
					}


					if ($admin->sql("select type from tags_category where (id = '".intval($_GET['tags_category_id'])."') ")->fetch_object()->type == 'پرسنل')
					{
						$showtime->price = 0;
						$sum_parts = 0;
					}

					$closet_text = trim($closet_text , ' - ');
					

					$total_sum_amount = ($showtime->price * count($guests)) + ($tags_category->pledge * count($guests)) + ($sum_parts) + $sum_closets;
					
					$tags_category_discount = $tags_category->discount;
					
					$coupon_discount = @$admin->result($admin->sql("select amount from coupon where (serial = '".intval($_GET['coupon'])."' and status = 'فعال')") , 0);
					
					$total_pay_amount = $total_sum_amount - $tags_category_discount - $coupon_discount;

					$discount_1000_rials = ($total_pay_amount % 100);

					$total_pay_amount = $total_pay_amount - $discount_1000_rials;

					if ($total_pay_amount < 0)
					{
						$total_pay_amount = 0;
					}


					$_SESSION[$session_key] = array('guests' => $guests , 'parts' => $guests_parts , 'login_amount' => ($showtime->price * count($guests)) , 'total_part_amount' => $sum_parts , 'tag_discount' => $tags_category_discount , 'tag_pledge' => ($tags_category->pledge * count($guests)) , 'amount' => $total_pay_amount , 'discount_1000_rials' => $discount_1000_rials , 'coupon_discount' => $coupon_discount , 'closets' => $closet , 'total_closet_amount' => $sum_closets);

					?>
					<style>
						.tblxon {
							width: 800px;
							margin: 0 auto;
							text-align: center;
						}

						.tblxon td {
							padding: 7px;
						}

						.tblxon * {
							font-size: 9pt;
						}
					</style>
					<div style="text-align: center; line-height: 60px; font-size: 12pt; font-weight: bold;">پیش فاکتور صدور بلیط</div>
					<table class="tblxon">
						<tr style="background: black; color:white;">
							<td width="60">ردیف</td>
							<td>شرح</td>
							<td width="130">قیمت</td>
							<td width="100">تعداد</td>
							<td width="140">جمع</td>
						</tr>

						<tr>
							<td><?=$row_c++?></td>
							<td>ورودی سانس : <?=$showtime->name?></td>
							<td><?=number_format($showtime->price)?> ت</td>
							<td><?=count($guests)?></td>
							<td><?=number_format($showtime->price * count($guests))?> ت</td>
						</tr>
						<tr>
							<td><?=$row_c++?></td>
							<td>گرویی تگ</td>
							<td><?=number_format($tags_category->pledge)?> ت</td>
							<td><?=count($guests)?></td>
							<td><?=number_format($tags_category->pledge * count($guests))?> ت</td>
						</tr>
						<tr>
							<td><?=$row_c++?></td>
							<td>بخش ها</td>
							<td><?PHP /* <?=number_format($sum_parts)?> ت */ ?></td>
							<td><?=count($guests_parts)?></td>
							<td><?=number_format($sum_parts)?> ت</td>
						</tr>
						<tr>
							<td><?=$row_c++?></td>
							<td>کمدها : <?=$closet_text?></td>
							<td><?PHP /* <?=number_format($sum_parts)?> ت */ ?></td>
							<td><?=count($closet)?></td>
							<td><?=number_format($sum_closets)?> ت</td>
						</tr>
						<tr>
							<td rowspan="5">&nbsp;</td>
							<td rowspan="5" style="vertical-align: text-top; text-align: right;">
								<?PHP
								$guest_type_porg = $admin->sql("select type from tags_category where (id = '".intval($_GET['tags_category_id'])."') ")->fetch_object()->type;

								foreach ($guests_parts as $vx => $none)
								{
									list($guest_id , $part_id) = explode('_' , $vx);
									unset($guest);

									if ($guest_type_porg == 'پرسنل')
									{
										$guest = $admin->sql("select * from personel where (id = '$guest_id')");
										$guest = $admin->row($guest);
									}
									else
									{
										$guest = $admin->sql("select * from guest where (id = '$guest_id')");
										$guest = $admin->row($guest);
									}
									

									$part = $admin->sql("select * from ".(substr($part_id , 0 , 4) == 'temp' ? 'temp_part' : 'part')." where (id = '".(substr($part_id , 0 , 4) == 'temp' ? substr($part_id , 5 , 4) : $part_id)."' )");
									$part = $admin->row($part);

									$guest_type = $admin->result($admin->sql("select sex from guest where (id = '$guest_id')") , 0);
									
									$guest_type = ($guest_type == 'مرد' ? 'mens' : 'womens');
									

									if ($guest_type == 'پرسنل')
									{
										echo $guest['name'].' : '.$part['name'].' : رایگان برای پرسنل<br><br>';
									}
									else
									{
										echo $guest['name'].' : '.$part['name'].' : '.number_format($part[$guest_type.'_amount']).' تومان<br><br>';
									}
									
								}
								?>
							</td>
							<td colspan="1" style="text-align: left">&nbsp;</td>
							<td>جمع کل</td>
							<td><span style="color:green"><?=number_format($total_sum_amount)?> ت</span></td>
						</tr>
						<tr>
							<td colspan="1" style="text-align: left">&nbsp;</td>
							<td>تخفیف تگ</td>
							<td><span style="color:red">-<?=number_format($tags_category_discount)?> ت</span></td>
						</tr>
						<tr>
							<td colspan="1" style="text-align: left">&nbsp;</td>
							<td>گیفت کارت</td>
							<td><span style="color:red">-<?=number_format($coupon_discount)?> ت</span></td>
						</tr>
						<tr>
							<td colspan="1" style="text-align: left">&nbsp;</td>
							<td>تخفیف رند</td>
							<td><span style="color:red">-<?=number_format($discount_1000_rials)?> ت</span></td>
						</tr>
						<tr>
							<td colspan="1" style="text-align: left">&nbsp;</td>
							<td style="background: #e1e1e1;">مبلغ قابل پرداخت</td>
							<td style="background: #e1e1e1;"><span style="color:green; font-weight: bold; font-size: 12pt;"><?=number_format($total_pay_amount)?> تومان</span></td>
						</tr>
					</table>

					<div style="width: 800px; margin: 20px auto; text-align: left;">

						<input type="submit" value="صدور نهایی بلیط" class="input-b" style="width: 150px;"> <a href="<?=substr(str_replace('step=3' , 'step=2' , $_SERVER['REQUEST_URI']) , 1)?>&back=true" class="input-g">مرحله قبل</a>
					</div>

				</form>






			<?PHP break;
			
			case '4' : ?>


				<div style="text-align:center; margin-bottom: 25px;"><img src="images/step4.jpg"></div>



				<?PHP
				if (isset($_GET['key']) and isset($_SESSION[$_GET['key']]))
				{
					$data = $_SESSION[$_GET['key']];

					$use_tag_sql = $admin->sql("select * from tags where (category_id = '$_GET[tags_category_id]')");
					if (mysqli_num_rows($use_tag_sql))
					{
						$coupon_sql = $admin->sql("select id from coupon where (serial = '$_GET[coupon]' and status = 'فعال')");
						if (mysqli_num_rows($coupon_sql) == 1 or empty($_GET['coupon']))
						{
							$tag = $admin->row($use_tag_sql);

							$admin->sql("update tags set status = 'active' where (id = '".$tag['id']."') limit 1");

							$sql = $admin->sql("insert into ticket set archive = 0 , suid = '".SUID."' , showtime_id = '$_GET[showtime_id]' , tag_category_id = '$_GET[tags_category_id]' , make_time = '".$admin->time('YmdHis')."' , make_time_stamp = '0' , description = '$_GET[description]' , login_amount = '$data[login_amount]' , total_part_amount = '$data[total_part_amount]' , tag_discount = '$data[tag_discount]' , tag_pledge = '$data[tag_pledge]' , discount_1000_rials = '$data[discount_1000_rials]' , coupon_discount = '$data[coupon_discount]' , amount = '$data[amount]' , tag_id = '$tag[id]' , coupon_id = (select id from coupon where (serial = '$_GET[coupon]')) , closet_amount = '$data[total_closet_amount]' ");


							if ($sql)
							{
								$admin->sql("update coupon set status = 'استفاده شده' where (serial = '$_GET[coupon]') limit 1 ");

								$ticket_id = $admin->sql("select last_insert_id() as insert_id from ticket");
								$ticket_id = $admin->row($ticket_id);
								$ticket_id = $ticket_id['insert_id'];


								foreach ($data['parts'] as $part_id => $value)
								{
									unset($temp_explode);
									$temp_explode = explode('_' , $part_id);

									if ($temp_explode[1] == 'temp')
									{
										$part_id = $temp_explode[2];
										$part_table = 'temp_part';
									}
									else
									{
										$part_id = $temp_explode[1];
										$part_table = 'part';
									}

									$admin->sql("update closet set status = 'در حال استفاده' where (id = '".$data['closets'][$temp_explode[0]]['id']."') limit 1");
									
									$admin->sql("insert into ticket_part set ticket_id = '$ticket_id' , guest_id = '$temp_explode[0]' , part_id = '$part_id' , type = '$value' , part_table = '$part_table' , closet_id = '".$data['closets'][$temp_explode[0]]['id']."' ");
								}
								

								$msg = "ثبت بلیط با شماره #".$ticket_id." با موفقیت انجام شد "; echo $admin->msg($msg , "true");
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

					unset($_SESSION[$_GET['key']]);
				}
				else
				{
					$msg = "خطا در دریافت اطلاعات یا این بلیط قبلا ثبت شده است"; echo $admin->msg($msg , "critical");
				}

				?>

			<?PHP break;
		}


		?>

	</div>
</div>
</div>
</td>
</tr>
</table>
