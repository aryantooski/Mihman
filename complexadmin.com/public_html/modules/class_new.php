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
				$date_start = $_POST['syear'].'-'.$_POST['smonth'].'-'.$_POST['sday'];
				$date_finish = $admin->class_date_finish();

				$sql = $admin->sql("insert into class set suid = '".SUID."' , name = '$_POST[name]' , `count` = '$_POST[count]' , amount = '".str_replace("," , "" , $_POST['amount'])."' , description = '$_POST[description]' , date_start = '$date_start' , date_finish = '$date_finish' , day_1_check = '$_POST[day_1_check]' , day_2_check = '$_POST[day_2_check]' , day_3_check = '$_POST[day_3_check]' , day_4_check = '$_POST[day_4_check]' , day_5_check = '$_POST[day_5_check]' , day_6_check = '$_POST[day_6_check]' , day_7_check = '$_POST[day_7_check]' , day_1_time = '$_POST[day_1_time]' , day_2_time = '$_POST[day_2_time]' , day_3_time = '$_POST[day_3_time]' , day_4_time = '$_POST[day_4_time]' , day_5_time = '$_POST[day_5_time]' , day_6_time = '$_POST[day_6_time]' , day_7_time = '$_POST[day_7_time]' ");

				if  ($sql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}

				$admin->LOG('سالن جدید' , $msg);
			}
			?>
			
			<div class="add-in">
				<b class="bx">سالن جدید : </b>
				<div class="co">
					<form method="post" action="" enctype="multipart/form-data" id="frm_class_add">
						<input type="hidden" name="post" />
						<table cellpadding="2">
							<tr>
								<td>عنوان : </td>
								<td><input type="text" name="name" class="input-t" size="40" /></td>
							</tr>
							<tr>
								<td>تعداد جلسات : </td>
								<td><input type="text" name="count" class="input-t" size="10" style="text-align:center;" onchange="show_date_finish()"> جلسه</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>

							<tr>
								<td>روزهای کلاس : </td>
								<td>
									<table cellpadding="4">

										<tr style="background: #e1e1e1">
											<td>روز هفته</td>
											<td>ساعت شروع</td>
										</tr>

										<tr>
											<td><label><input type="checkbox" onchange="show_date_finish()" name="day_1_check"> شنبه</label></td>
											<td><?=$admin->select_clock('day_1_time')?></td>
										</tr>

										<tr>
											<td><label><input type="checkbox" onchange="show_date_finish()" name="day_2_check"> یکشنبه</label></td>
											<td><?=$admin->select_clock('day_2_time')?></td>
										</tr>

										<tr>
											<td><label><input type="checkbox" onchange="show_date_finish()" name="day_3_check"> دوشنبه</label></td>
											<td><?=$admin->select_clock('day_3_time')?></td>
										</tr>

										<tr>
											<td><label><input type="checkbox" onchange="show_date_finish()" name="day_4_check"> سه شنبه</label></td>
											<td><?=$admin->select_clock('day_4_time')?></td>
										</tr>

										<tr>
											<td><label><input type="checkbox" onchange="show_date_finish()" name="day_5_check"> چهار شنبه</label></td>
											<td><?=$admin->select_clock('day_5_time')?></td>
										</tr>

										<tr>
											<td><label><input type="checkbox" onchange="show_date_finish()" name="day_6_check"> پنج شنبه</label></td>
											<td><?=$admin->select_clock('day_6_time')?></td>
										</tr>

										<tr>
											<td><label><input type="checkbox" onchange="show_date_finish()" name="day_7_check"> جمعه</label></td>
											<td><?=$admin->select_clock('day_7_time')?></td>
										</tr>

									</table>
									
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>قیمت : </td>
								<td><input type="text" name="amount" class="input-t" dir="ltr" <?PHP echo NUMERAL; ?> /> تومان</td>
							</tr>
							<tr>
								<td>تاریخ شروع کلاس : </td>
								<td dir="ltr">
									<?PHP
									list($date , $time) = explode(" " , $admin->true_time());

									list($year , $month , $day) = explode("-" , $date);
									list($hour , $min , $sec) = explode(":" , $time);

									$month += 0;
									$day += 0;
									$hour += 0;
									$min += 0;
									$sec += 0;

									?>
									<?PHP echo $admin->full_select(1380 , 1400 , 'syear' , $year , NULL , 'onchange="show_date_finish()"') ?>
									<?PHP echo $admin->full_select(1 , 12 , 'smonth' , $month , NULL , 'onchange="show_date_finish()"') ?>
									<?PHP echo $admin->full_select(1 , 31 , 'sday' , $day , NULL , 'onchange="show_date_finish()"') ?> &nbsp; 
								</td>
							</tr>
							<tr>
								<td>تاریخ پایان کلاس : </td>
								<td dir="ltr">
									<span class="frm_class_date_finish"></span>
								</td>
							</tr>

							<?PHP /*
							<tr>
								<td>تاریخ پایان کلاس : </td>
								<td dir="ltr">
									<?PHP echo $admin->full_select(1380 , 1400 , 'fyear' , $year) ?>
									<?PHP echo $admin->full_select(1 , 12 , 'fmonth' , $month) ?>
									<?PHP echo $admin->full_select(1 , 31 , 'fday' , $day) ?> &nbsp; 
								</td>
							</tr>
							*/ ?>
							<tr>
								<td>توضیحات : </td>
								<td><textarea name="description" class="input-s" style="width:300px;"></textarea></td>
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
