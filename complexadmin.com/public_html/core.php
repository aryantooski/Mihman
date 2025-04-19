<?PHP
session_start();

define("SECURITY_CHECK" , "MOHAMMAD_REZA_POURSOLTAN");

require_once("inc/_public-class.php");
$admin = new _public();

$admin->loadsetting();

require_once("_config.php");
$url = "http://"._URL.'/';

$connection_string = '';
$do = '';
$connection_string = $admin->connection_mysql();
if ($connection_string == 'true')
{
	if (isset($_GET['do']))
	{
		if (!empty($_GET['do']))
		{
			$do = $admin->superinj($_GET['do']);
		}
		else
		{
			$do = 'dashboard';
		}
	}
	else
	{
		$do = 'dashboard';
	}
	
	if (isset($do))
	{
		if ($do == 'login')
		{
			require_once("modules/".$do.".php");
		}
		else
		{
			if ($admin->login_check() == 'FULL_ACCESS' or $admin->login_check() == 'LESS_ACCESS')
			{
				if (isset($_GET['act']))
				{
					switch ($_GET['act'])
					{
						case 'add_part_items' :


							if (isset($_POST['ticket_id']) and isset($_POST['guest_id']) and intval($_POST['ticket_id']) > 0  and intval($_POST['guest_id']) > 0 )
							{
								$ticket = $admin->sql("select * from ticket where (id = '$_POST[ticket_id]' ) limit 1 ");
								$ticket = $admin->row($ticket);

								$guest = $admin->sql("select * from guest where (id = '$_POST[guest_id]' ) limit 1 ");
								$guest = $admin->row($guest);

								$type = $guest['sex'] == 'مرد' ? 'mens' : 'womens';

								echo '<select class="input-s" name="part_id">';
								$part_sql = $admin->sql("select * from part where (".$type."_check = 'on') order by id desc");
								while ($part = $admin->row($part_sql))
								{
									if (($part['only_admin'] == 'on' and SUID == 0) or $part['only_admin'] != 'on')
									{
										echo '<option value="'.$part['id'].'" data-incomeip="'.$part['income_ip'].'" data-outputip="'.$part['output_ip'].'" data-mensamount="'.number_format($part['mens_amount']).'" data-womensamount="'.number_format($part['womens_amount']).'" data-lock="'.$admin->sql("select item_lock from showtime_part where (showtime_id = '".intval($_GET['showtime_id'])."' and part_id = '$part[id]' )  limit 1")->fetch_object()->item_lock.'" data-default="'.$admin->sql("select item_default from showtime_part where (showtime_id = '".intval($_GET['showtime_id'])."' and part_id = '$part[id]' ) ")->fetch_object()->item_default.'" >'.$part['name'].'</option>';
									}
								}
								echo '</select>';
							}
							else
							{
								echo '<span style="color:red">خطا در دریافت اصلاعات</span>';
							}

						break;

						case 'add_part' :

							if (isset($_POST['ticket_id']) and isset($_POST['guest_id']) and isset($_POST['part_id']) and intval($_POST['ticket_id']) > 0  and intval($_POST['guest_id']) > 0  and intval($_POST['part_id']) > 0 )
							{
								$guest = $admin->sql("select * from guest where (id = '$_POST[guest_id]' ) limit 1 ");
								$guest = $admin->row($guest);


								$part = $admin->sql("select * from part where (id = '$_POST[part_id]' ) limit 1 ");
								$part = $admin->row($part);



								$type = $guest['sex'] == 'مرد' ? 'mens' : 'womens';

								if ($admin->sql("insert into ticket_part set ticket_id = '".intval($_POST['ticket_id'])."' , guest_id = '".intval($_POST['guest_id'])."' , part_id = '".intval($_POST['part_id'])."' , type = '$type' , part_table = 'part' "))
								{
									echo 'ok';

									$admin->update_ticket_prices(intval($_POST['ticket_id']));

								}
								else
								{
									echo 'این بخش قبلا به این شخص در این بلیط اضافه شده است';
								}
							}
							else
							{
								echo 'مقادیر مورد نیاز به صورت صحیح ارسال نشده اند';
							}

						break;

						case 'class_date_finish' :

							echo $admin->class_date_finish();
							
						break;

						case 'ticket_reload' :

							if (isset($_POST['ticket_id']) and $_POST['ticket_id'] > 0)
							{
								$ticket_id = intval($_POST['ticket_id']);
								
								$sql = $admin->sql("select * from ticket where (id = '$ticket_id')");

								if ($admin->cnt($sql) == 1)
								{
									$row = $admin->row($sql);
									echo $admin->show_ticket($row , true);
								}
								else
								{
									echo 'error';
								}
							}
							else
							{
								echo 'error';
							}
							
						break;

						case 'add_tag' :

							$check = $admin->sql("select * from tags_guest_ticket where (ticket_id = '".intval($_POST['ticket_id'])."' and guest_id = '".intval($_POST['guest_id'])."')");
							if ($admin->cnt($check) == 0)
							{
								$check_serial = $admin->sql("select * from tags where (serial = '".$_POST['tag_serial']."') ");

								if ($admin->cnt($check_serial) == 1)
								{
									$tag = $admin->row($check_serial);

									if ($tag['status'] == 'free')
									{
										if ($tag['category_id'] == $admin->result($admin->sql("select tag_category_id from ticket where (id = '".intval($_POST['ticket_id'])."') limit 1")))
										{
											if ($admin->sql("select make_time_stamp from ticket where (id = '".intval($_POST['ticket_id'])."')")->fetch_object()->make_time_stamp == 0)
											{
												$admin->sql("update ticket set make_time_stamp = '".time()."' , tag_id = '".$tag['id']."' where (id = '".intval($_POST['ticket_id'])."') limit 1 ");
											}
											
											$admin->sql("update tags set status = 'active' where (id = '".$tag['id']."') limit 1 ");
											$admin->sql("insert into tags_guest_ticket set suid = '".SUID."' , ticket_id = '".intval($_POST['ticket_id'])."' , guest_id = '".intval($_POST['guest_id'])."' , tag_id = '".$tag['id']."' , tag_category_id = '".$tag['category_id']."' , time = '".$admin->true_time()."'   ");

											$admin->sql("insert into tags_log set suid = '".SUID."' , datetime = '".$admin->time("Y-m-d H:i:s")."' , tag_id = '".$tag['id']."' , guest_id = '".intval($_POST['guest_id'])."' , ticket_id = '".intval($_POST['ticket_id'])."' , details = 'اتصال تگ به بلیط' ");

											echo 'ok';
										}
										else
										{
											echo 'رنگ تگ صحیح نیست';
										}
									}
									else
									{
										echo 'این سریال تگ آزاد نیست';
									}
								}
								else
								{
									echo 'شماره تگ صحیح نیست';
								}
							}
							else
							{
								echo 'این بلیط قبلا دارای تگ شده است';
							}

						break;

						case 'refund_tag' :

							if (isset($_POST['ticket_id']) and intval($_POST['ticket_id']) > 0)
							{
								$sql = $admin->sql("select * from tags_guest_ticket where (ticket_id = '".intval($_POST['ticket_id'])."')");

								while ($tags_guest_ticket = $admin->row($sql))
								{
									$admin->sql("delete from tags_guest_ticket where (ticket_id = '".$tags_guest_ticket['ticket_id']."' and guest_id = '".$tags_guest_ticket['guest_id']."') limit 1 ");

									$admin->sql("update tags set status = 'free' where (id = '".$tags_guest_ticket['tag_id']."') limit 1");

									$admin->sql("insert into tags_log set suid = '".SUID."' , datetime = '".$admin->time("Y-m-d H:i:s")."' , tag_id = '".$tags_guest_ticket['tag_id']."' , guest_id = '".$tags_guest_ticket['guest_id']."' , ticket_id = '".$tags_guest_ticket['ticket_id']."' , details = 'مرجوع تگ' ");

								}

								$admin->sql("update ticket set make_time_stamp = '-1' where (id = '".intval($_POST['ticket_id'])."') limit 1");

								echo 'ok';
							}
							else
							{
								echo 'خطا در داده';
							}
							

						break;


						case 'revoke_tag' :

							$check = $admin->sql("select * from tags_guest_ticket where (ticket_id = '".intval($_POST['ticket_id'])."' and guest_id = '".intval($_POST['guest_id'])."')");
							if ($admin->cnt($check) == 1)
							{
								$tags_guest_ticket = $admin->row($check);
								
								$admin->sql("delete from tags_guest_ticket where (ticket_id = '".intval($_POST['ticket_id'])."' and guest_id = '".intval($_POST['guest_id'])."') limit 1 ");

								$admin->sql("update tags set status = 'free' where (id = '$tags_guest_ticket[tag_id]') limit 1");

								$admin->sql("insert into tags_log set suid = '".SUID."' , datetime = '".$admin->time("Y-m-d H:i:s")."' , tag_id = '$tags_guest_ticket[tag_id]' , guest_id = '".intval($_POST['guest_id'])."' , ticket_id = '".intval($_POST['ticket_id'])."' , details = 'ابطال تگ' ");

								$admin->sql("update ticket set make_time_stamp = '-2' , tag_id = '0' where (id = '".intval($_POST['ticket_id'])."') limit 1");

								echo 'ok';
								
								
							}
							else
							{
								echo 'تگ یافت نشد';
							}

						break;


						case 'replace_tag' :

							$check = $admin->sql("select * from tags_guest_ticket where (ticket_id = '".intval($_POST['ticket_id'])."' and guest_id = '".intval($_POST['guest_id'])."')");
							if ($admin->cnt($check) == 1)
							{
								$tags_guest_ticket = $admin->row($check);
								$check_serial = $admin->sql("select * from tags where (serial = '".$_POST['tag_serial']."') ");

								if ($admin->cnt($check_serial) == 1)
								{
									$tag = $admin->row($check_serial);

									if ($tag['status'] == 'free')
									{
										$admin->sql("update tags set status = 'active' where (id = '".$tag['id']."') limit 1 ");
										$admin->sql("insert into tags_guest_ticket set suid = '".SUID."' , ticket_id = '".intval($_POST['ticket_id'])."' , guest_id = '".intval($_POST['guest_id'])."' , tag_id = '".$tag['id']."' , tag_category_id = '".$tag['category_id']."' , time = '".$admin->true_time()."'   ");


										$admin->sql("update tags set status = 'free' where (id = '".$tags_guest_ticket['tag_id']."') limit 1 ");
										$admin->sql("delete from tags_guest_ticket where (id = '".$tags_guest_ticket['id']."') limit 1 ");

										$admin->sql("insert into tags_log set suid = '".SUID."' , datetime = '".$admin->time("Y-m-d H:i:s")."' , tag_id = '".$tags_guest_ticket['tag_id']."' , guest_id = '".$tags_guest_ticket['guest_id']."' , ticket_id = '".$tags_guest_ticket['ticket_id']."' , details = 'جایگزین تگ' ");

										$admin->sql("insert into tags_log set suid = '".SUID."' , datetime = '".$admin->time("Y-m-d H:i:s")."' , tag_id = '".$tag['id']."' , guest_id = '".$tags_guest_ticket['guest_id']."' , ticket_id = '".$tags_guest_ticket['ticket_id']."' , details = 'اتصال تگ به بلیط' ");


										$admin->sql("update ticket set description = description + '<br>".$_POST['details']."' where id = '".$tags_guest_ticket['ticket_id']."' limit 1 ");
										
										$admin->sql("update tags set description = description + '<br>".$_POST['details']."' where id = '".$tag['id']."' limit 1 ");

										echo 'ok';
									}
									else
									{
										echo 'این سریال تگ آزاد نیست';
									}
								}
								else
								{
									echo 'شماره تگ صحیح نیست';
								}
							}
							else
							{
								echo 'این بلیط قبلا دارای تگ نشده است';
							}

						break;





						case 'validate_return' :
							$admin->LOG('بررسی مرجوعی ' , 'در حال بررسی');
							$now = substr($admin->true_time() , 0 , 10);
							
							$sql_ = $admin->sql("select * from ticket where (code = '$_POST[code]' and (time_start <= '$now' and time_finish >= '$now')) ");
							if (mysqli_num_rows($sql_) == 1)
							{
								
								$row = $admin->row($sql_);
								
								if ($row['status'] == 'ابطال')
								{
									echo 'این بلیط قبلا باطل شده است - مصرف شده';
								}
								elseif ($row['status'] == 'مرجوع')
								{
									echo 'بلیط قبلا مرجوع شده است';
								}
								elseif ($row['status'] == 'فعال')
								{
									echo 'قابل قبول - امکان ارجاع وجود دارد';
								}
								else
								{
									echo 'وضعیت بلیط نامشخص است';
								}
							}
							else
							{
								echo 'بلیط معتبر نیست و یا تاریخ مصرف آن گذشته است';
							}
						break;
						
						case 'validate_field' :
							if (isset($_POST['name']) and !empty($_POST['name']) and strlen($_POST['name']) > 2)
							{
								$field = 'name';
								$value = $_POST['name'];
								$text = 'نام و نام خانوادگی';
							}
							elseif (isset($_POST['mobile']) and !empty($_POST['mobile']) and strlen($_POST['mobile']) > 2)
							{
								$field = 'mobile';
								$value = $_POST['mobile'];
								$text = 'موبایل';
							}
							else
							{
								exit('');
							}

							if (isset($_GET['edit']))
							{
								$where = " and id != '".intval($_GET['edit'])."' ";
							}
							
							if ($admin->sql("select count(*) as cnt from guest where ($field = '$value' $where)")->fetch_object()->cnt)
							{
								exit('<span style="color:red;">'.$text.' قبلا ثبت شده است</span><input type="hidden" class="error_" value="'.$text.'">');
							}
							else
							{
								exit('<span style="color:green;">'.$text.' در دسترس میباشد</span>');
							}
						break;
						
						
						case 'validate_cancel' :
							$admin->LOG('بررسی ابطال ' , 'در حال بررسی');
							$now = substr($admin->true_time() , 0 , 10);
							
							$sql_ = $admin->sql("select * from ticket where (code = '$_POST[code]' and (time_start <= '$now' and time_finish >= '$now')) ");
							if (mysqli_num_rows($sql_) == 1)
							{
								$row = $admin->row($sql_);
								
								if ($row['status'] == 'ابطال')
								{
									echo 'این بلیط قبلا باطل شده است - مصرف شده';
								}
								elseif ($row['status'] == 'مرجوع')
								{
									echo 'بلیط قبلا مرجوع شده است';
								}
								elseif ($row['status'] == 'فعال')
								{
									if ($row['type'] == 1)
									{
										echo 'قابل قبول - امکان استفاده وجود دارد';
									}
									else
									{
										if ($row['sessions'] + $_POST['type_count'] <= $row['type'])
										{
											echo 'قابل قبول - امکان استفاده وجود دارد';
										}
										else
										{
											echo 'بلیط مورد نظر به تعداد وارد شده جلسه ندارد - جلسات باقیمانده : ' . ($row['type'] - $row['sessions']);
										}
									}
								}
								else
								{
									echo 'وضعیت بلیط نامشخص است';
								}
							}
							else
							{
								echo 'بلیط معتبر نیست و یا تاریخ مصرف آن گذشته است';
							}
						break;
						
						
						
						
						case 'validate_cancel_group' :
							$admin->LOG('بررسی ابطال گروهی' , 'در حال بررسی');
							$now = substr($admin->true_time() , 0 , 10);
							
							$code = nl2br($_POST['code']);
							
							$exode = explode('<br />' , $code);
							
							$ticket = array();
							$i = 0;
							if (count($exode))
							{
								foreach ($exode as $k => $v)
								{
									if (!empty($v))
									{
										$ex = explode('=' , trim($v));
										if (count($ex) > 1)
										{
											$cnt = $ex[1];
										}
										else
										{
											$cnt = 1;
										}
										
										
										$ticket[$i] = array('code'=>trim($ex[0]) , 'count'=>trim($cnt));
										$i++;
									}
								}
							}
							
							if (count($ticket) == 0)
							{
								echo 'ورودی خالی است';
								return;
							}
							
							
							$echo = '';
							
							foreach ($ticket as $t)
							{
								if (!empty($t['code']))
								{
									$sql_ = $admin->sql("select * from ticket where (code = '$t[code]' and (time_start <= '$now' and time_finish >= '$now')) ");
									if (mysqli_num_rows($sql_) == 1)
									{
										$row = $admin->row($sql_);
										
										if ($row['status'] == 'ابطال')
										{
											$echo .= 'بلیط شماره '.$t['code'].' قبلا باطل شده است - مصرف شده'.PHP_EOL;
										}
										elseif ($row['status'] == 'مرجوع')
										{
											$echo .= 'بلیط شماره '.$t['code'].'  قبلا مرجوع شده است'.PHP_EOL;
										}
										elseif ($row['status'] == 'فعال')
										{
											if ($row['type'] != 1)
											{
												if (!($row['sessions'] + $t['count'] <= $row['type']))
												{
													$echo .= 'بلیط شماره '.$t['code'].'  به تعداد وارد شده جلسه ندارد - جلسات باقیمانده : ' . ($row['type'] - $row['sessions']).PHP_EOL;
												}
											}
										}
										else
										{
											$echo .= 'وضعیت بلیط شماره '.$t['code'].' نامشخص است'.PHP_EOL;
										}
									}
									else
									{
										$echo .= 'بلیط شماره '.$t['code'].'  معتبر نیست و یا تاریخ مصرف آن گذشته است'.PHP_EOL;
									}
								}
							}
							
							if (empty($echo))
							{
								$echo = 'تمامی بلیط ها قابل قبول هستند';
							}
							
							echo $echo;
							
						break;
						
						
						
						
						
						
						
						case 'validate_multifunction' :
							$admin->LOG('بررسی عملیات گروهی ' , 'در حال بررسی');
							$now = substr($admin->true_time() , 0 , 10);
							
							$showtime_id = $_POST['showtime_id']+1;
							$code_from = $_POST['code_from'];
							$code_to = $_POST['code_to'];
							$op = $_POST['op'];
							
							$count = 0;
							
							if (!empty($code_from) and !empty($code_to) and $code_from < $code_to)
							{
								$id_array = array();
								for ($i = $code_from ; $i <= $code_to ; $i++)
								{
									$count++;
									$id_array[] = $showtime_id.'.'.$i;
								}
							}
							
							
							if ($count > 0)
							{
								$str = '';
								foreach ($id_array as $k => $v)
								{
									$str .= "code = '".$v."' or ";
								}
								
								$str = substr($str , 0 , strlen($str) - 4);
								
								if (strlen($str) > 0)
								{
									$sql = $admin->sql("select * from ticket where ($str)");
									$count_tickets = @mysqli_num_rows($sql);
									if ($count_tickets > 0)
									{
										echo 'OK'.$count_tickets;
									}
									else
									{
										echo 'هیچ بلیطی در بازه انتخابی شما وجود ندارد';
									}
								}
								else
								{
									echo 'هیچ بلیطی انتخاب نشده است . ورودی ها را بررسی کنید';
								}
							}
							else
							{
								echo 'هیچ بلیطی انتخاب نشده است . ورودی ها را بررسی کنید';
							}
						break;
						
						
						
						
						case 'validate_coupon' :
							$admin->LOG('بررسی گیفت کارت در بلیط' , 'در حال بررسی');

							$sql = $admin->sql("select * from coupon where (serial = '$_POST[coupon]')");
							if (mysqli_num_rows($sql) == 1)
							{
								$row = $admin->row($sql);

								switch ($row['status'])
								{
									case 'فعال' :
										echo '<input type="hidden" name="coupon_discount" id="coupon_discount" value="'.$row['amount'].'"> <span style="color:green">سریال کوپن در دسترس می باشد</span>';
									break;

									case 'رزرو' :
										echo 'reserved';
									break;

									case 'استفاده شده' :
										echo 'used';
									break;
								}
							}
							else
							{
								echo 'notfound';
							}
						break;
						
						case 'description' :

							$id = intval($_POST['id']);

							echo $admin->result($admin->sql("select description from $_POST[tablename] where (id = '$id') limit 1 "));

						break;
						
						case 'description_save' :

							$id = intval($_POST['id']);
							$admin->sql("update $_POST[tablename] set description = '$_POST[new_description]' where (id = '$id') limit 1 ");
							echo "انجام شد";

						break;
						
						
						
						
						
					}
				}
				else
				{
					echo $admin->result($admin->sql("select amount from `class` where id = '$_POST[class_id]'") , 0);
				}
			}
			else
			{
				echo $admin->system_message('login_page');
				require_once("modules/footer.php");
			}
		}
	}
}
else
{
	echo $admin->system_message($connection_string);
}
?>