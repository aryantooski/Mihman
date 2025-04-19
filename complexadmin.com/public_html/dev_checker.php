<?PHP
require_once('_config.php');
$c = mysqli_select_db(mysqli_connect(_HOST , _USERNAME , _PASSWORD) , _DBNAME);



$httpd  = @fsockopen(_HOST , 80 , $errno , $errstr , 1);
$mysqld = @fsockopen(_HOST , 3306 , $errno , $errstr , 1);
$device = @fsockopen($admin->result($admin->sql("select ip from admin") , 0) , 80 , $errno , $errstr , 1);

echo $url;

echo '<pre>';
echo '
http 				: '; if (!empty($httpd)) {echo 'OK';}else{echo 'DOWN';}  echo '
mysqld 				: '; if (!empty($mysqld)) {echo 'OK';}else{echo 'DOWN';}  echo '
php com 			: '; if (extension_loaded('com_dotnet')) {echo 'OK';}else{echo 'DOWN';}  echo '
ioncube 			: '; if (extension_loaded('ionCube Loader')) {echo 'OK';}else{echo 'DOWN';}  echo '
device 				: '; if (!empty($device)) {echo 'OK';}else{echo 'DOWN';}  echo '
mysql connection 		: '; if ($c) {echo 'OK';}else{echo 'DOWN';}  echo '
exts				: '; foreach(get_loaded_extensions() as $k=>$v){echo $v.' , ';} echo '
';

