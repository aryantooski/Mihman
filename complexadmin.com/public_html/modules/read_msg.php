<?PHP
require_once("header.php");
require_once("menu.php");

?>
    </td>
  </tr>
  <tr>
    <td valign="top">
<div class="text-cont">
<?PHP
if (isset($_GET['op']))
{
	switch ($_GET['op'])
	{
		case 'add' :
			if (isset($_POST['post']))
			{
				$date = $admin->true_time();
				$sql = $admin->sql("insert into msgs_fromusers (suid , text , time , recieve_id , read_msg) values('".SUID."' , '$_POST[text]' , '$date' , '$_POST[recieve_id]' , '1')");
				
				if  ($sql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				
				$admin->LOG('پیغام گروهی جدید برای کاربران' , $msg);
			}
			?>

			<div class="add-in">
				<b class="bx">پیغام جدید : </b>
				<div class="co">
					<form method="post" action="" enctype="multipart/form-data">
						<input type="hidden" name="post" />
						<table cellpadding="2">
						  <tr>
						    <td>متن : </td>
						    <td><textarea name="text" class="input-s" style="width:500px; height:200px;"></textarea></td>
						  </tr>
						  <tr>
						    <td>گیرنده : </td>
						    <td><select name="recieve_id" id="recieve_id" style="padding: 5px 10px;margin:20px 0"><option value="">انتخاب کنید</option>
						    	<option value="0">مدیرکل</option>
						    	<?PHP
						    	$s = $admin->sql("select * from users");
						    	while ($r = $admin->row($s))
								{
						    		echo '<option value="'.$r['id'].'" data-id="'.$r['id'].'">'.$r['username'].'</option>';
						    	}

						    	 ?>

						    </select></td>
						  </tr>
						  <tr>
						    <td>&nbsp;</td>
						    <td><input type="submit" value="تایید" class="input-b" /></td>
						  </tr>
						</table>
					</form>
				</div>
			</div>
			
		    <?PHP

		break;

		case 'reply' :

			$item_s = $admin->sql("select * from msgs_fromusers where id = '".intval($_GET['id'])."' ");
			$item = $admin->row($item_s);

			if ($item['recieve_id'] == $_SESSION['data']['id'] or $item['user_id'] == $_SESSION['data']['id'])
			{
				if (isset($_POST['post']))
				{
					$sql = $admin->sql("update msgs_fromusers set answer = '$_POST[text]' where (id = '".intval($_GET['id'])."') limit 1 ");
					
					if  ($sql)
					{
						$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
					}
					else
					{
						$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
					}
					
					$admin->LOG('پیغام گروهی جدید برای کاربران' , $msg);
				}
				else
				{
					?>

					<div class="add-in">
						<b class="bx">پاسخ به پیغام #<?=$_GET['id']?> : </b>
						<div class="co">
							<form method="post" action="" enctype="multipart/form-data">
								<input type="hidden" name="post" />
								<table cellpadding="2">
								<tr>
								    <td width="60">پیغام : </td>
								    <td><?=nl2br(@$admin->result($admin->sql("select text from msgs_fromusers where id = '".intval($_GET['id'])."'") , 0))?></td>
								  </tr>

								  <tr>
								    <td>متن : </td>
								    <td><textarea name="text" class="input-s" style="width:500px; height:200px;"><?=nl2br(@$admin->result($admin->sql("select answer from msgs_fromusers where id = '".intval($_GET['id'])."'") , 0))?></textarea></td>
								  </tr>
								  
								  <tr>
								    <td>&nbsp;</td>
								    <td><input type="submit" value="ارسال پاسخ" class="input-b" /></td>
								  </tr>
								</table>
							</form>
						</div>
					</div>
					
				    <?PHP
				}
			}
			else
			{
				$msg = "این پیغام مربوط به شما نیست"; echo $admin->msg($msg , "critical");
			}
		break;
	}
	
}
?>




<div class="add-in">
<b class="bx">پیامهای دریافتی و ارسالی : </b>
<div class="co">
<?PHP
$tblname = 'msgs_fromusers';
$pagCo = 20;
$url = 'read_msg';

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
			
			$admin->LOG('مدیریت کلاس ها - حذف' , $msg);
		break;
	}
}



?>
<a href="index.php?do=read_msg&op=add" class="input-b">پیغام جدید</a><br><br>

<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center">#</td>
    <td align="center">فرستنده</td>
    <td align="center">گیرنده</td>
    <td align="center">متن</td>
    <td align="center">زمان</td>
    <td align="center">پاسخ</td>
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


	
$sql = $admin->sql("select * from $tblname where (recieve_id = '".$_SESSION['data']['id']."' or user_id = '".$_SESSION['data']['id']."') order by id desc limit $start,$pagCo");

if(count($sql)){

	$x = 1;
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
	<td align="right">'.($row['user_id'] == 0 ? 'مدیر' : @$admin->result($admin->sql("select name from users where id = '".$row['user_id']."'") , 0)).'</td>
	<td align="right">'.($row['recieve_id'] == 0 ? 'مدیر' : @$admin->result($admin->sql("select name from users where id = '".$row['recieve_id']."'") , 0)).'</td>
	<td align="right">'.nl2br($row['text']).'</td>
	<td align="center" dir="ltr">'.$row['time'].'</td>
	<td align="right">'.(empty($row['answer']) ? '<span style="color:gray">بدون پاسخ</span>' : nl2br($row['answer'])).'</td>
    <td align="center">
	';

	
	if ($row['recieve_id'] == $_SESSION['data']['id'])
	{
		if ((empty($row['answer']) and $row['recieve_id'] > 0) or $_SESSION['data']['id'] == 0)
		{
			echo '<a href="index.php?do=read_msg&op=reply&id='.$row['id'].'"><img src="images/reply.png" border="0" align="texttop" alt="پاسخ" title="پاسخ"> پاسخ</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
		}
		
	}

	echo '
	<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do='.$url.'&op=remove&id='.$row['id'].'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
	</td>
  </tr>
	';
	
	$x++;
}
?>
</table>
<br />

<?PHP
$sql = $admin->sql("select * from $tblname where (recieve_id = '0' or user_id = '0')");
$count_rows = mysqli_num_rows($sql);
$ret = '';
if ($count_rows >= $pagCo)
{
	$nums = $count_rows / $pagCo;
	$ceil = ceil($nums);
	
	$start = 0;
	for ($x = 1 ; $x <= $ceil; $x++)
	{
		$ret .= '<a href="index.php?do='.$url.'&start='.$start.'">'.$x.'</a>&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;';
		$start = $x * $pagCo;
	}
}
else
{
	$ret = '<b>1</b>';
}
	echo '<br><br> صفحات :  &nbsp;&nbsp;'.$ret;
}

?>



</div>
</div>
    </td>
  </tr>
</table>
