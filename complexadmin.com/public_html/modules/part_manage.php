<?PHP
require_once("header.php");
require_once("menu.php");
?>
    </td>
  </tr>
  <tr>
    <td valign="top">
<div class="text-cont">

<div class="add-in">
<b class="bx">مدیریت بخش ها : </b>
<div class="co">
<?PHP
$tblname = 'part';
$pagCo = 20;
$url = 'part_manage';
if (isset($_GET['op']))
{
	switch ($_GET['op'])
	{
		case 'remove' :
			$remsql = $admin->sql("delete from $tblname where id = '$_GET[id]' limit 1");
			
			if ($remsql)
			{
				$msg = "حذف انجام شد"; echo $admin->msg($msg , "true");
			}
			else
			{
				$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
			}
			$admin->LOG('مدیریت بخش ها - حذف ' , $msg);
		break;
		
		case 'edit' :
			if (!isset($_POST['post']))
			{
				$editsql = $admin->sql("select * from $tblname where id = '$_GET[id]' limit 1");
				$editrow = $admin->row($editsql);
				
				echo '
				
<script type="text/javascript">
  function check_price()
  {
    if ($("#type").val() == \'\' || $("#type").val() == \'پرسنل آقا\' || $("#type").val() == \'پرسنل خانم\')
    {
      $("#price").attr(\'readonly\' , \'readonly\');
      $("#price").val(\'0\');
    }
    else
    {
      $("#price").removeAttr(\'readonly\');
      $("#price").val(\'\');
    }
  }
</script>

				<form method="post" action="" enctype="multipart/form-data">
				<input type="hidden" name="post" />
				
				<table cellpadding="2">
				  <tr>
				    <td>نام بخش : </td>
				    <td><input type="text" name="name" class="input-t" size="40" required value="'.$editrow['name'].'"></td>
				  </tr>
					<tr>
					    <td><label><input type="checkbox" '.($editrow['mens_check'] == 'on' ? 'checked=checked' : '').' name="mens_check">آقا : </label></td>
					    <td>قیمت ورودی : <input type="text" name="mens_amount" class="input-t" dir="ltr" onkeydown="return ( event.ctrlKey || event.altKey 
					                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
					                    || (95<event.keyCode && event.keyCode<106)
					                    || (event.keyCode==8) || (event.keyCode==9) 
					                    || (event.keyCode>34 && event.keyCode<40) 
					                    || (event.keyCode==46) )" value="'.$editrow['mens_amount'].'" '.NUMERAL.'> تومان</td>
					  </tr>
					  
					  <tr>
					    <td><label><input type="checkbox" '.($editrow['womens_check'] == 'on' ? 'checked=checked' : '').' name="womens_check">خانم : </label></td>
					    <td>قیمت ورودی : <input type="text" name="womens_amount" class="input-t" dir="ltr" onkeydown="return ( event.ctrlKey || event.altKey 
					                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
					                    || (95<event.keyCode && event.keyCode<106)
					                    || (event.keyCode==8) || (event.keyCode==9) 
					                    || (event.keyCode>34 && event.keyCode<40) 
					                    || (event.keyCode==46) )" value="'.$editrow['womens_amount'].'" '.NUMERAL.'> تومان</td>
					  </tr>
					  
					  <tr>
					    <td><label><input type="checkbox" '.($editrow['mens_personel_check'] == 'on' ? 'checked=checked' : '').' name="mens_personel_check">پرسنل آقا </label></td>
					    <td>&nbsp;</td>
					  </tr>
					  
					  <tr>
					    <td><label><input type="checkbox" '.($editrow['womens_personel_check'] == 'on' ? 'checked=checked' : '').' name="womens_personel_check">پرسنل خانم </label></td>
					    <td>&nbsp;</td>
					  </tr>
  


				  <tr>
				    <td>توضیحات : </td>
				    <td><textarea name="description" class="input-s"  style="width:300px;">'.$editrow['description'].'</textarea></td>
				  </tr>


					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>



					<tr>
						<td>&nbsp;</td>
						<td><label><input type="checkbox" name="only_admin" '.($editrow['only_admin'] == 'on' ? 'checked=checked' : '').'>اجازه ثبت فقط توسط مدیر </label></td>
					</tr>



					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>


				  	<script src="inputmask/dist/inputmask/inputmask.js"></script>
					<script src="inputmask/dist/inputmask/inputmask.extensions.js"></script>
					<script src="inputmask/dist/inputmask/inputmask.numeric.extensions.js"></script>
					<script src="inputmask/dist/inputmask/inputmask.date.extensions.js"></script>
					<script src="inputmask/dist/inputmask/inputmask.phone.extensions.js"></script>
					<script src="inputmask/dist/inputmask/jquery.inputmask.js"></script>
					'; 
					$cip = $admin->result($admin->sql("select count(*) as cnt from part_ip where (table_name = 'part' and part_id = '$editrow[id]' ) ") , 0) + 2;
					?>
					<script type="text/javascript">
						$(document).ready(function(){
							$(".mask-ip").inputmask("ip");
						});
						var cip = <?=$cip?>;
						function append_ip()
						{
							$('.tbl-ip-port').append('<tr class="tr_'+cip+'"><td><input type="text" name="port_'+cip+'" class="mask-port" tabindex="'+cip+'2" dir="ltr" size="10"></td><td><input type="text" name="ip_'+cip+'" class="mask-ip" tabindex="'+cip+'1" dir="ltr" size="30"></td><td><select name="type_'+cip+'" class="input-s" tabindex="'+cip+'3"><option value="">انتخاب کنید</option><option value="income">ورودی</option><option value="output">خروجی</option></select></td><td><a href="javascript:void(0)" onclick="$(\'.tr_'+cip+'\').remove();"><img src="images/deactive.png"></a></td></tr>');
							cip++;
							$(".mask-ip").inputmask("ip");
							$("#cip").val(cip);
						}
					</script>
					<tr>
						<td>آی پی : </td>
						<td>
							<input type="hidden" name="cip" value="<?=$cip?>" id="cip">
							<table cellpadding="3" style="text-align: center;" class="tbl-ip-port">
								<tr style="background: #333; color: white;">
									<td>PORT</td>
									<td>IP</td>
									<td>نوع</td>
									<td style="background: white;"><a href="javascript:void(0)" onclick="append_ip()"><img src="images/add.png"></a></td>
								</tr>
								<?PHP
								$c = 1;

								$part_ips = $admin->sql("select * from part_ip where (table_name = 'part' and part_id = '$editrow[id]' )");
								while ($partip = $admin->row($part_ips))
								{
									unset($sxq);
									$sxq[$partip['type']] = 'selected=selected';

									echo '
									<tr class="trx_'.$partip['id'].'">
										<td><input type="text" name="port_'.$c.'" tabindex="'.$c.'2" class="mask-port" dir="ltr" size="10" value="'.$partip['port'].'"></td>
										<td><input type="text" name="ip_'.$c.'" tabindex="'.$c.'1" class="mask-ip" dir="ltr" size="30" value="'.$partip['ip'].'"></td>
										<td><select name="type_'.$c.'" tabindex="'.$c.'3" class="input-s"><option value="">انتخاب کنید</option><option value="income" '.$sxq['income'].'>ورودی</option><option value="output" '.$sxq['output'].'>خروجی</option></select></td>
										<td><a href="javascript:void(0)" onclick="$(\'.trx_'.$partip['id'].'\').remove();"><img src="images/deactive.png"></a></td>
									</tr>
									';
									$c++;
								}
								?>
								<tr>
									<td><input type="text" name="port_<?=$c?>" tabindex="<?=$c?>2" class="mask-port" dir="ltr" size="10"></td>
									<td><input type="text" name="ip_<?=$c?>" tabindex="<?=$c?>1" class="mask-ip" dir="ltr" size="30"></td>
									<td><select name="type_<?=$c?>" tabindex="<?=$c?>3" class="input-s"><option value="">انتخاب کنید</option><option value="income">ورودی</option><option value="output">خروجی</option></select></td>
									<td>&nbsp;</td>
								</tr>
								
							</table>


						</td>
					</tr>

					<?PHP
					echo '


					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>


				  <tr>
					<td>&nbsp;</td>
					<td><input type="submit" value="تایید" class="input-b" /></td>
				  </tr>
				</table>
				
				</form>
				<div style="border:1px solid #e1e1e1; margin-top:20px; margin-bottom:20px;"></div>
				';
			}
			else
			{
				$_POST['mens_amount'] = str_replace(',', '', $_POST['mens_amount']);
				$_POST['womens_amount'] = str_replace(',', '', $_POST['womens_amount']);

				$updsql = $admin->sql("update $tblname set suid = '".SUID."' , name = '$_POST[name]' , mens_check = '$_POST[mens_check]' , womens_check = '$_POST[womens_check]' , mens_personel_check = '$_POST[mens_personel_check]' , womens_personel_check = '$_POST[womens_personel_check]' , mens_amount = '$_POST[mens_amount]' , womens_amount = '$_POST[womens_amount]' , income_ip = '$_POST[income_ip]' , income_port = '$_POST[income_port]' , output_ip = '$_POST[output_ip]' , output_port = '$_POST[output_port]' , description = '$_POST[description]' , only_admin = '$_POST[only_admin]' where id = '$_GET[id]' limit 1");


				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");

					$admin->sql("delete from part_ip where (table_name = 'part' and part_id = '$_GET[id]') ");

					$part_id = $_GET[id];

					if ($_POST['cip'] > 0)
					{
						for ($i = 1 ; $i <= $_POST['cip'] ; $i++)
						{
							if (!empty($_POST['ip_'.$i]) and substr($_POST['ip_'.$i] , 0 , 1) != '_')
							{
								if (empty($_POST['type_'.$i]))
									$_POST['type_'.$i] = 'income';
								
								$admin->sql("insert into part_ip set table_name = 'part' , part_id = '$part_id' , ip = '".$_POST['ip_'.$i]."' , port = '".$_POST['port_'.$i]."' , type = '".$_POST['type_'.$i]."' ");
							}
							
						}
					}

				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				$admin->LOG('مدیریت بخش ها - ویرایش ' , $msg);
			}
		break;
	}
}


?>
<center>
<form method="post" action="">
جستجو بر اساس نام بخش : <input type="text" name="search" class="input-t" size="45" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
</form>
</center>
<br /><br />
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center"><a href="index.php?do=<?=$url?>&sort=id&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">#</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=name&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">نام بخش</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=income_ip&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">گیت های ورودی</a></td>
    <td align="center"><a href="index.php?do=<?=$url?>&sort=output_ip&type=<?=(isset($_GET['type']) ? ($_GET['type'] == 'asc' ? 'desc' : 'asc') : 'asc' )?>">گیت های خروجی</a></td>
    <td align="center"><img src="images/1.png"></td>
    <td align="center"><img src="images/2.png"></td>
    <td align="center"><img src="images/3.png"></td>
    <td align="center"><img src="images/4.png"></td>
    <td align="center">اجازه ثبت</td>
    <?PHP if (SUID == 0) echo '<td width="80" align="center">کاربر</td>'; ?>
    <td width="120" align="center">ابزار</td>
  </tr>
<?PHP

if (isset($_GET['start']))
{
	$start = $_GET['start'];
}
else
{
	$start = 0;
}


if (isset($_POST['search']) and !empty($_POST['search']))
{
	$sql = $admin->sql("select * from $tblname where(name like '%$_POST[search]%')");
}
else
{
	if (isset($_GET['sort']))
	{
		$sql = $admin->sql("select * from $tblname order by CAST($_GET[sort] AS UNSIGNED INTEGER) $_GET[type] limit $start,$pagCo");
	}
	else
	{
		$sql = $admin->sql("select * from $tblname order by id desc limit $start,$pagCo");
	}
}


$exec = '';
$x = 1;

$now = substr($admin->true_time() , 0 , 10);
$type = array('مهمان آقا' => '1' , 'مهمان خانم' => '2' , 'پرسنل آقا' => '3' , 'پرسنل خانم' => '4');
while ($row = $admin->row($sql))
{
	
	if ($x % 2 == 1)
	{
		$color = '#eeeeee';
	}
	else
	{
		$color = '#e1e1e1';
	}
	
	
	echo '
  <tr height="25" bgcolor="'.$color.'" class="tblrow">
    <td bgcolor="#d1d1d1" align="center">'.$row['id'].'</td>
	<td align="center">'.$row['name'].'</td>
	<td align="center">'.$admin->ip_list('income' , $tblname , $row).'</td>
	<td align="center">'.$admin->ip_list('output' , $tblname , $row).'</td>
	<td align="center">'.($row['mens_check'] == 'on' ? number_format($row['mens_amount']).' تومان' : '<img src="images/no.jpg">').'</td>
	<td align="center">'.($row['womens_check'] == 'on' ? number_format($row['womens_amount']).' تومان' : '<img src="images/no.jpg">').'</td>
	<td align="center">'.($row['mens_personel_check'] == 'on' ? '<img src="images/yes.jpg">' : '<img src="images/no.jpg">').'</td>
	<td align="center">'.($row['womens_personel_check'] == 'on' ? '<img src="images/yes.jpg">' : '<img src="images/no.jpg">').'</td>
	<td align="center">'.($row['only_admin'] == 'on' ? 'فقط مدیر' : 'همه کاربران').'</td>
	
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="center">'.$admin->description($row , $tblname).'&nbsp;&nbsp;
	<a href="index.php?do='.$url.'&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;
	<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do='.$url.'&op=remove&id='.$row['id'].'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
	</td>
  </tr>
	';
	
	$x++;
}

if (mysqli_num_rows($sql) == 0)
	echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=15>متاسفانه نتیجه ای یافت نشد</td></tr>';


?>
</table>
<br />
<div class="pagination">
<?PHP
$current = $start;
if (!isset($_POST['search']))
{
	$sql = $admin->sql("select * from $tblname");
	$count_rows = mysqli_num_rows($sql);
	$ret = '';
	if ($count_rows >= $pagCo)
	{
		$nums = $count_rows / $pagCo;
		$ceil = ceil($nums);
		
		$start = 0;
		for ($x = 1 ; $x <= $ceil; $x++)
		{
			if ($current == $start)
				$theme = 'style="color:red; font-weight:bold;"';
			else
				$theme = '';
			
			$ret .= '<a href="index.php?do='.$url.'&start='.$start.'" '.$theme.'>'.$x.'</a>';
			$start = $x * $pagCo;
		}
		
		echo '<br><br><div style="float:right"> صفحات :  &nbsp;&nbsp;&nbsp; </div>'.$ret;
	}
}

?>
<div class="cls"></div>
</div>


</div>
</div>
</div>
    </td>
  </tr>
</table>
