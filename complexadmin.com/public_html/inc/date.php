<?PHP

function jgmdate($type,$maket="now")
{
	$transnumber=0;
	$TZhours=3;
	$TZminute=30;
	$need="";
	$result1="";
	$result="";
	if($maket=="now"){
		$year=gmdate("Y");
		$month=gmdate("m");
		$day=gmdate("d");
		list( $jyear, $jmonth, $jday ) = gregorian_to_jalali($year, $month, $day);
		$maket=@mktime(gmdate("H")+$TZhours,gmdate("i")+$TZminute,gmdate("s"),gmdate("m"),gmdate("d"),gmdate("Y"));
	}else{
		$maket+=$TZhours*3600+$TZminute*60;
		$gmdate=gmdate("Y-m-d",$maket);
		list( $year, $month, $day ) = explode( '-', $gmdate );
		list( $jyear, $jmonth, $jday ) = gregorian_to_jalali($year, $month, $day);
		}
	$need= $maket;
	$year=gmdate("Y",$need);
	$month=gmdate("m",$need);
	$day=gmdate("d",$need);
	$i=0;
	$subtype="";
	$subtypetemp="";
	list( $jyear, $jmonth, $jday ) = gregorian_to_jalali($year, $month, $day);
	while($i<strlen($type))
	{
		$subtype=substr($type,$i,1);
		if($subtypetemp=="\\")
		{
			$result.=$subtype;
			$i++;
			continue;
		}
		switch ($subtype)
		{
			case "A":
				$result1=gmdate("a",$need);
				if($result1=="pm") $result.= "&#1576;&#1593;&#1583;&#1575;&#1586;&#1592;&#1607;&#1585;";
				else $result.="&#1602;&#1576;&#1604;&#8207;&#1575;&#1586;&#1592;&#1607;&#1585;";
				break;
			case "a":
				$result1=gmdate("a",$need);
				if($result1=="pm") $result.= "&#1576;&#46;&#1592;";
				else $result.="&#1602;&#46;&#1592;";
				break;
			case "d":
				if($jday<10)$result1="0".$jday;
				else 	$result1=$jday;
				if($transnumber==1) $result.=Convertnumber2farsi($result1);
				else $result.=$result1;
				break;
			case "D":
				$result1=gmdate("D",$need);
				if($result1=="Thu") $result1="&#1662;";
				else if($result1=="Sat") $result1="&#1588;";
				else if($result1=="Sun") $result1="&#1609;";
				else if($result1=="Mon") $result1="&#1583;";
				else if($result1=="Tue") $result1="&#1587;";
				else if($result1=="Wed") $result1="&#1670;";
				else if($result1=="Thu") $result1="&#1662;";
				else if($result1=="Fri") $result1="&#1580;";
				$result.=$result1;
				break;
			case"F":
				$result.=monthname($jmonth);
				break;
			case "g":
				$result1=gmdate("g",$need);
				if($transnumber==1) $result.=Convertnumber2farsi($result1);
				else $result.=$result1;
				break;
			case "G":
				$result1=gmdate("G",$need);
				if($transnumber==1) $result.=Convertnumber2farsi($result1);
				else $result.=$result1;
				break;
				case "h":
				$result1=gmdate("h",$need);
				if($transnumber==1) $result.=Convertnumber2farsi($result1);
				else $result.=$result1;
				break;
			case "H":
				$result1=gmdate("H",$need);
				if($transnumber==1) $result.=Convertnumber2farsi($result1);
				else $result.=$result1;
				break;
			case "i":
				$result1=gmdate("i",$need);
				if($transnumber==1) $result.=Convertnumber2farsi($result1);
				else $result.=$result1;
				break;
			case "j":
				$result1=$jday;
				if($transnumber==1) $result.=Convertnumber2farsi($result1);
				else $result.=$result1;
				break;
			case "l":
				$result1=gmdate("l",$need);
				if($result1=="Saturday") $result1="&#1588;&#1606;&#1576;&#1607;";
				else if($result1=="Sunday") $result1="&#1610;&#1603;&#1588;&#1606;&#1576;&#1607;";
				else if($result1=="Monday") $result1="&#1583;&#1608;&#1588;&#1606;&#1576;&#1607;";
				else if($result1=="Tuesday") $result1="&#1587;&#1607;&#32;&#1588;&#1606;&#1576;&#1607;";
				else if($result1=="Wednesday") $result1="&#1670;&#1607;&#1575;&#1585;&#1588;&#1606;&#1576;&#1607;";
				else if($result1=="Thursday") $result1="&#1662;&#1606;&#1580;&#1588;&#1606;&#1576;&#1607;";
				else if($result1=="Friday") $result1="&#1580;&#1605;&#1593;&#1607;";
				$result.=$result1;
				break;
			case "m":
				if($jmonth<10) $result1="0".$jmonth;
				else	$result1=$jmonth;
				if($transnumber==1) $result.=Convertnumber2farsi($result1);
				else $result.=$result1;
				break;
			case "M":
				$result.=short_monthname($jmonth);
				break;
			case "n":
				$result1=$jmonth;
				if($transnumber==1) $result.=Convertnumber2farsi($result1);
				else $result.=$result1;
				break;
			case "s":
				$result1=gmdate("s",$need);
				if($transnumber==1) $result.=Convertnumber2farsi($result1);
				else $result.=$result1;
				break;
			case "S":
				$result.="&#1575;&#1605;";
				break;
			case "t":
				$result.=lastday ($month,$day,$year);
				break;
			case "w":
				$result1=gmdate("w",$need);
				if($transnumber==1) $result.=Convertnumber2farsi($result1);
				else $result.=$result1;
				break;
			case "y":
				$result1=substr($jyear,2,4);
				if($transnumber==1) $result.=Convertnumber2farsi($result1);
				else $result.=$result1;
				break;
			case "Y":
				$result1=$jyear;
				if($transnumber==1) $result.=Convertnumber2farsi($result1);
				else $result.=$result1;
				break;		
			case "U" :
				$result.=@mktime();
				break;
			case "Z" :
				$result.=days_of_year($jmonth,$jday,$jyear);
				break;
			case "L" :
				list( $tmp_year, $tmp_month, $tmp_day ) = jalali_to_gregorian(1384, 12, 1);
				echo $tmp_day;
				break;
			default:
				$result.=$subtype;
		}
		$subtypetemp=substr($type,$i,1);
	$i++;
	}
	return $result;
}
function jmaketime($hour="",$minute="",$second="",$jmonth="",$jday="",$jyear="")
{
	if(!$hour && !$minute && !$second && !$jmonth && !$jmonth && !$jday && !$jyear)
		return @mktime();
	list( $year, $month, $day ) = jalali_to_gregorian($jyear, $jmonth, $jday);
	$i=@mktime($hour,$minute,$second,$month,$day,$year);	
	return $i;
}
function mstart($month,$day,$year)
{
	list( $jyear, $jmonth, $jday ) = gregorian_to_jalali($year, $month, $day);
	list( $year, $month, $day ) = jalali_to_gregorian($jyear, $jmonth, "1");
	$timestamp=@mktime(0,0,0,$month,$day,$year);
	return gmdate("w",$timestamp);
}
function lastday ($month,$day,$year)
{
	$jday2="";
	$jgmdate2 ="";
	$lastdayen=gmdate("d",@mktime(0,0,0,$month+1,0,$year));
	list( $jyear, $jmonth, $jday ) = gregorian_to_jalali($year, $month, $day);
	$lastgmdatep=$jday;
	$jday=$jday2;
	while($jday2!="1")
	{
		if($day<$lastdayen)
		{
			$day++;
			list( $jyear, $jmonth, $jday2 ) = gregorian_to_jalali($year, $month, $day);
			if($jgmdate2=="1") break;
			if($jgmdate2!="1") $lastgmdatep++;
		}
		else
		{ 
			$day=0;
			$month++;
			if($month==13) 
			{
					$month="1";
					$year++;
			}
		}

	}
	return $lastgmdatep-1;
}
function days_of_year($jmonth,$jday,$jyear)
{
	$year="";
	$month="";
	$year="";
	$result="";
	if($jmonth=="01")
		return $jday;
	for ($i=1;$i<$jmonth || $i==12;$i++)
	{
		list( $year, $month, $day ) = jalali_to_gregorian($jyear, $i, "1");
		$result+=lastday($month,$day,$year);
	}
	return $result+$jday;
}
function monthname($month)
{
    if($month=="01") return "&#1601;&#1585;&#1608;&#1585;&#1583;&#1610;&#1606;";
    if($month=="02") return "&#1575;&#1585;&#1583;&#1610;&#1576;&#1607;&#1588;&#1578;";
    if($month=="03") return "&#1582;&#1585;&#1583;&#1575;&#1583;";
    if($month=="04") return  "&#1578;&#1610;&#1585;";
    if($month=="05") return "&#1605;&#1585;&#1583;&#1575;&#1583;";
    if($month=="06") return "&#1588;&#1607;&#1585;&#1610;&#1608;&#1585;";
    if($month=="07") return "&#1605;&#1607;&#1585;";
    if($month=="08") return "&#1570;&#1576;&#1575;&#1606;";
    if($month=="09") return "&#1570;&#1584;&#1585;";
    if($month=="10") return "&#1583;&#1610;";
    if($month=="11") return "&#1576;&#1607;&#1605;&#1606;";
    if($month=="12") return "&#1575;&#1587;&#1601;&#1606;&#1583;";
}
function short_monthname($month)
{
    if($month=="01") return "&#1601;&#1585;&#1608;";
    if($month=="02") return "&#1575;&#1585;&#1583;";
    if($month=="03") return "&#1582;&#1585;&#1583;";
    if($month=="04") return  "&#1578;&#1610;&#1585;";
    if($month=="05") return "&#1605;&#1585;&#1583;";
    if($month=="06") return "&#1588;&#1607;&#1585;";
    if($month=="07") return "&#1605;&#1607;&#1585;";
    if($month=="08") return "&#1570;&#1576;&#1575;";
    if($month=="09") return "&#1570;&#1584;&#1585;";
    if($month=="10") return "&#1583;&#1610;";
    if($month=="11") return "&#1576;&#1607;&#1605;";
    if($month=="12") return "&#1575;&#1587;&#1601; ";
}
function Convertnumber2farsi($srting) 
{
	$num0="&#1776;";
	$num1="&#1777;";
	$num2="&#1778;";
	$num3="&#1779;";
	$num4="&#1780;";
	$num5="&#1781;";
	$num6="&#1782;";
	$num7="&#1783;";
	$num8="&#1784;";
	$num9="&#1785;";
	$stringtemp="";
	$len=strlen($srting);
	for($sub=0;$sub<$len;$sub++)
	{
	 if(substr($srting,$sub,1)=="0")$stringtemp.=$num0;
	 elseif(substr($srting,$sub,1)=="1")$stringtemp.=$num1;
	 elseif(substr($srting,$sub,1)=="2")$stringtemp.=$num2;
	 elseif(substr($srting,$sub,1)=="3")$stringtemp.=$num3;
	 elseif(substr($srting,$sub,1)=="4")$stringtemp.=$num4;
	 elseif(substr($srting,$sub,1)=="5")$stringtemp.=$num5;
	 elseif(substr($srting,$sub,1)=="6")$stringtemp.=$num6;
	 elseif(substr($srting,$sub,1)=="7")$stringtemp.=$num7;
	 elseif(substr($srting,$sub,1)=="8")$stringtemp.=$num8;
	 elseif(substr($srting,$sub,1)=="9")$stringtemp.=$num9;
	 else $stringtemp.=substr($srting,$sub,1);

	}
return   $stringtemp;
}
function is_kabise($year)
{
	if($year%4==0 && $year%100!=0)
		return true;
	return false;
}
function jcheckgmdate($month,$day,$year)
{
	$j_days_in_month = array(31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29);
	if($month<=12 && $month>0)
	{
		if($j_days_in_month[$month-1]>=$day && 	$day>0)
			return 1;
		if(is_kabise($year))
			echo "Asdsd";
		if(is_kabise($year) && $j_days_in_month[$month-1]==31)
			return 1;
	}
	return 0;
}
function jtime()
{
	return @mktime()	;
}
function jgetgmdate($timestamp="")
{
	if($timestamp=="")
		$timestamp=@mktime();
	return array(
		0=>$timestamp,	
		"seconds"=>jgmdate("s",$timestamp),
		"minutes"=>jgmdate("i",$timestamp),
		"hours"=>jgmdate("G",$timestamp),
		"mday"=>jgmdate("j",$timestamp),
		"wday"=>jgmdate("w",$timestamp),
		"mon"=>jgmdate("n",$timestamp),
		"year"=>jgmdate("Y",$timestamp),
		"yday"=>days_of_year(jgmdate("m",$timestamp),jgmdate("d",$timestamp),jgmdate("Y",$timestamp)),
		"weekday"=>jgmdate("l",$timestamp),		
		"month"=>jgmdate("F",$timestamp),
	);
}
function div($a,$b) {
    return (int) ($a / $b);
}
function gregorian_to_jalali ($g_y, $g_m, $g_d) 
{
    $g_days_in_month = array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31); 
    $j_days_in_month = array(31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29);     
   $gy = $g_y-1600; 
   $gm = $g_m-1; 
   $gd = $g_d-1; 
   $g_day_no = 365*$gy+div($gy+3,4)-div($gy+99,100)+div($gy+399,400); 
   for ($i=0; $i < $gm; ++$i) 
      $g_day_no += $g_days_in_month[$i]; 
   if ($gm>1 && (($gy%4==0 && $gy%100!=0) || ($gy%400==0))) 
      $g_day_no++; 
   $g_day_no += $gd; 
   $j_day_no = $g_day_no-79; 
   $j_np = div($j_day_no, 12053);
   $j_day_no = $j_day_no % 12053; 
   $jy = 979+33*$j_np+4*div($j_day_no,1461); 
   $j_day_no %= 1461; 
   if ($j_day_no >= 366) { 
      $jy += div($j_day_no-1, 365); 
      $j_day_no = ($j_day_no-1)%365; 
   } 
   for ($i = 0; $i < 11 && $j_day_no >= $j_days_in_month[$i]; ++$i) 
      $j_day_no -= $j_days_in_month[$i]; 
   $jm = $i+1; 
   $jd = $j_day_no+1; 
   return array($jy, $jm, $jd); 
} 
function jalali_to_gregorian($j_y, $j_m, $j_d) 
{ 
    $g_days_in_month = array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31); 
    $j_days_in_month = array(31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29);
   $jy = $j_y-979; 
   $jm = $j_m-1; 
   $jd = $j_d-1; 
   $j_day_no = 365*$jy + div($jy, 33)*8 + div($jy%33+3, 4); 
   for ($i=0; $i < $jm; ++$i) 
      $j_day_no += $j_days_in_month[$i]; 
   $j_day_no += $jd; 
   $g_day_no = $j_day_no+79; 
   $gy = 1600 + 400*div($g_day_no, 146097); 
   $g_day_no = $g_day_no % 146097; 
   $leap = true; 
   if ($g_day_no >= 36525)
   { 
      $g_day_no--; 
      $gy += 100*div($g_day_no,  36524);
      $g_day_no = $g_day_no % 36524; 

      if ($g_day_no >= 365) 
         $g_day_no++; 
      else 
         $leap = false; 
   } 
   $gy += 4*div($g_day_no, 1461); /* 1461 = 365*4 + 4/4 */ 
   $g_day_no %= 1461; 
   if ($g_day_no >= 366) { 
      $leap = false; 

      $g_day_no--; 
      $gy += div($g_day_no, 365); 
      $g_day_no = $g_day_no % 365; 
   } 
   for ($i = 0; $g_day_no >= $g_days_in_month[$i] + ($i == 1 && $leap); $i++) 
      $g_day_no -= $g_days_in_month[$i] + ($i == 1 && $leap); 
   $gm = $i+1; 
   $gd = $g_day_no+1; 
   return array($gy, $gm, $gd); 
}

function shamsi_date($nyear,$nmoon,$nday)
{
	$reg_day   = jgmdate("d","now");
	$reg_moon  = jgmdate("m","now");
	$reg_year  = jgmdate("y","now");

    $end_year =  jgmdate("y",jmaketime(0,0,0,$reg_moon+$nmoon,$reg_day+$nday,$reg_year+1300+$nyear));
    $end_moon =  jgmdate("m",jmaketime(0,0,0,$reg_moon+$nmoon,$reg_day+$nday,$reg_year+1300+$nyear));	
    $end_day  =  jgmdate("d",jmaketime(0,0,0,$reg_moon+$nmoon,$reg_day+$nday,$reg_year+1300+$nyear));	

//	if ($end_year < 10) $end_year = '0'.$end_year;
//	if ($end_moon < 10) $end_moon = '0'.$end_moon;	
//	if ($end_day < 10)  $end_day  = '0'.$end_day;	
	
    $new_date = "13".$end_year."-". ltrim($end_moon , '0') ."-".ltrim($end_day , '0');

	return $new_date;
}
?>