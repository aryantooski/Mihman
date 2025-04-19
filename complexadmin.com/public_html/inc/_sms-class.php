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

class _sms
{
	public $username = 'webasfnr';
	public $password = 'kg60#R';
	public $sms_number = '30007650003020';
	
	
	function send($to , $text)
	{
		//echo '<span style="color:red;">متاسفانه امکان ارسال پیام کوتاه وجود ندارد با پشتیبانی تماس بگیرید</span>';
		//return 'Error: ';
		
		require_once('lib/nusoap.php'); 
		
		$client = new nusoap_client('http://mihansmscenter.com/webservice/?wsdl', 'wsdl');
		$client->decodeUTF8(false);
		
		$res = $client->call('send', array(
		'username'	=> $this->username,
		'password'	=> $this->password,
		'to'		=> $to,
		'from'		=> $this->sms_number,
		'message'	=> $text
		));
		
		if (is_array($res) && isset($res['status']) && $res['status'] === 0)
		{
			return 1;
		}
		elseif (is_array($res))
		{
			return "Error: ".@$res['status_message'];
		}
		else
		{
			return $client->getError();
		}
	}
	
	
}
