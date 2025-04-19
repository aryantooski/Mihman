<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>گزارشات</title>
<link href="printcss.css?v=2" rel="stylesheet" type="text/css" />
</head>
<body>
<?PHP
if ($_SESSION['login'] == 'poster-control')
{
	$SOME_OTHER_WHERE = "and (suid = '".$_SESSION['data_poster']['id']."')";
}
?>
	<div class="page" <?PHP if ($_GET['do']=='report_paystubs' or $_REQUEST['paper'] == 'fish' or $_REQUEST['paper'] == 'a4mini'){ echo ' style="border:0;'; if ($_REQUEST['paper'] == 'fish') {echo 'margin:0; padding:0; width:100%;';}  echo ' "';}?>>
		<div class="padding" <?PHP if ($_REQUEST['paper'] == 'fish' or $_REQUEST['paper'] == 'a4mini') {echo ' style="padding:0"';}  ?>>
    		<?PHP
			
			$start = $_POST['start_year'].'-'.$_POST['start_month'].'-'.$_POST['start_day'].' 00:00:00';
			$end = $_POST['end_year'].'-'.$_POST['end_month'].'-'.$_POST['end_day'].' 23:59:59';
			
			switch ($_GET['do'])
			{
				case 'report_personel_time' :
					$admin->LOG('گزارش ورود و خروج پرسنل' , 'دریافت گزارش');
					?>
					<center><b>گزارش ورود و خروج پرسنل</b><br /><?PHP echo $admin->result($admin->sql("select name from personel where (id = '$_POST[personel_id]')") , 0) ?></center><br />
                    
                    <table border="1" width="100%" style="text-align:center">
                      <tr style="background-color:#000; color:#FFF;">
                        <td>#</td>
                        <td>ساعت</td>
                        <td>تاریخ</td>
                        <td>عملیات</td>
                        <td>توضیحات</td>
                        <td>کارکرد</td>
                        <td>دستمزد</td>
                      </tr>
                    
					<?PHP
					require_once("inc/date.php");
					
					
					
					$amount_per_hour = $admin->result($admin->sql("select amount_per_hour from personel where id = '$_POST[personel_id]'") , 0);
					$amount_per_min = $amount_per_hour / 60;
					
					$s = 0;
					$e = 0;
					//$sql = $admin->sql("select * from personel_time where ((description like '%$_POST[pool]%') and (personel_id = '$_POST[personel_id]') and (time >= '$start' and time <= '$end') $SOME_OTHER_WHERE) order by time asc");
					$sql = $admin->sql("select * from personel_time where ((personel_id = '$_POST[personel_id]') and (time >= '$start' and time <= '$end')) order by time asc");
					while ($row = $admin->row($sql))
					{
						list($date , $time) = explode(" " , $row['time']);
						
						
						echo '
                      <tr>
                        <td>'.$row['id'].'</td>
                        <td>'.$time.'</td>
                        <td>'.$date.'</td>
                        <td>'.$row['act'].'</td>
                        <td>'.$row['description'].'</td>';
						
						if ($row['act'] == 'خروج')
						{
							//select * from personel_time where (personel_id = '$_POST[personel_id]' and id < '$row[id]') order by time desc limit 1
							
							//$sql_get_vorood = $admin->sql("select * from personel_time where (personel_id = '$_POST[personel_id]' and time < '$row[time]' and type='ورود') order by time desc limit 1");
							//$vorood = $admin->row($sql_get_vorood);
							
							
							unset($date , $time , $year , $month , $day , $hour , $min , $sec , $t_1 , $t_2);
							list($date , $time) = explode(" " , $vorood['time']);
							list($year , $month , $day) = explode("-" , $date);
							list($hour , $min , $sec) = explode(":" , $time);
							
							$month += 0;
							$day += 0;
							$hour += 0;
							$min += 0;
							$sec += 0;
							
							$t_1 = jmaketime($hour , $min , $sec , $month , $day , $year);
							
							
							
							unset($date , $time , $year , $month , $day , $hour , $min , $sec);
							list($date , $time) = explode(" " , $row['time']);
							list($year , $month , $day) = explode("-" , $date);
							list($hour , $min , $sec) = explode(":" , $time);
							
							$month += 0;
							$day += 0;
							$hour += 0;
							$min += 0;
							$sec += 0;
							
							$t_2 = jmaketime($hour , $min , $sec , $month , $day , $year);
							$e += $t_2 - $t_1;
							$data = $admin->second_to_hour($t_2 - $t_1);
							
							$mozd = round($data[4] * $amount_per_min);
							$s += $mozd;
							
							echo '<td bgcolor="#e1e1e1">'.$data[1].'</td>';
							echo '<td bgcolor="#e1e1e1">'.number_format($mozd).' تومان</td>';
							$vorood = NULL;
						}
						else
						{
							$vorood = $row;
							echo '<td colspan="2">&nbsp;</td>';
						}
						
						echo '
                      </tr>
						';
					}
					
					?>
                      <tr>
                        <td colspan="7" align="center" style="background-color:#999;">جمع کل : <?PHP echo number_format($s) ?> تومان --- جمع ساعت کارکرد : <?PHP $d = $admin->second_to_hour($e); echo $d[1] ?></td>
                      </tr>
                    </table>
                    
					<?PHP
				break;
				
				
				
				
				
				
				
				case 'report_costs' :
					$admin->LOG('گزارش هزینه ها' , 'دریافت گزارش');
					?>
					<center><b>گزارش هزینه ها</b><br /><?PHP if ($_POST['cost_group_id'] == ''){ echo 'کل هزینه ها'; } else {echo $admin->result($admin->sql("select name from cost_group where id = '$_POST[cost_group_id]'") , 0);} ?></center><br />
                    
                    <table border="1" width="100%" style="text-align:center">
                    
					<?PHP
					$sum = 0;
					if ($_POST['cost_group_id'] == '')
					{
						?>
                      <tr style="background-color:#000; color:#FFF;">
                        <td>گروه</td>
                        <td>عنوان</td>
                        <td>مبلغ پرداختی</td>
                        <td>ساعت</td>
                        <td>تاریخ</td>
                        <td>توضیحات</td>
                      </tr>
						<?PHP
						
						$sql = $admin->sql("select * from cost where (time >= '$start' and time <= '$end' $SOME_OTHER_WHERE)");
						while ($row = $admin->row($sql))
						{
							list($date , $time) = explode(" " , $row['time']);
							
							echo '
						  <tr>
							<td>'.$admin->result($admin->sql("select name from cost_group where id = '$row[group_id]'") , 0).'</td>
							<td>'.$row['name'].'</td>
							<td>'.@number_format($row['amount']).' تومان</td>
							<td>'.$time.'</td>
							<td>'.$date.'</td>
							<td>'.$row['description'].'</td>
						  </tr>
							';
							
							$sum += $row['amount'];
						}
					}
					else
					{
						?>
                      <tr style="background-color:#000; color:#FFF;">
                        <td>عنوان</td>
                        <td>مبلغ پرداختی</td>
                        <td>ساعت</td>
                        <td>تاریخ</td>
                        <td>توضیحات</td>
                      </tr>
						<?PHP
						
						$sql = $admin->sql("select * from cost where (group_id = '$_POST[cost_group_id]' and (time >= '$start' and time <= '$end') $SOME_OTHER_WHERE)");
						while ($row = $admin->row($sql))
						{
							list($date , $time) = explode(" " , $row['time']);
							
							echo '
						  <tr>
							<td>'.$row['name'].'</td>
							<td>'.@number_format($row['amount']).' تومان</td>
							<td>'.$time.'</td>
							<td>'.$date.'</td>
							<td>'.$row['description'].'</td>
						  </tr>
							';
							
							$sum += $row['amount'];
						}
					}
					
					?>
                    
                      <tr>
                        <td colspan="6" align="center" style="background-color:#999;">جمع کل : <?PHP echo number_format($sum) ?> تومان</td>
                      </tr>
                    </table>
                    
					<?PHP
				break;
				
				
				
				
				
				case 'report_class' :
					$admin->LOG('گزارش آموزش' , 'دریافت گزارش');
					?>
					<center><b>گزارش آموزش</b><br /><?PHP echo $admin->result($admin->sql("select name from class where id = '$_POST[class_id]'") , 0) ?></center><br />
                    
                    <table border="1" width="100%" style="text-align:center">
                      <tr style="background-color:#000; color:#FFF;">
                        <td>نام و نام خانوادگی</td>
                        <td>تعرفه قیمت</td>
                        <td>تخفیف</td>
                        <td>مبلغ پرداختی</td>
                        <td>مانده</td>
                        <td>کد کارت آموزشی</td>
                        <td>تعداد کل جلسات</td>
                        <td>توضیحات</td>
                      </tr>
                    
					<?PHP
					$sum_0 = 0;
					$sum_1 = 0;
					$sum_2 = 0;
					$sum_3 = 0;
					
					switch ($_POST['report_by'])
					{
						case 'کلاس' :
							$sql = $admin->sql("select * from card where (class_id = '$_POST[class_id]' $SOME_OTHER_WHERE)");
						break;
						
						case 'کد کارت' :
							$sql = $admin->sql("select * from card where (code = '$_POST[value]' $SOME_OTHER_WHERE)");
						break;
						
						case 'نام مربی' :
							$t = '';
							$s = $admin->sql("select * from class where (teacher = '$_POST[teacher]' $SOME_OTHER_WHERE)");
							while ($r = $admin->row($s))
							{
								$t .= "class_id = '$r[id]' or ";
							}
							
							$t = substr($t , 0 , strlen($t) - 4);
							$sql = $admin->sql("select * from card where ($t $SOME_OTHER_WHERE)");
							
						break;
					}
					
					
					while ($row = $admin->row($sql))
					{
						
						echo '
                      <tr>
                        <td>'.$row['name'].'</td>
                        <td>'.@number_format($row['amount']).'</td>
                        <td>'.@number_format($row['discount']).'</td>
                        <td>'.@number_format($row['amount'] - $row['remained'] - $row['discount']).'</td>
                        <td>'.@number_format($row['remained']).'</td>
                        <td>'.$row['code'].'</td>
                        <td>'.@$admin->result($admin->sql("select `count` from class where id = '$row[class_id]'") , 0).'</td>
                        <td>'.$row['description'].'</td>
                      </tr>
						';
						
						
						$sum_0 += $row['amount'];
						$sum_1 += $row['discount'];
						$sum_2 += ($row['amount'] - $row['remained'] - $row['discount']);
						$sum_3 += $row['remained'];
					}
					
					?>
                      <tr>
                        <td colspan="8" align="center" style="background-color:#999;">
                        جمع کل اصل : <?PHP echo number_format($sum_0) ?> تومان
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        جمع کل تخفیف : <?PHP echo number_format($sum_1) ?> تومان
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        جمع کل پرداختی : <?PHP echo number_format($sum_2) ?> تومان
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        جمع کل مانده : <?PHP echo number_format($sum_3) ?> تومان
                        </td>
                      </tr>
                    </table>
                    
					<?PHP
				break;
				
				
				
				
				
				case 'report_ticket' :
					$admin->LOG('گزارش بلیط ها' , 'دریافت گزارش');
					?>
					<center><b>گزارش بلیط ها</b><br />
					<?PHP
					switch ($_POST['showtime_id'])
					{
						case '-' :
							echo 'همه سانس ها';
						break;
						
						case 0 :
							echo 'عادی روزانه';
						break;
						
						case 1 :
							echo 'عادی ادارات';
						break;
						
						case 2 :
							echo 'ویژه روزانه';
						break;
						
						case 3 :
							echo 'ویژه ادارات';
						break;
						
						case $_POST['showtime_id'] > 9 :
							echo $admin->result($admin->sql("select name from showtime where id = '$_POST[showtime_id]'") , 0);
						break;
						
					}
					
					?></center><br />
                    
                    <table border="1" width="100%" style="text-align:center">
                      <tr style="background-color:#000; color:#FFF;">
                        <td>کد بلیط</td>
                        <td>سانس</td>
                        <td>نوع بلیط</td>
                        <td>مصرف شده</td>
                        <td>قیمت</td>
                        <td>شروع اعتبار</td>
                        <td>پایان اعتبار</td>
                        <td>خریدار</td>
                        <td>آخرین تغییر</td>
                        <td>وضعیت</td>
                        <td>توضیحات</td>
                      </tr>
                    
					<?PHP
					$sum_0 = 0;
					$sum_1 = 0;
					$sum_2 = 0;
					$sum_3 = 0;
					
					$sum_4 = 0;
					$sum_5 = 0;
					$sum_6 = 0;
					$sum_7 = 0;
					
					$now = substr($admin->true_time() , 0 , 10);
					
					if ($_POST['status'] == 'all')
					{
						$where = '';
					}
					elseif ($_POST['status'] == 'expired')
					{
						$where = " and (time_finish <= '".$now."')";
					}
					else
					{
						$where = " and (status = '$_POST[status]')";
					}
					
					
					if ($_POST['person'] != 'all')
					{
						$person = " and (name = '".$_POST['person']."')";
					}
					
					if (isset($_POST['sort']))
					{
						if ($_POST['sort'] != 'none')
						{
							switch ($_POST['sort'])
							{
								case 'asc' :
									$sort = ' order by code asc ';
								break;
								
								case 'desc' :
									$sort = ' order by code desc ';
								break;
								
								default :
									$sort = '';
								break;
							}
						}
						else
						{
							$sort = '';
						}
					}
					else
					{
						$sort = '';
					}
					
					switch ($_POST['showtime_id'])
					{
						case $_POST['showtime_id'] >= 0 and $_POST['showtime_id'] != '-' :
							$showt = "showtime_id = '".$_POST['showtime_id']."' and ";
						break;
						
						default :
						case '-' :
							$showt = '';
						break;
					}
					
					$sql = $admin->sql("select * from ticket where ($showt (usetime >= '$start' and usetime <= '$end') ".$where." ".$person." $SOME_OTHER_WHERE) $sort");
					
					
					while ($row = $admin->row($sql))
					{
						
						echo '
                      <tr>
                        <td>'.$row['code'].'</td>
                        <td>';
						
						switch ($row['showtime_id'])
						{
							case 0 :
								echo 'عادی روزانه';
							break;
							
							case 1 :
								echo 'عادی ادارات';
							break;
							
							case 2 :
								echo 'ویژه روزانه';
							break;
							
							case 3 :
								echo 'ویژه ادارات';
							break;
							
							case $_POST['showtime_id'] > 9 :
								echo $admin->result($admin->sql("select name from showtime where id = '$row[showtime_id]'") , 0);
							break;
							
						}
						
						echo '</td>
						<td>';
						switch ($row['type'])
						{
							case '1' :
								echo 'معمولی تک جلسه ای';
							break;
							
							case '6' :
								echo 'کارت 6 جلسه ای';
							break;
							
							case '12' :
								echo 'کارت 12 جلسه ای';
							break;
						}
						
						echo '</td>
						<td>'.$row['sessions'].'</td>
                        <td>'.@number_format($row['amount']).'</td>
                        <td>'.$row['time_start'].'</td>
                        <td>'.$row['time_finish'].'</td>
                        <td>'.$admin->result($admin->sql("select name from person where id = '$row[name]' ") , 0).'</td>
                        <td dir=ltr>'.$row['usetime'].'</td>
                        <td>'.$row['status'].'</td>
                        <td>'.$row['description'].'</td>
                      </tr>
						';
						
						
						$sum_0 ++;
						$sum_4 += $row['amount'];
						
						switch ($row['status'])
						{
							case 'ابطال' :
								$sum_1++;
								$sum_5 += $row['amount'];
							break;
							
							case 'مرجوع' :
								$sum_2++;
								$sum_6 += $row['amount'];
							break;
							
							case 'فعال' :
								$sum_3++;
								$sum_7 += $row['amount'];
							break;
							
						}
					}
					
					?>
                      <tr>
                        <td colspan="11" align="center" style="background-color:#999;">
                        جمع کل رکورد ها : <?PHP echo number_format($sum_0) ?> (<?PHP echo number_format($sum_4) ?> تومان)
                        &nbsp;&nbsp;&nbsp;
                        جمع کل ابطالی : <?PHP echo number_format($sum_1) ?> (<?PHP echo number_format($sum_5) ?> تومان)
                        &nbsp;&nbsp;&nbsp;
                        جمع کل مرجوعی : <?PHP echo number_format($sum_2) ?> (<?PHP echo number_format($sum_6) ?> تومان)
                        &nbsp;&nbsp;&nbsp;
                        جمع کل فعال : <?PHP echo number_format($sum_3) ?> (<?PHP echo number_format($sum_7) ?> تومان)
                        </td>
                      </tr>
                    </table>
                    
					<?PHP
				break;
				
				
				
				
				
				
				case 'report_contract' :
					$admin->LOG('گزارش قراردادها' , 'دریافت گزارش');
					?>
					<center><b>گزارش قراردادها</b><br />از تاریخ <span dir="ltr"><?PHP echo substr($start , 0 , 10); ?></span> تا  <span dir="ltr"><?PHP echo substr($end , 0 , 10); ?></span></center><br />
                    
                    <table border="1" width="100%" style="text-align:center">
                      <tr style="background-color:#000; color:#FFF;">
                        <td>نوع قرارداد</td>
                        <td>شماره قرارداد</td>
                        <td>تاریخ شروع</td>
                        <td>تاریخ پایان</td>
                        <td>طرف حساب</td>
                        <td>شماره تماس</td>
                        <td>مبلغ قرارداد</td>
                        <td>تخفیف</td>
                        <td>مانده</td>
                        <td>روش پرداخت</td>
                        <td>توضیحات</td>
                      </tr>
                    
					<?PHP
					$sum_0 = 0;
					$sum_1 = 0;
					$sum_2 = 0;
					
					$now = substr($admin->true_time() , 0 , 10);
					
					switch ($_POST['report_by'])
					{
						case 'type' :
							$sql = $admin->sql("select * from contract where ((date_start >= '$start' and date_finish <= '$end') and type = '$_POST[type]' $SOME_OTHER_WHERE)");
						break;
						
						case 'person' :
							$sql = $admin->sql("select * from contract where ((date_start >= '$start' and date_finish <= '$end') and person_id = '$_POST[person_id]' $SOME_OTHER_WHERE)");
						break;
					}
					
					
					
					while ($row = $admin->row($sql))
					{
						
						echo '
                      <tr>
                        <td>'.$row['type'].'</td>
                        <td>'.$row['contract_number'].'</td>
						<td>'.$row['date_start'].'</td>
						<td>'.$row['date_finish'].'</td>
                        <td>'.$admin->result($admin->sql("select name from person where id = '$row[person_id]'") , 0).'</td>
                        <td>'.$row['tel'].'</td>
                        <td>'.number_format($row['amount']).'</td>
                        <td>'.$row['discount'].' درصد</td>
                        <td>'.number_format($row['remained']).' تومان</td>
						<td>'.$row['paying_type'].'</td>
						<td>'.$row['description'].'</td>
                      </tr>
						';
						
						
						$sum_0 ++;
						$sum_1 += $row['amount'];
						$sum_2 += $row['remained'];
					}
					
					?>
                      <tr>
                        <td colspan="11" align="center" style="background-color:#999;">
                        جمع کل رکورد ها : <?PHP echo number_format($sum_0) ?>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        جمع کل مبلغ قراردادها : <?PHP echo number_format($sum_1) ?>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        جمع کل مانده حساب : <?PHP echo number_format($sum_2) ?>
                        </td>
                      </tr>
                    </table>
                    
					<?PHP
				break;
				
				
				
				
				
				
				case 'report_account' :
					$admin->LOG('گزارش حسابهای بانکی' , 'دریافت گزارش');
					?>
					<center><b>گزارش حسابهای بانکی</b><br />از تاریخ <span dir="ltr"><?PHP echo substr($start , 0 , 10); ?></span> تا  <span dir="ltr"><?PHP echo substr($end , 0 , 10); ?></span><br />حساب بانکی : <?PHP echo $admin->result($admin->sql("select name from account where id = '$_POST[account_id]'") , 0) ?></center><br />
                    
                    <table border="1" width="100%" style="text-align:center">
                      <tr style="background-color:#000; color:#FFF;">
                        <td>توع تراکنش</td>
                        <td>مبلغ</td>
                        <td>زمان انجام</td>
                        <td>توضیحات</td>
                      </tr>
                    
					<?PHP
					$sum_0 = 0;
					$sum_1 = 0;
					$sum_2 = 0;
					
					$now = substr($admin->true_time() , 0 , 10);
					
					$sql = $admin->sql("select * from tracks where ((time >= '$start' and time <= '$end') and account_id = '$_POST[account_id]' $SOME_OTHER_WHERE)");
					
					
					while ($row = $admin->row($sql))
					{
						echo '
                      <tr>
					    <td>';
						switch ($row['type'])
						{
							case '+' : echo 'واریز'; $sum_1 += $row['amount']; break;
							case '-' : echo 'برداشت'; $sum_2 += $row['amount']; break;
						}
						echo '</td>
                        <td>'.number_format($row['amount']).' تومان</td>
                        <td>'.$row['time'].'</td>
                        <td>'.$row['description'].'</td>
                      </tr>
						';
						
						
						$sum_0 ++;
					}
					
					?>
                      <tr>
                        <td colspan="4" align="center" style="background-color:#999;">
                        جمع کل رکورد ها : <?PHP echo number_format($sum_0) ?>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        جمع کل واریز : <?PHP echo number_format($sum_1) ?>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        جمع کل برداشت : <?PHP echo number_format($sum_2) ?>
                        </td>
                      </tr>
                    </table>
                    
					<?PHP
				break;
				
				
				
				
				
				
				
				case 'report_settle' :
					$admin->LOG('گزارش واریز وجه' , 'دریافت گزارش');
					?>
					<center><b>گزارش واریز وجه</b><br /><?PHP if ($_POST['user_id'] == ''){ echo 'کل کاربران'; } else {echo $admin->result($admin->sql("select name from users where id = '$_POST[user_id]'") , 0);} ?></center><br />
                    
                    <table border="1" width="100%" style="text-align:center">
                    
					<?PHP
					$sum = 0;
					?>
                      <tr style="background-color:#000; color:#FFF;">
                        <?PHP if ($_POST['user_id'] != '') echo '<td>کاربر</td>'; ?>
                        <td>مبلغ</td>
                        <td>ساعت</td>
                        <td>تاریخ</td>
                        <td>توضیحات</td>
                      </tr>
						<?PHP
						if (isset($_POST['user_id']) and $_POST['user_id'] == '')
						{
							$uid = " and suid = '$_POST[user_id]' ";
						}
						else
						{
							$uid = '';
						}
						
						
						$sql = $admin->sql("select * from tracks where ((description like 'واریز وجه به صورت دستی%') and time >= '$start' and time <= '$end' $uid $SOME_OTHER_WHERE)");
						while ($row = $admin->row($sql))
						{
							list($date , $time) = explode(" " , $row['time']);
							
							echo '
						  <tr>';
						  	if ($_POST['user_id'] != '') echo '<td>'.$admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0).'</td>';
							echo '
							<td>'.@number_format($row['amount']).' تومان</td>
							<td>'.$time.'</td>
							<td>'.$date.'</td>
							<td>'.$row['description'].'</td>
						  </tr>
							';
							
							$sum += $row['amount'];
						}
					?>
                    
                      <tr>
                        <td colspan="6" align="center" style="background-color:#999;">جمع کل : <?PHP echo number_format($sum) ?> تومان</td>
                      </tr>
                    </table>
                    
					<?PHP
				break;
				
				
				
				
				
				
				
				case 'report_paystubs' :
					$admin->LOG('گزارش فیش حقوقی' , 'دریافت گزارش');
					
					//<center><b>گزارش فیش حقوقی</b><br /><?PHP if ($_POST['personel_id'] == ''){ echo 'کل پرسنل'; } else {echo $admin->result($admin->sql("select name from personel where id = '$_POST[personel_id]'") , 0);} </center><br />
                    
                    
					require_once("inc/date.php");
					
					if (isset($_POST['personel_id']) and $_POST['personel_id'] == '')
					{
						// means all personel
						$sql = $admin->sql("select * from personel order by id asc");
					}
					else
					{
						$sql = $admin->sql("select * from personel where id = '$_POST[personel_id]'");
					}
					
					
					$start = $_POST['year'].'-'.$_POST['month'].'-01 00:00:00';
					$end = $_POST['year'].'-'.$_POST['month'].'-31 23:59:59';
					
					while ($row = $admin->row($sql))
					{
						
						
						
						
						
					
					
						$amount_per_hour = $admin->result($admin->sql("select amount_per_hour from personel where id = '$row[id]'") , 0);
						$amount_per_min = $amount_per_hour / 60;
						
						$s = 0;
						$e = 0;
						$sqlx = $admin->sql("select * from personel_time where (personel_id = '$row[id]' and (time >= '$start' and time <= '$end') $SOME_OTHER_WHERE) order by time asc");
						while ($rowx = $admin->row($sqlx))
						{
							list($date , $time) = explode(" " , $rowx['time']);
							if ($rowx['act'] == 'خروج')
							{
								
								unset($date , $time , $year , $month , $day , $hour , $min , $sec , $t_1 , $t_2);
								list($date , $time) = explode(" " , $vorood['time']);
								list($year , $month , $day) = explode("-" , $date);
								list($hour , $min , $sec) = explode(":" , $time);
								
								$month += 0;
								$day += 0;
								$hour += 0;
								$min += 0;
								$sec += 0;
								
								$t_1 = jmaketime($hour , $min , $sec , $month , $day , $year);
								
								
								
								unset($date , $time , $year , $month , $day , $hour , $min , $sec);
								list($date , $time) = explode(" " , $rowx['time']);
								list($year , $month , $day) = explode("-" , $date);
								list($hour , $min , $sec) = explode(":" , $time);
								
								$month += 0;
								$day += 0;
								$hour += 0;
								$min += 0;
								$sec += 0;
								
								$t_2 = jmaketime($hour , $min , $sec , $month , $day , $year);
								$e += $t_2 - $t_1;
								$data = $admin->second_to_hour($t_2 - $t_1);
								
								$mozd = round($data[4] * $amount_per_min);
								$s += $mozd;
								
								$vorood = NULL;
							}
							else
							{
								$vorood = $rowx;
							}
						}
					
						
						$sum = $s;
						
						echo '<div style="border:3px solid #000; padding:15px; margin-bottom:40px; width:700px;">
							<table cellpadding="5" border=0 width="100%">
							  <tr>
								<td>
									<div style="text-align:center; font-weight:bold; font-size:15pt; margin-bottom:10px;">شرکت تعاونی چند منظوره ورزشی گلستان</div>
									
									<table cellpadding="0" width="100%" border=0 style="border-bottom:2px solid #000;">
									  <tr>
										<td>نام و نام خانوادگی : </td>
										<td style="font-weight:bold">'.$row['name'].'</td>
										<td>کد ملی : </td>
										<td style="font-weight:bold">'.$row['ntcode'].'</td>
										<td>دوره فیش : </td>
										<td style="font-weight:bold" dir=ltr>'.$_POST['year'].'-'.$m[$_POST['month']].'</td>
									  </tr>
									  <tr>
										<td>شماره بیمه : </td>
										<td style="font-weight:bold">'.$row['insurance'].'</td>
										<td>کد پرسنل : </td>
										<td style="font-weight:bold">'.$row['id'].'</td>
										<td>شماره شناسنامه : </td>
										<td style="font-weight:bold">'.$row['shsh'].'</td>
									  </tr>
									  </tr>
									  <tr>
										<td>نام پدر : </td>
										<td style="font-weight:bold">'.$row['fathername'].'</td>
										<td>تاریخ تولد : </td>
										<td style="font-weight:bold" dir="ltr">'.$row['birthdate'].'</td>
										<td>محل خدمت : </td>
										<td style="font-weight:bold">'.$row['workplace'].'</td>
									  </tr>
									  </tr>
									  <tr>
										<td>کد کارگاه : </td>
										<td style="font-weight:bold">'.$row['workplace_code'].'</td>
										<td>شماره تماس : </td>
										<td style="font-weight:bold">'.$row['tel'].'</td>
										<td>نوع همکاری : </td>
										<td style="font-weight:bold">'.str_replace(',' , ' , ' , $row['type']).'</td>
									  </tr>
									  <tr>
										<td>آدرس پستی : </td>
										<td colspan="5" style="font-weight:bold">'.$row['address'].'</td>
									  </tr>
									</table>
								</td>
							  </tr>
							  <tr>
								<td>
									<table cellpadding="0" width="100%" border=1 style="border-bottom:2px solid #000; text-align:center">
									  <tr bgcolor="#000000" style="color:white;">
										<td>1</td>
										<td>کل ساعت کارکرد</td>
										<td colspan="2">'; $d = $admin->second_to_hour($e); echo $d[1].'</td>
										<td>2</td>
										<td>مبلغ اصل دستمزد</td>
										<td colspan="2">'.number_format($s).' تومان</td>
									  </tr>
									  <tr>
									  ';
									  $tr_counter = 1;
									  $i = 3;
									  $s = $admin->sql("select * from deduction_group order by id desc");
									  while ($r = $admin->row($s))
									  {
											echo '
											  
												<td>'.$i.'</td>
												<td>'.$r['name'].'</td>
												<td>';
												$ded = $admin->row($admin->sql("select * from deduction where (personel_id = '$row[id]' and deduction_group_id = '$r[id]' and year = '$_POST[year]' and month = '$_POST[month]')"));
												$ix = $ded['amount'];
												echo number_format($ix) . ' تومان';
												
												if ($ded['type'] == '+')
													$sum = $sum + $ix;
												else
													$sum = $sum - $ix;
													
												echo '</td>
												<td>';
												if ($ded['type'] == '+')
													echo 'اضافه';
												else
													echo 'کسر';
												echo '</td>
											  
											';
											
											if ($tr_counter == 2)
											{
												$tr_counter = 1;
												echo '</tr><tr>';
											}
											else
											{
												$tr_counter++;
											}
											
											$i++;
									  }
									  echo '
									  </tr>
									  <tr style="background:black; color:white">
										<td colspan="8" align="center">جمع قابل پرداخت : <span dir=ltr>'.number_format($sum).'</span> تومان</td>
									  </tr>
									</table>
								</td>
							  </tr>
							</table>
						</div><div style="page-break-after:always;"></div><div style="height:40px;"></div>';
					}
					
				break;
				
				
				
				
				
				case 'xperson_manage' :
					$admin->LOG('گزارش طرف حساب' , 'دریافت گزارش');
					$person_id = (int) $_GET['person_id'];
					?>
					<center><b>گزارش طرف حساب</b><br /><?PHP echo $admin->result($admin->sql("select name from person where id = '$person_id'") , 0) ?></center><br />
                    
                    <table border="1" width="100%" style="text-align:center">
                      <tr style="background-color:#000; color:#FFF;">
                        <td colspan="3" align="center">گزارش صورت حساب بابت بلیط</td>
                      </tr>
                      <tr>
                        <td align="center" style="background-color:#999;" width="200">کل</td>
                        <td><?=@$admin->result($admin->sql("select count(*) from ticket where name = '$person_id'") , 0)?></td>
                        <td><?=number_format(@$admin->result($admin->sql("select sum(amount) from ticket where name = '$person_id'") , 0))?> تومان</td>
                      </tr>
                      <tr>
                        <td align="center" style="background-color:#999;" width="200">فعال</td>
                        <td><?=@$admin->result($admin->sql("select count(*) from ticket where (name = '$person_id' and status = 'فعال')") , 0)?></td>
                        <td><?=number_format(@$admin->result($admin->sql("select sum(amount) from ticket where (name = '$person_id' and status = 'فعال')") , 0))?> تومان</td>
                      </tr>
                      <tr>
                        <td align="center" style="background-color:#999;" width="200">ابطالی</td>
                        <td><?=@$admin->result($admin->sql("select count(*) from ticket where (name = '$person_id' and status = 'ابطال')") , 0)?></td>
                        <td><?=number_format(@$admin->result($admin->sql("select sum(amount) from ticket where (name = '$person_id' and status = 'ابطال')") , 0))?> تومان</td>
                      </tr>
                      <tr>
                        <td align="center" style="background-color:#999;" width="200">مرجوعی</td>
                        <td><?=@$admin->result($admin->sql("select count(*) from ticket where (name = '$person_id' and status = 'مرجوع')") , 0)?></td>
                        <td><?=number_format(@$admin->result($admin->sql("select sum(amount) from ticket where (name = '$person_id' and status = 'مرجوع')") , 0))?> تومان</td>
                      </tr>
                      <tr>
                        <td align="center" style="background-color:#999;" width="200">منقضی</td>
                        <td><?=@$admin->result($admin->sql("select count(*) from ticket where (name = '$person_id' and time_finish < '$date')") , 0)?></td>
                        <td><?=number_format(@$admin->result($admin->sql("select sum(amount) from ticket where (name = '$person_id' and time_finish < '$date')") , 0))?> تومان</td>
                      </tr>
                    </table>
                    
                    <br /><br />
                    
                    <table border="1" width="100%" style="text-align:center">
                      <tr style="background-color:#000; color:#FFF;">
                        <td colspan="10">گزارش صورت حساب بابت قرارداد</td>
                      </tr>
                      <tr style="background-color:#999;">
                        <td>ردیف</td>
                        <td>نوع قرارداد</td>
                        <td>شماره قرارداد</td>
                        <td>سریال بلیط</td>
                        <td>تعداد بلیط</td>
                        <td>مبلغ کل قرارداد</td>
                        <td>تخفیف</td>
                        <td>مبلغ قابل پرداخت</td>
                        <td>پرداخت شده</td>
                        <td>مانده حساب</td>
                      </tr>
                      <?PHP
					  $c = 1;
					  $sum_1 = 0;
					  $sum_2 = 0;
					  $sum_3 = 0;
					  $s = $admin->sql("select * from contract where (person_id = '$person_id' $SOME_OTHER_WHERE) order by id desc");
					  while ($row = $admin->row($s))
					  {
						  $discount_amount = ($row['amount'] / 100) * $row['discount'];
						  $payed = (int) @$admin->result($admin->sql("select sum(amount) from contract_payment where contract_id = '$row[id]'") , 0);
							echo '
							  <tr>
								<td>'.$c.'</td>
								<td>'.$row['type'].'</td>
								<td>'.$row['contract_number'].'</td>
								<td>از '.$row['f2'].' تا '.$row['f3'].'</td>
								<td>'.$row['f1'].'</td>
								<td>'.@number_format($row['amount']).' تومان</td>
								<td>'.$row['discount'].' درصد</td>
								<td>'.@number_format($row['amount'] - $discount_amount).' تومان</td>
								<td>'.@number_format($payed).' تومان</td>
								<td>'.@number_format(($row['amount'] - $discount_amount) - $payed).' تومان</td>
							  </tr>
							';
							
							$sum_1 += ($row['amount'] - $discount_amount);
							$sum_2 += $payed;
							$sum_3 += (($row['amount'] - $discount_amount) - $payed);
							
							$c++;
					  }
					  ?>
                      <tr style="background-color:#999;">
                        <td colspan="10">
                        مبلغ قابل پرداخت بابت قراردادها : <?=number_format($sum_1)?> تومان
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        مبلغ پرداخت شده : <?=number_format($sum_2)?> تومان
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        مانده حساب : <?=number_format($sum_3)?> تومان
                        
                        </td>
                      </tr>
                    </table>
                    
					<?PHP
				break;
				
				
				
				
				
				
				
				case 'ticket' :
					$admin->LOG('چاپ بلیط' , 'چاپ بلیط تکی');
					
					$date = jgmdate('Y-m-d H:i:s');
					
					if (isset($_POST['showtime_id']))
					{
						$sql = $admin->sql("select * from ticket where (name = '$_POST[name]' and showtime_id = '$_POST[showtime_id]' and type = '$_POST[type]' and printed = '0') order by id asc limit ".$_POST['limit']."");
						
					}
					else
					{
						$sql = $admin->sql("select * from ticket where (id = '$_GET[id]')");
						$_POST['limit'] = 1;
					}
					
					
					if (mysqli_num_rows($sql) != $_POST['limit'])
					{
						echo '<div style="color:red">بلیط به تعداد خواسته شده موجود نیست</div>';
					}
					else
					{
						while ($row = $admin->row($sql))
						{
							$admin->sql("update ticket set printed = '1' , print_time = '$date' where id = '$row[id]'");
							
							if ($_REQUEST['paper'] == 'a4')
							{
							echo '
							<table border="0" width="100%" style="text-align:center">
							<tr>
							<td colspan="3">
										<table width="400px" border="0">
											<tbody>
												<tr>
													<td width="130" align="right"><img src="images/logo.png"></td>
													<td align="right"><span style="font-size:22pt;">'.$admin->result($admin->sql("select name from admin") , 0).'</span></td>
												</tr>
											</tbody>
										</table>
							</td>
							<td colspan="2" align="left"><img src="barcode/test_1D.php?text='.$row['code'].'" alt="barcode"></td>
							</tr>
							  <tr style="background-color:#000; color:#FFF;">
								<td>کد بلیط</td>
								<td>سانس</td>
								<td>نوع بلیط</td>
								<td>مصرف شده</td>
								<td>قیمت</td>
							  </tr>
							  <tr>
								<td>'.$row['code'].'</td>
								<td>';
								
							switch ($row['showtime_id'])
							{
								case 0 :
									echo 'عادی روزانه';
								break;
								
								case 1 :
									echo 'عادی ادارات';
								break;
								
								case 2 :
									echo 'ویژه روزانه';
								break;
								
								case 3 :
									echo 'ویژه ادارات';
								break;
								
								case $_POST['showtime_id'] > 9 :
									echo $admin->result($admin->sql("select name from showtime where id = '$row[showtime_id]'") , 0);
								break;
								
							}
							
							echo '</td>
							<td>';
							switch ($row['type'])
							{
								case '1' :
									echo 'معمولی تک جلسه ای';
								break;
								
								case '6' :
									echo 'کارت 6 جلسه ای';
								break;
								
								case '12' :
									echo 'کارت 12 جلسه ای';
								break;
							}
							
							echo '</td>
							<td>'.$row['sessions'].'</td>
							<td>'.@number_format($row['amount']).' تومان</td>
						  </tr>
							
						<tr style="background-color:#000; color:#FFF;">
							<td>شروع اعتبار</td>
							<td>پایان اعتبار</td>
							<td>خریدار</td>
							<td>آخرین تغییر</td>
							<td>وضعیت</td>
						</tr>
						<tr>
							<td>'.$row['time_start'].'</td>
							<td>'.$row['time_finish'].'</td>
							<td>'.$admin->result($admin->sql("select name from person where id = '$row[name]' ") , 0).'</td>
							<td dir=ltr>'.$row['usetime'].'</td>
							<td>'.$row['status'].'</td>
							</tr>
						
							</table>
							<hr>
						';
							}
							else
							{
								switch ($_REQUEST['paper'])
								{
									case 'fish' :
										echo '<div style="width:7cm; margin:20px auto; page-break-after: always;">';
									break;
									
									case 'a4mini' :
										echo '<div style="width:6.10cm; margin:0 0.25cm 0.5cm 0.25cm; float:right;">';
									break;
								}
								
									echo '
									
									<div style="text-align:center;">
										<table width="100%" border="0">
											<tbody>
												<tr>
													<td width="100"><img src="images/logo.png"></td>
													<td><span style="font-size:22pt;">'.$admin->result($admin->sql("select name from admin") , 0).'</span></td>
												</tr>
											</tbody>
										</table>

									</div>
									<table border="0" width="100%" style="text-align:center">
									  <tr style="background-color:#000; color:#FFF;">
										<td>سانس</td>
										<td>قیمت</td>
									  </tr>
									  <tr>
										<td>';
										switch ($row['showtime_id'])
										{
											case 0 :
												echo 'عادی روزانه';
											break;
											
											case 1 :
												echo 'عادی ادارات';
											break;
											
											case 2 :
												echo 'ویژه روزانه';
											break;
											
											case 3 :
												echo 'ویژه ادارات';
											break;
											
											case $_POST['showtime_id'] > 9 :
												echo $admin->result($admin->sql("select name from showtime where id = '$row[showtime_id]'") , 0);
											break;
										}
										echo '</td>
										<td>'.@number_format($row['amount']).' تومان</td>
									  </tr>
									  <tr style="background-color:#000; color:#FFF;">
										<td>نوع بلیط</td>
										<td>مصرف شده</td>
									  </tr>
									  <tr>
										<td>';
										switch ($row['type'])
										{
											case '1' :
												echo 'معمولی تک جلسه ای';
											break;
											
											case '6' :
												echo 'کارت 6 جلسه ای';
											break;
											
											case '12' :
												echo 'کارت 12 جلسه ای';
											break;
										}
										
										echo '</td>
										<td>'.$row['sessions'].'</td>
									  </tr>
									  <tr style="background-color:#000; color:#FFF;">
										<td>شروع اعتبار</td>
										<td>پایان اعتبار</td>
									  </tr>
									  <tr>
										<td>'.$row['time_start'].'</td>
										<td>'.$row['time_finish'].'</td>
									  </tr>
									</table>
									<div style="text-align:center; margin-top:0px;">
									<img src="barcode/test_1D.php?text='.$row['code'].'" alt="barcode">
									</div>
									</div>
								';
							}
						}
					}
				break;
				
				
				
				
			}
			?>
    	</div>
    </div>
	<script>
	//window.print();
	</script>
</body>
</html>