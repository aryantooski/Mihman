<?PHP
session_start();
date_default_timezone_set('Asia/Tehran');
define("SECURITY_CHECK" , "MOHAMMAD_REZA_POURSOLTAN");

require_once("inc/_public-class.php");
$admin = new _public();

$admin->loadsetting();

require_once("_config.php");
$url = "http://"._URL.'/';

$m = array(1=>'فروردین' , 2=>'اردیبهشت' , 3=>'خرداد' , 4=>'تیر' , 5=>'مرداد' , 6=>'شهریور' , 7=>'مهر' , 8=>'آبان' , 9=>'آذر' , 10=>'دی' , 11=>'بهمن' , 12=>'اسفند');


$from = 'index';
$connection_string = '';
$do = '';
$connection_string = $admin->connection_mysql();
if ($connection_string == 'true')
{
	$s = $admin->sql("select * from admin");
	$r = $admin->row($s);


	switch ($r['autobackup_time_type'])
	{
		case 'hour' :
			$automins = $r['autobackup_mins'] * 3600;
		break;

		case 'day' :
			$automins = $r['autobackup_mins'] * 86400;
		break;
	}
	

	$open = opendir('backfile/');

	$stamp = 0;

	$flist = array();

	while ($dir = readdir($open))
	{
		if ($dir != '.' and $dir != '..')
		{
			unset($dt , $d , $t , $last_stamp);

			

			$dt = explode(' ', trim($dir , '.sql'));

			$d = explode('-', $dt[0]);
			$t = explode('.', $dt[1]);

			

			$last_stamp = mktime(intval($t[0]) , intval($t[1]) , intval($t[2]) , intval($d[1]) , intval($d[2]) , intval($d[0]));

			//echo $last_stamp.'<br>';

			$flist[$last_stamp] = $dir;

			if ($last_stamp > $stamp)
			{
				$stamp = $last_stamp;
				
			}
		}
	}

	ksort($flist);
	$flist = array_reverse($flist, true);

	$c = 0;

	foreach ($flist as $none => $file_name)
	{
		if ($c >= $r['autobackup_limit'])
		{
			echo 'Unlinked '.$file_name.'<br>';
			unlink('backfile/'.$file_name);
		}

		$c++;
	}

	if ($stamp < (time() - $automins))
	{
		$admin->backup();
		echo 'backed Up';
	}


}
else
{
	echo $admin->system_message($connection_string);
}
?>