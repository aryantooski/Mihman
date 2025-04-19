<?PHP
require_once('_config.php');
$c = mysqli_select_db(mysqli_connect(_HOST , _USERNAME , _PASSWORD) , _DBNAME);

$ip = $admin->result($admin->sql("select ip from admin") , 0);

echo '<pre>';

$s = mysqli_query("select * from personel");
while ($r = mysqli_fetch_assoc($s))
{
	unset($url , $ch , $data , $contents);
	
	$url = "http://".$ip."/csl/user?action=save&id=add";
	$ch = curl_init($url);
	curl_setopt($ch, CURLOPT_HEADER, false);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_POST, true);
	
	$data = array(
		'upin2' => $r['id'],
		'upin' => 'NULL',
		'uname' => substr($r['name'] , 0 , 8),
		'uprivilege' => '0',
		'upwd' => substr($r['ntcode'] , 5 , 5),
		'ugroup' => '0',
		'utz1' => '0' ,
		'utz2' => '0' ,
		'utz3' => '0' ,
		'ucard' => '0' ,
	);
	
	curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
	$contents = curl_exec($ch);
	curl_close($ch);
	
	$return = md5($contents);
	
	if ($return == '359b7e5e550b75f7c5a8e2548232ac97')
	{
		echo 'ثبت '.$r['name'].'انجام شد'.PHP_EOL;
	}
	else
	{
		echo 'خطا در ثبت '.$r['name'].'انجام شد'.PHP_EOL;
	}
	
}




