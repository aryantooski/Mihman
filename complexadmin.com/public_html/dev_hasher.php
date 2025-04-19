<?PHP
session_start();
if ($_SESSION['do'] != 'ok')
{
	$fp = fopen('_config.php' , 'rb');
	$data = fread($fp , 10000000);
	$data = str_replace('<?PHP' , '' , $data);
	$data = str_replace('?>' , '' , $data);
	
	$hash = base64_encode($data);
	fclose($fp);
	
	$new = '<?PHP eval(base64_decode(\''.$hash.'\')); ?>';
	
	file_put_contents('_config.php' , $new);
	$_SESSION['do'] = 'ok';
}
echo 'Done';