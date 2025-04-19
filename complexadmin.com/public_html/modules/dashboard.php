<?PHP
require_once("header.php");
require_once("menu.php");
?>
</td>
</tr>
<tr>
	<td valign="top">
		<div class="text-cont">
			<br />

			<?PHP
			$admin->LOG('داشبورد' , 'داشبورد');
			if ($_SESSION['login'] != 'poster-control')
			{
				?>
				<table cellspacing="0" cellpadding="4" border="1" bordercolor="#FFFFFF" style="color:#069; width: 100%">
					<tr>
						<td width="200" bgcolor="#88b3c9" style="color:#FFFFFF">بلیط فروخته شده : </td>
						<td width="160" align="center" bgcolor="#e2f5ff">
							<?PHP
							echo number_format($admin->result($admin->sql("select count(*) from ticket") , 0));
							?>
						</td>
						<td width="200" bgcolor="#88b3c9" style="color:#FFFFFF">تعداد بلیط فعال : </td>
						<td width="160" align="center" bgcolor="#e2f5ff">
							<?PHP
							echo number_format($admin->result($admin->sql("select count(*) from ticket where status = 'فعال'") , 0));
							?>
						</td>
						<td width="200" bgcolor="#88b3c9" style="color:#FFFFFF">تعداد بلیط ابطالی : </td>
						<td align="center" bgcolor="#e2f5ff">
							<?PHP
							echo number_format($admin->result($admin->sql("select count(*) from ticket where status = 'ابطال'") , 0));
							?>
						</td>
					</tr>
					<tr>
						<td colspan="8"></td>
					</tr>
					<tr>
						<td bgcolor="#88b3c9" style="color:#FFFFFF">تعداد بلیط مرجوعی : </td>
						<td align="center" bgcolor="#e2f5ff">
							<?PHP
							echo number_format($admin->result($admin->sql("select count(*) from ticket where status = 'مرجوع'") , 0));
							?>
						</td>
						<td bgcolor="#88b3c9" style="color:#FFFFFF">تعداد بلیط تاریخ گذشته : </td>
						<td align="center" bgcolor="#e2f5ff">
							<?PHP
							$now = substr($admin->true_time() , 0 , 10);
							echo number_format($admin->result($admin->sql("select count(*) from ticket where time_finish <= '$now'") , 0));
							?>
						</td>
						<td bgcolor="#88b3c9" style="color:#FFFFFF">آخرین ورود مدیر : </td>
						<td align="center" bgcolor="#e2f5ff" dir=ltr>
							<?PHP
							echo $admin->result($admin->sql("select lastlogin from admin") , 0);
							?>
						</td>
					</tr>
					<tr>
						<td colspan="8"></td>
					</tr>
					<tr>
						<td bgcolor="#88b3c9" style="color:#FFFFFF">تعداد بلیط چاپ نشده : </td>
						<td align="center" bgcolor="#e2f5ff">
							<?PHP
							echo number_format($admin->result($admin->sql("select count(*) from ticket where printed = '0'") , 0));
							?>
						</td>
						<td bgcolor="#88b3c9" style="color:#FFFFFF">تعداد بلیط چاپ شده : </td>
						<td align="center" bgcolor="#e2f5ff">
							<?PHP
							$now = substr($admin->true_time() , 0 , 10);
							echo number_format($admin->result($admin->sql("select count(*) from ticket where printed = '1'") , 0));
							?>
						</td>
						<td bgcolor="#88b3c9" style="color:#FFFFFF">آخرین اجرای خودکار بروزرسانی : </td>
						<td align="center" bgcolor="#e2f5ff" dir=ltr>
							<?PHP
							echo jgmdate('Y-m-d H:i:s' , $admin->result($admin->sql("select period_lasttime from admin") , 0));
							?>
						</td>
					</tr>
					<tr>
						<td colspan="8"></td>
					</tr>
					<tr>
						<td bgcolor="#88b3c9" style="color:#FFFFFF">تعداد کل اسلات : </td>
						<td align="center" bgcolor="#e2f5ff">
							<?PHP
							echo number_format($admin->result($admin->sql("select sum(capacity) as sum from showtime") , 0));
							?>
						</td>
						<td bgcolor="#88b3c9" style="color:#FFFFFF">اسلات فروخته شده : </td>
						<td align="center" bgcolor="#e2f5ff">
							<?PHP
							echo number_format($admin->result($admin->sql("select count(*) as cnt from ticket_part") , 0));
							?>
						</td>
						<td bgcolor="#88b3c9" style="color:#FFFFFF">اسلات باقی مانده : </td>
						<td align="center" bgcolor="#e2f5ff" dir=ltr>
							<?PHP
							echo number_format($admin->result($admin->sql("select sum(capacity) as sum from showtime") , 0) - $admin->result($admin->sql("select count(*) as cnt from ticket_part") , 0));
							?>
						</td>
					</tr>
					<tr>
						<td colspan="8">&nbsp;</td>
					</tr>
				</table>
				<br /><br />
				<?PHP
			}
			else
			{
				echo '
				<br>
				خوش آمدید ، <b>'.$_SESSION['data_poster']['name'].'</b>
				<br><br><br><br>
				<hr><br>
				<b>پیام خصوصی شما :</b><br>
				'.nl2br($_SESSION['data_poster']['msg']).'
				<br><br><br><br>
				<hr><br>
				<b>پیامهای عمومی :</b><br><br>
				';
				$sql = $admin->sql("select * from msgs order by id desc limit 10");
				while ($row = $admin->row($sql))
				{
					echo '<div style="border:1px solid #e1e1e1; padding:10px; border-radous:7px; margin-bottom:30px;">';
					echo nl2br($row['text']).'<br><br> تاریخ ارسال : '.$row['date'];
					echo '</div>';
				}

			}




			$sql = $admin->sql("select * from showtime where (archive = 0) order by id desc");

			$now = substr($admin->true_time() , 0 , 10);

			while ($row = $admin->row($sql))
			{
				$active = $admin->result($admin->sql("select count(*) from ticket where (status = 'فعال' and showtime_id = '$row[id]') ") , 0);
				$reserve = $admin->result($admin->sql("select count(*) from ticket where (id NOT IN(select ticket_id from tags_guest_ticket) and showtime_id = '$row[id]') ") , 0);

				//$total_slot = $admin->result($admin->sql("select count(*) from ticket_part where (ticket_id IN (select id from ticket where (showtime_id = '$row[id]'  ) ) ) ") , 0);
				  

				echo '
				<fieldset class="showtime_view">
					<legend>'.$row['name'].'</legend>

					<table cellspacing="0" cellpadding="4" border="1" bordercolor="#FFFFFF" style="color:#069" width="100%">
						<tr>
							
							<td width="110" bgcolor="#88b3c9" style="color:#FFFFFF">بلیط فروخته شده : </td>
							<td width="70" align="center" bgcolor="#88b3c9" style="color:#FFFFFF">'.$admin->result($admin->sql("select count(*) from ticket where showtime_id = '$row[id]' ") , 0).'</td>
							
							<td width="110" bgcolor="#e2f5ff" >بلیط فعال : </td>
							<td width="70" align="center" bgcolor="#e2f5ff">'.$active.'</td>

							<td width="110" bgcolor="#88b3c9" style="color:#FFFFFF">بلیط رزرو : </td>
							<td width="70" align="center" bgcolor="#88b3c9"style="color:#FFFFFF">'.$reserve.'</td>

							<td width="110" bgcolor="#e2f5ff">بلیط مرجوع : </td>
							<td width="70" align="center" bgcolor="#e2f5ff">'.$admin->result($admin->sql("select count(*) from ticket where (status = 'مرجوع' and showtime_id = '$row[id]') ") , 0).'</td>
							
							<td width="110" bgcolor="#88b3c9" style="color:#FFFFFF">بلیط ابطالی : </td>
							<td width="70" align="center" bgcolor="#88b3c9" style="color:#FFFFFF">'.$admin->result($admin->sql("select count(*) from ticket where (status = 'ابطال' and showtime_id = '$row[id]') ") , 0).'</td>
							
							<td width="110" bgcolor="#e2f5ff">بلیط تاریخ گذشته : </td>
							<td align="center" bgcolor="#e2f5ff" dir=ltr>';
							
							if ($admin->jdate_to_stamp($row['end_date'].' '.$row['end_hour'].':'.$row['end_minute'].':00') < time()) // showtime expired
							{
								echo $admin->result($admin->sql("select count(*) from ticket where (tag_id = 0 and showtime_id = '$row[id]'  ) ") , 0);
							}
							else
							{
								echo '0';
							}

							echo '</td>
						</tr>
						<tr>
							
							
							<td bgcolor="#88b3c9" style="color:#FFFFFF" >ظرفیت : </td>
							<td bgcolor="#88b3c9" style="color:#FFFFFF" align="center">'.$row['capacity'].' نفر</td>
							

							<td bgcolor="#e2f5ff">ظرفیت باقی مانده : </td>
							<td align="center" bgcolor="#e2f5ff">'.($row['capacity'] - $active).' نفر</td>
							

							<td bgcolor="#88b3c9" style="color:#FFFFFF">کل اسلات : </td>
							<td align="center" bgcolor="#88b3c9" style="color:#FFFFFF">'.$total_slot.'</td>
							
							<td bgcolor="#e2f5ff">اسلات فروخته شده : </td>
							<td align="center" bgcolor="#e2f5ff">'.$sold_slot.'</td>
							
							<td bgcolor="#88b3c9" style="color:#FFFFFF">اسلات باقی مانده : </td>
							<td align="center" bgcolor="#88b3c9" style="color:#FFFFFF">'.($total_slot - $sold_slot).'</td>
							
						</tr>
					</table>

				</fieldset>

				';

			}


			?>

		</div>
	</td>
</tr>
</table>
