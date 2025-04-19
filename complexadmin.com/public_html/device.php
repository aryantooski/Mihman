<?PHP
define("SECURITY_CHECK" , "MOHAMMAD_REZA_POURSOLTAN");

define('PATH' , str_replace('device.php' , '' , $_SERVER['SCRIPT_FILENAME']));

require_once(PATH.'inc/_public-class.php');
$admin = new _public();


require_once(PATH.'_config.php');
$connection_string = $admin->connection_mysql();

define('_DEVICE_IP' , $admin->result($admin->sql("select ip from admin") , 0));

require_once(PATH.'inc/_device-class.php');
$device = new _device();

$device->ip = _DEVICE_IP;

require_once(PATH.'inc/date.php');

$sql = $admin->sql("select * from personel");
$string = '';
while ($personel = $admin->row($sql))
{
	$string .= '&uid='.$personel['id'];
}

for ($i=2 ; $i<= 200 ; $i++)
{
	$string .= '&uid='.$i;
}

if (isset($_GET['d']))
{
	$d = (int) $_GET['d'];
}
else
{
	$d = 4;
}

$sdate = date('Y-m-d' , time()-(15*($d*60*60)));
$edate = date('Y-m-d' , time()+86400);

$ret = $device->fetch($string.'&sdate='.$sdate.'&edate='.$edate);

foreach ($ret as $k => $v)
{
	$personel_id  = $v[1];
	$act = $admin->result($admin->sql("select act from personel_time where(personel_id = '$personel_id') order by id desc limit 1 ") , 0);

	switch ($v[4])
	{
		case 'IN' :
			if ($act == 'ورود')
			{
				$act = 'خروج';
			}
			else
			{
				$act = 'ورود';
			}
		break;
		
		case 'OUT' :
			$act = 'خروج';
		break;
	}
	
	list($y , $m , $d) = explode('-' , $v[0]);
	list($h , $n , $s) = explode(':' , $v[3]);
	
	
	$gtj = gregorian_to_jalali($y , $m , $d);
	print_r($date);
	
	$time = $gtj[0].'-'.$gtj[1].'-'.$gtj[2].' '.$h.':'.$n.':'.$s;
	
	
	if ($admin->result($admin->sql("select count(*) from personel_time where(personel_id = '$personel_id' and time = '$time') ") , 0) == 0)
	{
		$q = "insert into personel_time set personel_id = '$personel_id' , act = '$act' , time = '$time' , description = 'ثبت شده توسط دستگاه' ";
		$admin->sql($q);
		//echo $q.'<br>';
	}
}