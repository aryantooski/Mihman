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

class _device
{
	public $ip = '';
	
	
	function fetch($string = '&uid=0')
	{
		$DOM = new DOMDocument;
		$DOM->loadHTML(file_get_contents('http://'.$this->ip.'/csl/query?action=run'.$string));
		
		$items = $DOM->getElementsByTagName('tr');
		$tds = $DOM->getElementsByTagName('td');
		
		
		$array = array();
		
		$i = 1;
		$j = 1;
		
		
		for ($ii = 6 ; $ii < $tds->length ; $ii++)
		{
			$array[$i][] = $tds->item($ii)->nodeValue;
			
			if ($j % 6 == 0)
				$i++;
			
			$j++;
		}
		
		return $array;
	}
	
	
}
