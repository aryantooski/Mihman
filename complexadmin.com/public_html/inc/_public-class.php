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




foreach ($_POST as $k => $v)
{
	$_POST[$k] = str_replace('ي' , 'ی' , $v);
	$_POST[$k] = str_replace('ك' , 'ک' , $v);
}


foreach ($_GET as $k => $v)
{
	$_GET[$k] = str_replace('ي' , 'ی' , $v);
	$_GET[$k] = str_replace('ك' , 'ک' , $v);
}



class _public
{
	var $connection_link;
	
	function connection_mysql()
	{
		if (file_exists("_config.php"))
		{
			require_once("_config.php");
			$this->connection_link = mysqli_connect(_HOST , _USERNAME , _PASSWORD);
			
			if ($this->connection_link)
			{
				mysqli_select_db($this->connection_link , _DBNAME);
				mysqli_query($this->connection_link , "set names utf8");
				mysqli_query($this->connection_link , "SET SESSION sql_mode = '';");
				mysqli_set_charset($this->connection_link , "utf8");
				return 'true';
			}
			else
			{
				return $this->msg("ارتباط با بانک اطلاعاتی انجام نشد" , "critical");
			}
		}
		else
		{
			return $this->msg("فایل تنظیمات یافت نشد" , "critical");
		}
	}
	
	function supersql($query)
	{
		$sql = $this->sql($query);
		
		if ($sql)
		{
			$row = $this->row($sql);
			return $row;
		}
		
		return false;
	}
	
	function sql($query)
	{
		return mysqli_query($this->connection_link , $query);
	}
	
	function row($query)
	{
		return mysqli_fetch_assoc($query);
	}

	function cnt($sql)
	{
		return mysqli_num_rows($sql);
	}
	
	function superinj($query)
	{
		$checkfirst = $this->inj($query);
		$checksecond = $this->strip($checkfirst);
		return $checksecond;
	}
	
	function inj($query)
	{
		return mysqli_escape_string($this->connection_link , $query);
	}
	
	function strip($tags)
	{
		return strip_tags($tags);
	}
	
	function result($sql , $o = 0)
	{
		$data = mysqli_fetch_array($sql);
		return $data[$o];
	}
	
	function msg($text , $type)
	{
		$msg = '
		<div style="border:1px solid #7190b7; width:550px; padding:5px; text-align:right">
		<table>
		  <tr>
			<td width="25"><img src="images/'.$type.'.gif" border="0"></td>
			<td>'.$text.'</td>
		  </tr>
		</table>
		</div>
		';
		return $msg;
	}
	
	function loadsetting() // no complete --------------
	{
		define("__TITLE" , "مدیریت مجموعه پارنیک");
	}
	
	function system_message($msg)
	{
		$admin = $this;
		$from = 'system_message';
		require_once("modules/header.php");
		switch ($msg)
		{
			case 'login_page' :
				return '
<center>
<br />
<b>
لطفا نام کاربری و رمز عبور خود را وارد کنید
</b>
</center>
</td>
</tr>

    <td valign="top" align=center>
	
<div class="text-cont" style="margin-top:100px; margin-bottom:100px;">

<form method="post" action="index.php?do=login">
<table cellpadding=2>
  <tr>
    <td width="70">نام کاربری : </td>
    <td><input type="text" name="username" dir="ltr" class="input-t" size="25" /></td>
  </tr>
  <tr>
    <td>کلمه عبور : </td>
    <td><input type="password" name="password" dir="ltr" class="input-t" size="25" /></td>
  </tr>
 
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" value="ورود" class="input-b" /></td>
  </tr>
</table>

</form>

</div>

    </td>
  </tr>
</table>';
			break;
			
			default :
				return '
<center>
<br />
<b>
<font color=red>خطا !!!</font>
</b>
</center>
</td>
</tr>

    <td valign="top" align=center>
	<br />
<br />
<br />

<center>'.$msg.'</center>
<br />
<br />
<br />

    </td>
  </tr>
</table>


				';
			break;
		}
	}
	
	function login_check()
	{
		if (isset($_SESSION['login']))
		{
			if ($_SESSION['login'] == 'full-control')
			{
				return 'FULL_ACCESS';
			}
			if ($_SESSION['login'] == 'poster-control')
			{
				return 'LESS_ACCESS';
			}
			else
			{
				return 'permission-not-fullcontrol';
			}
		}
		else
		{
			return 'session-not-registered';
		}
	}
	
	function mydate()
	{
		require_once("inc/date.php");
		return jgmdate("Y-n-j" , time() );
	}
	
	function time($format = "Y-m-d H:i:s" , $stamp = 0 )
	{
		if ($stamp == 0)
		{
			$stamp = time();
		}
		
		require_once("inc/date.php");
		return jgmdate($format , $stamp);
	}
	
	function true_time()
	{
		require_once("inc/date.php");
		return jgmdate("Y-m-d H:i:s" , time() );
	}
	
	function mydate_yesterday()
	{
		require_once("inc/date.php");
		return jgmdate("Y-n-j" , time() - 86400);
	}
	
	function select($tblname , $sname , $tname , $sid = 0 , $first = false , $text = 'انتخاب کنید' , $id = '' , $where = '' , $added_class = '')
	{
		$return = '<select name="'.$sname.'" class="input-s '.$added_class.'" id="'.$id.'">';
		if ($first)
		{
			$return .= '<option value="">'.$text.'</option>';
		}
		$select[$sid] = ' selected=selected';
		$sql = $this->sql("select * from $tblname $where order by id desc");
		while ($row = $this->row($sql))
		{
			if (isset($select[$row['id']]))
			{
				$return .= '<option value="'.$row['id'].'"'.$select[$row['id']].'>'.$row[$tname].'</option>';
			}
			else
			{
				$return .= '<option value="'.$row['id'].'">'.$row[$tname].'</option>';
			}
		}
		
		$return .= '</select>';
		return $return;
	}
	
	function tag_today_visit()
	{
		$date = $this->now_slashes();
		$sql = $this->sql("SELECT `counter` FROM `counter` WHERE `date` = '".$date."' ");
		$row = $this->row($sql);
		echo $row['counter'];
	}
	
	function tag_yesterday_visit()
	{
		$sql = $this->sql("SELECT `counter` FROM `counter` ORDER BY `id` ASC");
		$num_rows = mysqli_num_rows($sql);
		if ($num_rows > 1)
		{
			$num_rows = $num_rows - 2;
			$result = $this->result($sql , $num_rows);
			$ret = $result;
		}
		else
		{
			$ret = 0;
		}
		echo $ret;
	}
	
	function tag_total_visitors()
	{
		$sql = $this->sql("SELECT `total` FROM `counter_total` ");
		$row = $this->row($sql);
		$ret = $row['total'];
		echo $ret;
	}
	
	function now_slashes()
	{
		require_once("inc/date.php");
		return jgmdate("Y/n/j");
	}
	
	function ilist($id , $showfirst = true , $name = 'category' , $table , $field)
	{
		$_SESSION['cat'] = '';
		$ret = '<select name='.$name.' class="input-s">';
		$sel[$id] = 'selected';
		if ($showfirst)
		{
			$ret .= '<option value="0" '.$sel[0].'>تعیین به عنوان سرشاخه</option>';
		}
		$this->ilist_x(0 , -1 , $id , $table , $field);
		$ret .= $_SESSION['cat'];
		$ret .= '</select>';
		
		return $ret;
	}
	
	function ilist_x($topid = 0 , $x = -1 , $id , $table , $field)
	{
		$sql = $this->sql("select * from $table where $field = '$topid' order by id asc ");
		$x++;
		while ($row = $this->row($sql))
		{
			$s = str_repeat("--- " , $x);
			$sel[$id] = 'selected';
			$_SESSION['cat'] .= '<option value="'.$row['id'].'" '.$sel[$row['id']].'>'.$s.' '.$row['name'].'</option>';
			
			$this->ilist_x($row['id'] , $x , $id , $table , $field);
		}
	}
	
	function one_back($dir)
	{
		$cleared = trim($dir);
		$stringed = substr($dir , 0 , strlen($dir) - 1);
		
		$explode = explode("/" , $stringed);
		$count = count($explode) - 1;
		
		for ($i = 0 ; $i < $count ; $i++)
		{
			$str .= $explode[$i].'/';
		}
		
		if (empty($str))
		{
			$str = '/';
		}
		
		return $str;
	}
	
	function checked_checked($t)
	{
		if (substr($t , 0 , 4) == 'TRU_')
		{
			return 'checked=checked';
		}
		else
		{
			return '';
		}
	}
	
	function remove_root_address($dir , $root_address)
	{
		return substr($dir , strlen($root_address) + 1 , strlen($dir));
	}
	
	function cal_poster($count , $userid)
	{
		if ($count == 0)
		{
			$cal['month'] = 0;
			$cal['week'] = 0;
			$cal['day'] = 0;
			$cal['hour'] = 0;
		}
		else
		{
			
			$month = time() - 2592000;
			$cal['month'] = $this->result($this->sql("select count(*) from article where (stamp >= $month and posterid = '".$userid."')") , 0);
			
			$week = time() - 604700;
			$cal['week'] = $this->result($this->sql("select count(*) from article where (stamp >= $week and posterid = '".$userid."')") , 0);
			
			$day = time() - 86400;
			$cal['day'] = $this->result($this->sql("select count(*) from article where (stamp >= $day and posterid = '".$userid."')") , 0);
			
			$hour = time() - 3600;
			$cal['hour'] = $this->result($this->sql("select count(*) from article where (stamp >= $hour and posterid = '".$userid."')") , 0);
		}
		
		return $cal;
	}
	
	function select_number($from , $to , $select_name , $default = 0 , $tab_index = '')
	{
		$ret = '<select name="'.$select_name.'" id="'.$select_name.'" class="input-s" tabindex="'.$tab_index.'">';
		$s[$default] = 'selected=selected';
		for ($i = $from ; $i <= $to ; $i++)
		{
			$ret .= '<option value="'.$i.'" '.$s[$i].'>'.$i.'</option>';
		}
		
		$ret .= '</select>';
		
		return $ret;
	}
	
	function date_select($name = '' , $back = false , $key = 'm' , $default = false , $default_text = '')
	{
		$ret = '';
		
		if ($default)
		{
			list($year , $month , $day) = explode('/' , $default_text);
		}
		else
		{
			list($year , $month , $day) = explode('/' , $this->now_slashes());
			
			if ($back)
			{
				switch ($key)
				{
					case 'm' :
						$month = $month - 1;
						
						if ($month == 0)
						{
							$year = $year - 1;
							$month = 12;
						}
					break;
					
					case 'y' :
						$year = $year - 1;
					break;
					
					case 'y+' :
						$year = $year + 1;
					break;
				}
			}
		}
		
		$ret .= '<select name="'.$name.'_day" class="input-s">';
		unset($s);
		$s[$day] = 'selected=selected';
		for($i = 1 ; $i <= 31 ; $i++)
		{
			$ret .= '<option value="'.$i.'" '.$s[$i].'>'.$i.'</option>';
		}
		
		$ret .= '</select> ';
		
		
		
		
		$ret .= '<select name="'.$name.'_month" class="input-s">';
		unset($s);
		$s[$month] = 'selected=selected';
		for($i = 1 ; $i <= 12 ; $i++)
		{
			$ret .= '<option value="'.$i.'" '.$s[$i].'>'.$i.'</option>';
		}
		
		$ret .= '</select> ';
		
		
		
		
		$ret .= '<select name="'.$name.'_year" class="input-s">';
		unset($s);
		$s[$year] = 'selected=selected';
		for($i = 1380 ; $i <= 1400 ; $i++)
		{
			$ret .= '<option value="'.$i.'" '.$s[$i].'>'.$i.'</option>';
		}
		
		$ret .= '</select> ';
		
		
		
		
		return $ret;
	}
	
	function full_select($form = 1 , $to = 5 , $name = '' , $default = 1 , $array = NULL , $additional = '')
	{
		$ret = '<select name="'.$name.'" class="input-s" '.$additional.'>';
		$select[$default] = 'selected=selected';
		for ($i = $form ; $i <= $to ; $i++)
		{
			if ($array != NULL)
				$s = $array[$i];
			else
				$s = $i;
			
			$ret .= '<option value="'.(strlen($i) == 1 ? '0'.$i : $i).'" '.$select[$i].'>'.(strlen($s) == 1 ? '0'.$s : $s).'</option>';
		}
		
		$ret .= '</select>';
		
		return $ret;
	}
	
	
	function second_to_hour($t)
	{
		$mins = 0;
		$mins = $t / 60;
		
		
		$hours = floor($mins / 60);
		
		$some_mins = $mins - ($hours * 60);
		
		return array(1 => $hours." ساعت و ".floor($some_mins)." دقیقه" , 2 => $hours , 3 => $some_mins , 4 => $mins);
	}
	
	
	
	function LOG($action , $comment)
	{
		require_once('inc/date.php');
		$time = jgmdate("Y-m-d H:i:s");
		
		$technical = print_r($_POST , true);
		$technical .= print_r($_GET , true);
		
		$agent = 'IP: '.$_SERVER['REMOTE_ADDR'].PHP_EOL;
		$agent .= 'SIGNATURE: '.$_SERVER['SERVER_SIGNATURE'].PHP_EOL;
		$agent .= 'REFERER: '.$_SERVER['HTTP_REFERER'].PHP_EOL;
		$agent .= 'USER_AGENT: '.$_SERVER['HTTP_USER_AGENT'].PHP_EOL;
		$agent .= 'SERVER_NAME: '.$_SERVER['SERVER_NAME'].PHP_EOL;
		$agent .= 'SERVER_ADDR: '.$_SERVER['SERVER_ADDR'].PHP_EOL;
		$agent .= 'SERVER_PORT: '.$_SERVER['SERVER_PORT'].PHP_EOL;
		$agent .= 'REQUEST_METHOD: '.$_SERVER['REQUEST_METHOD'].PHP_EOL;
		$agent .= 'QUERY_STRING: '.$_SERVER['QUERY_STRING'].PHP_EOL;
		$agent .= 'REQUEST_URI: '.$_SERVER['REQUEST_URI'].PHP_EOL;
		$agent .= 'PHP_SELF: '.$_SERVER['PHP_SELF'].PHP_EOL;
		
		switch ($_SESSION['lgn'])
		{
			case 'full-control' :
				$userid = 0;
			break;
			
			case 'poster-control' :
				$userid = $_SESSION['data_poster']['id'];
			break;
		}
		
		$this->sql("insert into log set userid = '$userid' , time = '$time' , action = '$action' , comment = '$comment' , technical = '$technical' , agent = '$agent'");
		
	}
	
	
	function barcode_reader_fixer($code)
	{
		return $code;
		
		$substr = substr($code , 0 , 4);
		if ($substr == '1111' or $substr == '2222' or $substr == '3333' or $substr == '4444')
			$code = substr($code , 0 , 1).'00000'.substr($code , 4 , strlen($code));
		
		return $code;
	}
	
	function license()
	{
		$obj = new COM ( 'winmgmts://localhost/root/CIMV2' );
		
		$processor = $obj->ExecQuery("Select * from Win32_Processor");
		foreach ($processor as $wmi_processor)
		{
			$code .= $wmi_processor->Name . ' '.$wmi_processor->ProcessorId.PHP_EOL;
		}
		
		return $code;
	}
	
	function encode($text)
	{
		$x = str_explode($text);
		$n = '';
		
		foreach ($x as $k => $v)
		{
			$c = ord($v) + 19;
			$n .= chr($c);
		}
		
		return base64_encode($n);
	}
	
	function decode($text)
	{
		$x = str_explode(base64_decode($text));
		$n = '';
		
		foreach ($x as $k => $v)
		{
			$c = ord($v) - 19;
			$n .= chr($c);
		}
		
		return $n;
	}
	
	function license_validation()
	{
		$get_license = $this->encode($this->license());
		
		$get_license_from_db = $this->result($this->sql("select login_sec_key from admin") , 0);
		
		if ($get_license == $get_license_from_db)
			return true;
		
		return false;
	}
	
	function guest_is_block($guest_id)
	{
		require_once('inc/date.php');
		date_default_timezone_set('Asia/Tehran');
		$sql = $this->sql("select * from guest_block where (user_id = '$guest_id') order by id desc");
		while ($row = $this->row($sql))
		{
			if ($row['end_stamp'] <= time() and $row['end_stamp'] != 0)
			{
				return false;
			}

			switch ($row['type'])
			{
				case 'todate' : 
					
					list($y , $m , $d) = explode('-' , $row['todate_value']);
					
					$today = jmaketime(0 , 0 , 0 , jgmdate('m') , jgmdate('d') , jgmdate('Y'));
					$todate= jmaketime(0 , 0 , 0 , $m , $d , $y);
					
					if ($today < $todate)
						return true;
				break;
				
				case 'until' : 
					
					$today = jmaketime(jgmdate('H') , jgmdate('i') , jgmdate('s') , jgmdate('m') , jgmdate('d') , jgmdate('Y'));
					
					list($y , $m , $d) = explode('-', $row['date']);
					
					$todate = jmaketime(23 , 59 , 59 , $m , $d , $y) + ((int) $row['until_value'] * 86400);
					
					//echo $guest_id.'-> 000'.$today.' -> 111'.$todate.' <br>';

					if ($today < $todate)
					{
						return true;
					}
				break;
				
				case 'notexpire' : 
					return true;
				break;
			}
		}
		
		return false;
	}
	
	function parse_int_to_date($int)
	{
		return substr($int, 0 , 4).'-'.substr($int, 4 , 2).'-'.substr($int, 6 , 2).' '.substr($int, 8 , 2).':'.substr($int, 10 , 2).':'.substr($int, 12 , 2);
	}


	function backup()
	{
		date_default_timezone_set('Asia/Tehran');
		$Backup = '
-- Host: localhost
-- Generation Time: '.$this->now_slashes().'

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `'._DBNAME.'`
--

-- --------------------------------------------------------
';

$Tbl = $this->sql("SHOW TABLES FROM "._DBNAME);

while($R_t = $this->row($Tbl))
{

	$Create_tbl = $this->sql("SHOW CREATE TABLE `".$R_t['Tables_in_'._DBNAME]."`");
	
	while($R_c_t = $this->row($Create_tbl))
	{
		$Backup .= "
--
-- Table structure for table `".$R_t['Tables_in_'._DBNAME]."`
--


";
		$Backup .= $R_c_t['Create Table'];
	}
	
	$Backup .= PHP_EOL;
	
	$Q_t = $this->sql("sELECT * FROM `".$R_t['Tables_in_'._DBNAME]."`");
	
		$Backup .= "
		
--
-- Dumping data for table `".$R_t[0]."`
--

";

while($R_c_f = $this->row($Q_t))
{
	
	$Backup .= "
INSERT INTO `$R_t[0]` VALUES('$R_c_f[0]' ";
	
	
	for($i=1;$i < sizeof($R_c_f);$i++)
	{
		$Backup .= ", '$R_c_f[$i]' ";
	}
	
	$Backup .= ");\r\n";
}
	
		$Backup .= '
-- --------------------------------------------------------
		
		'; 
	$Backup .= "\r\n";
}

		$file_name = date('Y-m-d H.i.s');
		$name = 'backfile/'.$file_name.".sql";
		$H = fopen($name,"w");

		fwrite($H,$Backup);

		fclose($H);

		return $name;
	}



	function jdate_to_stamp($jdate = '0000-00-00 00:00:00')
	{
		list($date , $time) = explode(' ' , $jdate);
		list($y , $m , $d)  = explode('-' , $date);
		list($h , $i , $s)  = explode(':' , $time);
		
		require_once("inc/date.php");
		
		return jmaketime($h , $i , $s , $m , $d , $y);
	}


	function show_ticket($row , $reload_mode = false)
	{

		$showtime_sql = $this->sql("select * from showtime where (id = '$row[showtime_id]')");
		$showtime = $this->row($showtime_sql);


		$persx = stripos($showtime['type'], 'مهمان آقا') !== false ? '<img src=\'images/1.png\'>' : '';
		$persx .= stripos($showtime['type'], 'مهمان خانم') !== false ? '<img src=\'images/2.png\'>' : '';
		$persx .= stripos($showtime['type'], 'پرسنل آقا') !== false ? '<img src=\'images/3.png\'>' : '';
		$persx .= stripos($showtime['type'], 'پرسنل خانم') !== false ? '<img src=\'images/4.png\'>' : '';


		$tags_category_sql = $this->sql("select * from tags_category where (id = '$row[tag_category_id]')");
		$tags_category = $this->row($tags_category_sql);


		$coupon_sql = $this->sql("select * from coupon where (id = '$row[coupon_id]')");
		$coupon = $this->row($coupon_sql);

		if (!$reload_mode)
		{
			$tx .= '
			<div id="ticket_'.$row['id'].'" class="modal fade" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content modal-ticket-'.$row['id'].'">';
		}

		$tx .= '
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">مشاهده بلیط #'.$row['id'].' 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			نام خریدار : ';


			$buyer_name_sql = $this->sql("select name from guest where (id IN (select guest_id from ticket_part where (ticket_id = '$row[id]') order by id asc)) limit 1");
			$buyer_name_row = $this->row($buyer_name_sql);
			$tx .= $buyer_name_row['name'];

			$tx .= '
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			زمان صدور بلیط : <span dir=ltr>'.$this->parse_int_to_date($row['make_time']).'</span></h4>
		</div>
		<div class="modal-body">
			<p>
			<b>سانس</b>
			<table style="width:100%">
				<tr>
					<td width="33%">عنوان : '.$showtime['name'].'</td>
					<td>آغاز : <span dir=ltr>'.$showtime['start_date'].' '.$showtime['start_hour'].':'.$showtime['start_minute'].'</span></td>
					<td>پایان :‌ <span dir=ltr>'.$showtime['end_date'].' '.$showtime['end_hour'].':'.$showtime['end_minute'].'</span></td>
				</tr>
				<tr>
					<td>ظرفیت : '.$showtime['capacity'].'</td>
					<td>ورودی : '.number_format($showtime['price']).' تومان</td>
					<td>'.$persx.'</td>
				</tr>
			</table>

			<br><br>

			<b>گیفت کارت</b>
			<table style="width:100%">
				<tr>
					<td width="33%">سریال : '.$coupon['serial'].'</td>
					<td>مبلغ : '.number_format($coupon['amount']).' تومان</td>
				</tr>
			</table>
			'.$coupon['description'].'

			<br><br>

			<b>گروه تگ</b>
			<table style="width:100%">
				<tr>
					<td width="33%">عنوان : '.$tags_category['name'].'</td>
					<td>نوع تگ : '.$tags_category['type'].'</td>
					<td>رنگ : <span style="width:15px; height:15px; border:1px solid #999; display:inline-block; background-color:'.$tags_category['color_code'].'"></span> '.$tags_category['color_name'].'</td>
				</tr>
				
				<tr>
					<td>گرویی : '.number_format($tags_category['pledge']).' تومان</td>
					<td>تخفیف تگ : '.number_format($tags_category['discount']).' تومان</td>
					<td>آقا : '.$tags_category['mens_count'].' &nbsp;&nbsp;&nbsp; خانم : '.$tags_category['womens_count'].' &nbsp;&nbsp;&nbsp; آزاد : '.$tags_category['frees_count'].'</td>
				</tr>
			</table>

			<br><br>

			<b>مشخصات بلیط</b>

			<table style="width:100%" border="1" bordercolor="#e1e1e1">
				<tr style="background:black; color:white;">
					<td>ابزارها</td>
					<td>نفر</td>
					<td>جنسیت / نام</td>
					<td>کمد</td>
					<td>تگ</td>
					<td>ردیف</td>
					<td>بخش</td>
					<td>قیمت تومان</td>
				</tr>
			';

			$types['men'] = 'آقا';
			$types['women'] = 'خانم';
			$types['free'] = 'آزاد';
			
			$sum_total_part = 0;

			$guest_c = 1;
			$ticket_part_guest_sql = $this->sql("select distinct(guest_id) from ticket_part where (ticket_id = '$row[id]') order by id asc");
			while ($ticket_part_guest = $this->row($ticket_part_guest_sql))
			{
				$counted = false;

				$part_c = 1;
				$ticket_part_sql = $this->sql("select * from ticket_part where (ticket_id = '$row[id]' and guest_id = '$ticket_part_guest[guest_id]') group by part_id,part_table order by id asc");
				while ($ticket_part = $this->row($ticket_part_sql))
				{
					if ($ticket_part['guest_id'] > 0 and $ticket_part['part_id'] > 0)
					{
						$part_sql = $this->sql("select * from $ticket_part[part_table] where (id = '$ticket_part[part_id]')");
						$part = $this->row($part_sql);

						$tag_category_sql = $this->sql("select * from tags_category where (id = '$row[tag_category_id]')");
						$tag_category = $this->row($tag_category_sql);

						if($tag_category['type'] == 'مهمان')
						{
							$guest_sql = $this->sql("select * from guest where (id = '$ticket_part[guest_id]')");
							$guest = $this->row($guest_sql);
						}
						else
						{
							$guest_sql = $this->sql("select * from personel where (id = '$ticket_part[guest_id]')");
							$guest = $this->row($guest_sql);
						}

						if ($counted)
						{
							$tx .= '<tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>';
						}
						else
						{
							$tx .= '
							<tr style="border-top:2px solid black;">
							<td class="show_add_tag_place_'.$ticket_part[guest_id].'">';

							if ($row['make_time_stamp'] < 0)
							{
								// قبلا مرجوع شده است

								if ($row['make_time_stamp'] == -2)
								{
									$tx .= 'باطل شده';
								}
							}
							else
							{
								$count_checks = $this->sql("select * from tags_guest_ticket where (ticket_id = '".$ticket_part['ticket_id']."' and guest_id = '".$ticket_part['guest_id']."')  ");
							
								if ($this->cnt($count_checks) == 0)
								{
									$serial = '';

									$tx .= '<a href="javascript:void(0)" onclick="show_add_tag(\''.$ticket_part['ticket_id'].'\' , \''.$ticket_part['guest_id'].'\' , \''.$ticket_part['part_id'].'\' , \''.$guest['name'].'\')"><img src="images/reserve.png" alt="اتصال" title="اتصال"></a>';
								}
								else
								{
									$sql_tags = $this->sql("select serial,id from tags where (id = (select tag_id from tags_guest_ticket where (ticket_id = '".$ticket_part['ticket_id']."' and guest_id = '".$ticket_part['guest_id']."')) ) limit 1");
									$row_tags = $this->row($sql_tags);

									$serial = $row_tags['serial'];

									
									$tx .= '<a href="javascript:void(0)" onclick="show_replace_tag(\''.$ticket_part['ticket_id'].'\' , \''.$ticket_part['guest_id'].'\' , \''.$ticket_part['part_id'].'\')"><img src="images/replace.png" alt="جایگزین" title="جایگزین"></a> &nbsp; <a href="javascript:void(0)" onclick="show_revoke_tag(\''.$ticket_part['ticket_id'].'\' , \''.$ticket_part['guest_id'].'\' , \''.$ticket_part['part_id'].'\' , \''.$row_tags['id'].'\')"><img src="images/ebtal.png" alt="ابطال" title="ابطال"></a>';
								}

								$tx .= ' &nbsp; <a href="javascript:void(0)" onclick="show_add_part(\''.$ticket_part['ticket_id'].'\' , \''.$ticket_part['guest_id'].'\' )"><img src="images/add.png" alt="افزودن بخش" title="افزودن بخش"></a>';
							}
							
							

							$tx .= '</td>
							<td>'.$guest_c.'</td>
							<td>'.$types[$ticket_part['type']].' '.$guest['name'].'</td>
							<td>'.@$this->result($this->sql("select name from closet where (id = '$ticket_part[closet_id]')") , 0).'</td>
							<td>'.$serial.'</td>';

						}

						$type = $this->result($this->sql("select sex from guest where (id = '$ticket_part[guest_id]' )") , 0);

						$type = $type == 'مرد' ? 'mens' : 'womens';

						$tx .= '
							<td>'.$part_c.'</td>
							<td>'.$part['name'].'</td>
							<td>';
							if ($tags_category['type'] == 'پرسنل')
							{
								$tx .= 0;
							}
							else
							{
								$tx .= @number_format($this->result($this->sql("select ".$type."_amount from part where (id = '$part[id]' )") , 0));
							}

							$tx .= '</td>
							
						</tr>
						';

						//$sum_total_part += $part[$ticket_part['type'].'s_amount'];

						$part_c++;
						$counted = true;
					}
				}

				$guest_c++;
			}

			//$new_amount = ($sum_total_part + $row['login_amount'] + $row['tag_pledge']) - $coupon['amount'];

			//if ($row['total_part_amount'] != $sum_total_part)
			//{
			//	$this->sql("update ticket set total_part_amount = '$sum_total_part' , amount = '$new_amount' where (id = '$row[id]') limit 1 ");
			//}

			$tx .= '
			</table>


			<br><br>

			<b>مبلغ بلیط</b>

			<table style="width:100%">
				<tr>
					<td>کل بخش ها : <strong>'.number_format($row['total_part_amount']).'</strong> تومان </td>
					<td>ورودی سانس : <strong>'.number_format($row['login_amount']).'</strong> تومان</td>
					<td>گرویی تگ ها : <strong>'.number_format($row['tag_pledge']).'</strong> تومان</td>
					<td>کمد : <strong>'.number_format($row['closet_amount']).'</strong> تومان</td>
				</tr>
				<tr>
					<td>تخفیف گیفت کارت : <strong>'.number_format($row['coupon_discount']).'</strong> تومان</td>
					<td>تخفیف تگ : <strong>'.number_format($row['tag_discount']).'</strong> تومان</td>
					<td>تخفیف رند : <strong>'.number_format($row['discount_1000_rials']).'</strong> تومان</td>
					<td>قابل پرداخت : <strong>'.($row['amount'] < 0 ? '0' : number_format($row['amount'])).'</strong> تومان</td>
				</tr>
				
			</table>

			<br><br>

			<b>توضیحات</b>
			'.nl2br($row['description']).'
			</p>
		</div>



		<div class="modal-footer">';

			if ($row['make_time_stamp'] == 0)
			{
				$tx .= '';
			}
			elseif ($row['make_time_stamp'] > 0)
			{
				$period = $row['make_time_stamp'] + ($showtime['return_time_limit'] * 60);

				if ($period >= time()) // can return
				{
					$available_time = $period - time();

					$tx .= '
					<a href="javascript:void(0)" onclick="show_refund_tag(\''.$row['id'].'\')"><img src="images/marjoo.png" alt="مرجوع" title="مرجوع"> مرجوع بلیط</a> &nbsp; 

					<span class="return_time_counter_'.$row['id'].'_span">
						زمان مجاز مرجوعی : <span id="return_time_counter_'.$row['id'].'">'.$available_time.'</span>
						<span class="refunc_resp_'.$row['id'].'"></span>
					</span>

					<script>
						var available_time_'.$row['id'].' = '.$available_time.';
						var sec_'.$row['id'].' = 0;
						var min_'.$row['id'].' = 0;
						var hour_'.$row['id'].' = 0;

						window.setInterval(function() {
							if (available_time_'.$row['id'].' == 0)
							{
								$(".return_time_counter_'.$row['id'].'_span").html("زمان مرجوعی به پایان رسیده است");
								$(".return_btn_'.$row['id'].'").css({"display":"none"});
							}
							else
							{
								available_time_'.$row['id'].' = available_time_'.$row['id'].' - 1;

								if (available_time_'.$row['id'].' > 59)
								{
									min_'.$row['id'].' = Math.floor(available_time_'.$row['id'].' / 60);
									sec_'.$row['id'].' = Math.floor(available_time_'.$row['id'].' % 60);

									if (min_'.$row['id'].' > 59)
									{
										hour_'.$row['id'].' = Math.floor(min_'.$row['id'].' / 60);
									}
									else
									{
										hour_'.$row['id'].' = "00";
									}
								}
								else if (available_time_'.$row['id'].' > 0 && available_time_'.$row['id'].' < 59)
								{
									sec_'.$row['id'].' = available_time_'.$row['id'].';
									min_'.$row['id'].' = "00";
									hour_'.$row['id'].' = "00";
								}
								else
								{
									min_'.$row['id'].' = "00";
									hour_'.$row['id'].' = "00";
								}

								if (min_'.$row['id'].' < 10 && min_'.$row['id'].' >= 1)
								{
									min_'.$row['id'].' = "0"+min_'.$row['id'].';
								}

								if (sec_'.$row['id'].' < 10 && sec_'.$row['id'].' >= 0)
								{
									sec_'.$row['id'].' = "0"+sec_'.$row['id'].';
								}

								$("#return_time_counter_'.$row['id'].'").html(hour_'.$row['id'].'+":"+min_'.$row['id'].'+":"+sec_'.$row['id'].');
							}

							
						} , 1000);
					</script>';
				}
				else // return time expired
				{
					$tx .= 'زمان مرجوعی به پایان رسیده است';
				}
			}
			

			$tx .= '
		</div>';


		if (!$reload_mode)
		{
			$tx .= '
				</div>
				</div>
			</div>';

		}

		return $tx;
	}

	function show_ticket_additional()
	{

		?>

		<div id="add_reserve" class="modal fade" role="dialog" style="z-index: 1000000">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">اتصال تگ به بلیط</h4>
					</div>
					<div class="modal-body">
						<p>
							<form method="post" action="" id="frm_add_tag" onsubmit="return add_tag()">
								<input type="hidden" name="ticket_id" id="ticket_id" value="">
								<input type="hidden" name="part_id" id="part_id" value="">
								<input type="hidden" name="guest_id" id="guest_id" value="">

								<table>
									<tr>
										<td>شماره تگ <span id="name_of_felani"></span> را وارد کنید : </td>
										<td><input type="text" name="tag_serial" id="tag_serial" dir="ltr"></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td><input type="submit" value="اتصال"></td>
									</tr>
								</table>
							</form>
						</p>
					</div>
					<div class="modal-footer">
						 <span class="loading"></span>
					</div>
				</div>
			</div>
		</div>



		<div id="add_replace" class="modal fade" role="dialog" style="z-index: 1000000">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">جایگزین تگ جدید</h4>
					</div>
					<div class="modal-body">
						<p>
							<form method="post" action="" id="frm_replace_tag" onsubmit="return replace_tag()">
								<input type="hidden" name="ticket_id" id="ticket_id_2" value="">
								<input type="hidden" name="part_id" id="part_id_2" value="">
								<input type="hidden" name="guest_id" id="guest_id_2" value="">

								<table>
									<tr>
										<td>شماره تگ جدید را وارد کنید : </td>
										<td><input type="text" name="tag_serial" id="tag_serial_2" dir="ltr"></td>
									</tr>
									<tr>
										<td>توضیحات : </td>
										<td><textarea name="details" style="width: 250px; height: 100px;"></textarea></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td><input type="submit" value="جایگزین"></td>
									</tr>
								</table>
							</form>
						</p>
					</div>
					<div class="modal-footer">
						 <span class="loading_2"></span>
					</div>
				</div>
			</div>
		</div>


		<div id="add_revoke" class="modal fade" role="dialog" style="z-index: 1000000">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">ابطال تگ</h4>
					</div>
					<div class="modal-body">
						<p>
							<form method="post" action="" id="frm_revoke_tag" onsubmit="return revoke_tag()">
								<input type="hidden" name="ticket_id" id="ticket_id_3" value="">
								<input type="hidden" name="part_id" id="part_id_3" value="">
								<input type="hidden" name="guest_id" id="guest_id_3" value="">
								<input type="hidden" name="tag_id" id="tag_id_3" value="">

								<table>
									<tr>
										<td>توضیحات : </td>
										<td><textarea name="details" style="width: 250px; height: 100px;"></textarea></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td><input type="submit" value="ابطال"></td>
									</tr>
								</table>
							</form>
						</p>
					</div>
					<div class="modal-footer">
						 <span class="loading_3"></span>
					</div>
				</div>
			</div>
		</div>


		<div id="add_refund" class="modal fade" role="dialog" style="z-index: 1000000">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">مرجوع تگ</h4>
					</div>
					<div class="modal-body">
						<p>
							<form method="post" action="" id="frm_refund_tag" onsubmit="return refund_tag()">
								<input type="hidden" name="ticket_id" id="ticket_id_4" value="">

								<table>
									<tr>
										<td>توضیحات : </td>
										<td><textarea name="details" style="width: 250px; height: 100px;"></textarea></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td><input type="submit" value="مرجوع"></td>
									</tr>
								</table>
							</form>
						</p>
					</div>
					<div class="modal-footer">
						 <span class="loading_4"></span>
					</div>
				</div>
			</div>
		</div>


		<div id="add_part" class="modal fade" role="dialog" style="z-index: 1000000">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">افزودن بخش</h4>
					</div>
					<div class="modal-body">
						<p>
							<form method="post" action="" id="frm_add_part" onsubmit="return add_part()">
								<input type="hidden" name="ticket_id" id="ticket_id_5" value="">
								<input type="hidden" name="guest_id" id="guest_id_5" value="">

								<table>
									<tr>
										<td>انتخاب بخش : </td>
										<td class="add_part_item_place"></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td><input type="submit" value="افزودن"></td>
									</tr>
								</table>
							</form>
						</p>
					</div>
					<div class="modal-footer">
						 <span class="loading_5"></span>
					</div>
				</div>
			</div>
		</div>


		<script type="text/javascript">

			function reload_content(ticket_id , time)
			{
				window.setTimeout(function(){

					$('#add_reserve').modal('hide');
					$('#add_replace').modal('hide');
					$('#add_revoke').modal('hide');
					$('#add_refund').modal('hide');
					$('#add_part').modal('hide');

					$(".modal-ticket-"+ticket_id).html('در حال بارگزاری ...');
					
					$.ajax({
						url:"core.php?act=ticket_reload",
						type:"post",
						data:"ticket_id="+ticket_id,
						success: function (data){

							if (data != 'error')
							{
								$(".modal-ticket-"+ticket_id).html(data);
							}
							else
							{
								$(".modal-ticket-"+ticket_id).html('<span style="color:red">خطا در عملیات</span>');
							}
						},
						error: function (er) {
							$(".modal-ticket-"+ticket_id).html('<span style="color:red">خطا در عملیات</span>');
						}
					});

					//
				} , time);
			}

			
			function show_add_part(ticket_id , guest_id)
			{
				$(".loading_5").html('');

				$('#ticket_id_5').val(ticket_id);
				$('#guest_id_5').val(guest_id);
				$('#add_part').modal({backdrop: true});
				
				$(".add_part_item_place").html('<img src="images/loading.gif"> در حال اجرا ...');
				
				$.ajax({
					url:"core.php?act=add_part_items",
					type:"post",
					data:'ticket_id='+ticket_id+'&guest_id='+guest_id,
					success: function (data){
						$(".add_part_item_place").html(data);
					},
					error: function (er) {
						$(".add_part_item_place").html('<span style="color:red">خطا در عملیات</span>');
					}
				});

			}


			function add_part()
			{
				$(".loading_5").html('در حال بررسی ...');

				$.ajax({
					url:"core.php?act=add_part",
					type:"post",
					data:$("#frm_add_part").serialize(),
					success: function (data){
						if (data == 'ok')
						{
							reload_content($('#ticket_id_5').val() , 3000);
							$(".loading_5").html('<span style="color:green">افزودن بخش با موفقیت انجام شد</span>');
							timer_countdown(3 , '.loading_5');
						}
						else
						{
							$(".loading_5").html('<span style="color:red">'+data+'</span>');
						}
					},
					error: function (er) {
						$(".loading_5").html('<span style="color:red">خطا در عملیات</span>');
					}
				});

				return false;
			}





			function show_add_tag(ticket_id , guest_id , part_id , buyer_name)
			{
				$(".loading").html('');

				$('#ticket_id').val(ticket_id);
				$('#part_id').val(part_id);
				$('#guest_id').val(guest_id);
				$('#name_of_felani').html(buyer_name);
				$('#add_reserve').modal({backdrop: true});
				$('#tag_serial').val("");
				$('#tag_serial').focus();
			}


			function add_tag()
			{
				$(".loading").html('در حال بررسی ...');

				$.ajax({
					url:"core.php?act=add_tag",
					type:"post",
					data:$("#frm_add_tag").serialize(),
					success: function (data){
						if (data == 'ok')
						{
							reload_content($("#frm_add_tag #ticket_id").val() , 3000);
							$(".loading").html('<span style="color:green">اتصال با موفقیت انجام شد</span>');
							timer_countdown(3 , '.loading');
						}
						else
						{
							$(".loading").html('<span style="color:red">'+data+'</span>');
						}
					},
					error: function (er) {
						$(".loading").html('<span style="color:red">خطا در عملیات</span>');
					}
				});

				return false;
			}


			function show_replace_tag(ticket_id , guest_id , part_id)
			{
				$(".loading").html('');

				$('#ticket_id_2').val(ticket_id);
				$('#part_id_2').val(part_id);
				$('#guest_id_2').val(guest_id);

				$('#add_replace').modal({backdrop: true});
				$('#tag_serial_2').focus();
			}

			function replace_tag()
			{
				$(".loading_2").html('در حال بررسی ...');

				$.ajax({
					url:"core.php?act=replace_tag",
					type:"post",
					data:$("#frm_replace_tag").serialize(),
					success: function (data){
						if (data == 'ok')
						{
							reload_content($("#frm_replace_tag #ticket_id_2").val() , 3000);
							$(".loading_2").html('<span style="color:green">جایگزین با موفقیت انجام شد</span>');
							timer_countdown(3 , '.loading_2');
						}
						else
						{
							$(".loading_2").html('<span style="color:red">'+data+'</span>');
						}
					},
					error: function (er) {
						$(".loading_2").html('<span style="color:red">خطا در عملیات</span>');
					}
				});

				return false;
			}


			function show_revoke_tag(ticket_id , guest_id , part_id , tag_id)
			{
				$(".loading_3").html('');

				$('#ticket_id_3').val(ticket_id);
				$('#part_id_3').val(part_id);
				$('#guest_id_3').val(guest_id);
				$('#tag_id_3').val(tag_id);
				$('#add_revoke').modal({backdrop: true});
			}

			function revoke_tag()
			{
				if (confirm('آیا اطمینتان دارید؟'))
				{
					$(".show_add_tag_place_"+$("#guest_id_3").val()).html('در حال اجرا ...');
					
					var ticket_id = $("#frm_revoke_tag #ticket_id_3").val();

					$.ajax({
						url:"core.php?act=revoke_tag",
						type:"post",
						data:$("#frm_revoke_tag").serialize(),
						success: function (data){
							if (data == 'ok')
							{
								reload_content(ticket_id , 3000);
								$(".show_add_tag_place_"+$("#guest_id_3").val()).html('<span style="color:green">ابطال شد.</span> ');
								timer_countdown(3 , '.show_add_tag_place');
								//<a href="javascript:void(0)" onclick="show_add_tag(\''+ticket_id+'\' , \''+guest_id+'\' , \''+part_id+'\')"><img src="images/reserve.png" alt="اتصال" title="اتصال"></a>
							}
							else
							{
								$(".show_add_tag_place_"+$("#guest_id_3").val()).html('<span style="color:red">'+data+'</span>');
							}
						},
						error: function (er) {
							$(".show_add_tag_place_"+$("#guest_id_3").val()).html('<span style="color:red">خطا در عملیات</span>');
						}
					});

				}

				return false;
			}


			function show_refund_tag(ticket_id)
			{
				$(".loading_4").html('');

				$('#ticket_id_4').val(ticket_id);
				$('#add_refund').modal({backdrop: true});
			}

			function refund_tag()
			{
				if (confirm('آیا اطمینتان دارید؟'))
				{
					var ticket_id = $("#frm_refund_tag #ticket_id_4").val();

					$(".refunc_resp_"+ticket_id).html('در حال مرجوع بلیط ...');

					$.ajax({
						url:"core.php?act=refund_tag",
						type:"post",
						data:$("#frm_refund_tag").serialize(),
						success: function (data){
							if (data == 'ok')
							{
								reload_content(ticket_id , 3000);
								$(".refunc_resp_"+ticket_id).html('<span style="color:green">مرجوع شد.</span>');
								timer_countdown(3 , '.refunc_resp_'+ticket_id);
							}
							else
							{
								$(".refunc_resp_"+ticket_id).html('<span style="color:red">'+data+'</span>');
							}
						},
						error: function (er) {
							$(".refunc_resp_"+ticket_id).html('<span style="color:red">خطا در عملیات</span>');
						}
					});

				}

				return false;
			}

			function timer_countdown(secs , where)
			{
				$(where).find('span').append(' &nbsp; <span class="myintval">'+secs+'</span>');
				console.log($(where).find('span'));
				secs = secs - 1;

				var myintval = setInterval(function(){

					if (secs >= 0)
					{
						$(where).find('span').find('.myintval').html(secs);

						secs = secs - 1;
					}
					else
					{
						clearInterval(myintval);
						$(where).find('span').remove('.myintval');
					}

				} , 1000);
			}

		</script>

		<?PHP

	}

	

	function description($row , $tblname)
	{
		$ret = '
		<a href="javascript:void(0)" onclick="description_tip(\''.$row[id].'\' , \''.$tblname.'\')" ><img src="images/balloon'.(!empty($row['description']) ? '-filled' : '' ).'.png" alt="مشاهده توضیحات" title="مشاهده توضیحات" class="description_tip_'.$row['id'].'"></a>

		';


		return $ret;

	}


	function select_clock($name = '' , $selected = '')
	{
		$ret = '<select name="'.$name.'" class="input-s">';
		
		$s[$selected] = 'selected=selected';

		for ($i = 0 ; $i <= 23 ; $i++)
		{
			for ($j = 0 ; $j <= 59 ; $j = $j + 15)
			{
				$text = (strlen($i) == 1 ? '0'.$i : $i ).':'.(strlen($j) == 1 ? '0'.$j : $j );

				$ret .= '<option value="'.$text.'" '.$s[$text].'>'.$text.'</option>';
			}
		}

		$ret .= '</select>';

		return $ret;
	}


	function class_date_finish()
	{
		$total_sessions = intval($_POST['count']);

		$days_in_week = 0;

		if ($_POST['day_1_check'] == 'on') { $days_in_week++; }
		if ($_POST['day_2_check'] == 'on') { $days_in_week++; }
		if ($_POST['day_3_check'] == 'on') { $days_in_week++; }
		if ($_POST['day_4_check'] == 'on') { $days_in_week++; }
		if ($_POST['day_5_check'] == 'on') { $days_in_week++; }
		if ($_POST['day_6_check'] == 'on') { $days_in_week++; }
		if ($_POST['day_7_check'] == 'on') { $days_in_week++; }

		if ($days_in_week == 0 )
		{
			return 'روز هفته انتخاب نشده است';
		}

		if ($total_sessions == 0)
		{
			return 'تعداد جلسات تعیین نشده است';
		}


		$weeks = $total_sessions / $days_in_week;

		$stamp = $weeks * 7 * 86400;

		require_once('inc/date.php');
		date_default_timezone_set('Asia/Tehran');


		$start_stamp = jmaketime(0 , 0 , 0 , intval($_POST['smonth']) , intval($_POST['sday']) , intval($_POST['syear']));

		$end_stamp = $start_stamp + $stamp;

		$end_date = jgmdate('Y-m-d' , $end_stamp);

		return $end_date;
	}

	function ip_list($type , $tblname , $row)
	{
		$ret = '';

		$sql = $this->sql("select * from part_ip where (table_name = '$tblname' and part_id = '$row[id]' and type = '$type' ) order by id asc ");
		while ($row = $this->row($sql))
		{
			$ret .= $row['ip'].':'.$row['port'].'<br>';
		}

		return $ret;
	}



	function update_ticket_prices($ticket_id)
	{
		$ticket = $this->sql("select * from ticket where (id = '$ticket_id' ) limit 1 ");
		$ticket = $this->row($ticket);


		$guests = array();
		$parts = array();
		$guests_parts = array();

		

		$guest_sql = $this->sql("select * from guest where (id IN (select guest_id from ticket_part where (ticket_id = '$ticket_id' )) ) ");
		while ($guest = $this->row($guest_sql))
		{
			$guests[$guest['id']] = 0;

			$part_sql = $this->sql("select * from part where (id IN (select part_id from ticket_part where (ticket_id = '$ticket_id' and guest_id = '$guest[id]' ))) ");
			while ($part = $this->row($part_sql))
			{
				$type = $guest['sex'] == 'مرد' ? 'mens' : 'womens';

				$parts[$part['id']] = array('guest_id' => $guest[id] , 'item' => $type);
				$guests_parts[$guest['id'].'_'.$part['id']] = 0;
			}

		}
	

		$showtime = $this->sql("select * from showtime where (id = '$ticket[showtime_id]') ")->fetch_object();

		$tags_category = $this->sql("select * from tags_category where (id = '$ticket[tag_category_id]') ")->fetch_object();
		
		foreach ($parts as $part_id => $value)
		{
			$guest_type = $this->result($this->sql("select sex from guest where (id = '".$value['guest_id']."')") , 0);

			$guest_type = $guest_type == 'مرد' ? 'mens' : 'womens';

		}

		foreach ($guests_parts as $vx => $none)
		{
			list($guest_id , $part_id) = explode('_' , $vx);

			$sum_parts += $this->result($this->sql("select ".$guest_type."_amount from ".(substr($part_id , 0 , 4) == 'temp' ? 'temp_part' : 'part')." where (id = '".(substr($part_id , 0 , 4) == 'temp' ? substr($part_id , 5 , 4) : $part_id)."' )") , 0);
		}
		

		$total_sum_amount = ($showtime->price * count($guests)) + ($tags_category->pledge * count($guests)) + ($sum_parts);
		
		$tags_category_discount = $tags_category->discount;
		
		$coupon_discount = @$this->result($this->sql("select amount from coupon where (id = '$ticket[coupon_id]')") , 0);
		
		$total_pay_amount = $total_sum_amount - $tags_category_discount - $coupon_discount;

		$discount_1000_rials = ($total_pay_amount % 100);

		$total_pay_amount = $total_pay_amount - $discount_1000_rials;

		$data = array('login_amount' => ($showtime->price * count($guests)) , 'total_part_amount' => $sum_parts , 'tag_discount' => $tags_category_discount , 'tag_pledge' => ($tags_category->pledge * count($guests)) , 'amount' => $total_pay_amount , 'discount_1000_rials' => $discount_1000_rials , 'coupon_discount' => $coupon_discount);


		$this->sql("update ticket set login_amount = '$data[login_amount]' , total_part_amount = '$data[total_part_amount]' , tag_discount = '$data[tag_discount]' , tag_pledge = '$data[tag_pledge]' , discount_1000_rials = '$data[discount_1000_rials]' , coupon_discount = '$data[coupon_discount]' , amount = '$data[amount]' where (id = '$ticket_id') limit 1");

	}













}
?>