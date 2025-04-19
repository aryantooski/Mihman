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
<b class="bx">مدیریت کاربران : </b>
<div class="co">
<?PHP
$tblname = 'users';
$pagCo = 20;
$url = 'user_manage';
if (isset($_GET['op']))
{
	switch ($_GET['op'])
	{
		case 'remove' :
			$remsql = $admin->sql("update $tblname set status = 'deleted' where id = '$_GET[id]' limit 1");
			
			if ($remsql)
			{
				$msg = "حذف انجام شد"; echo $admin->msg($msg , "true");
			}
			else
			{
				$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
			}
			
			$admin->LOG('مدیریت کاربران - حذف' , $msg);
		break;
		
		case 'edit' :
			if (!isset($_POST['post']))
			{
				$editsql = $admin->sql("select * from $tblname where (id = '$_GET[id]' and status = 'available') limit 1");
				$editrow = $admin->row($editsql);
				
				echo '
				

				<form method="post" action="" enctype="multipart/form-data" onsubmit="update_permit()">
				<input type="hidden" name="permit" id="permit" value="'.$editrow['permit'].'">
				<input type="hidden" name="post" />
				<table cellpadding="2">
				  <tr>
					<td>نام و نام خانوادگی : </td>
					<td><input type="text" name="name" class="input-t" size="40" value="'.$editrow['name'].'" /></td>
				  </tr>
				  <tr>
					<td>موبایل : </td>
					<td><input type="text" name="mobile" class="input-t" value="'.$editrow['mobile'].'" dir="ltr" /></td>
				  </tr>
				  <tr>
					<td>نام کاربری : </td>
					<td><b>'.$editrow['username'].'</b></td>
				  </tr>
				  <tr>
					<td>رمز عبور جدید : </td>
					<td><input type="text" name="password" class="input-t" dir="ltr" /> در صورت خالی بودن تغییر نخواهد کرد</td>
				  </tr>

				  ';
				  	$perm = array();
					foreach (explode("," , $editrow['permit']) as $k => $v)
					{
						$perm[$v] = ' data-jstree=\'{"selected":true}\' ';
					}

				  ?>
				  <script type="text/javascript">
				    function update_permit()
				    {
				        var items = $('#jstree').jstree('get_selected');
				        var values = items.join();
				        $("#permit").val(values);
				    }
					</script>
				  <tr>
				    <td>دسترسی : </td>
				    <td>

				        <link rel="stylesheet" href="jstree/dist/themes/default/style.min.css" />

				        <div id="jstree">
				            <ul>
				                <li id="10013">مهمانان
				                    <ul>
				                        <li id="141" <?=$perm[141]?>>مهمان جدید</li>
				                        <li id="142" <?=$perm[142]?>>مدیریت مهمان ها</li>
				                        <li id="143" <?=$perm[143]?>>گزارش انسداد ها</li>
				                    </ul>
				                </li>
				                <li id="10002">سانس
				                    <ul>
				                        <li id="21" <?=$perm[21]?>>ایجاد سانس جدید</li>
				                        <li id="22" <?=$perm[22]?>>مدیریت سانس ها</li>
				                        <li id="23" <?=$perm[23]?>آرشیو سانس ها</li>
				                    </ul>
				                </li>
				                <li id="10004">بلیط
				                    <ul>
				                        <li id="41" <?=$perm[41]?>>ثبت بلیط عمومی</li>
				                        <?PHP /*
				                        <li id="42" <?=$perm[42]?>>مرجوع بلیط</li>
				                        <li id="43" <?=$perm[43]?>>ابطال بلیط</li>
				                        <li id="45" <?=$perm[45]?>>ابطال گروهی</li>
				                        */ ?>
				                        <li id="44" <?=$perm[44]?>>مدیریت بلیط ها</li>
				                        <?PHP /*
				                        <li id="46" <?=$perm[46]?>>عملیات گروهی</li>
				                        */ ?>
				                        <li id="47" <?=$perm[47]?>>چاپ گروهی</li>
				                    </ul>
				                </li>
				                <li id="10001">پرسنل
				                    <ul>
				                        <li id="11" <?=$perm[11]?>>پرسنل جدید</li>
				                        <li id="12" <?=$perm[12]?>>مدیریت پرسنل</li>
				                        <li id="13" <?=$perm[13]?>>ثبت ساعت حضور</li>
				                        <li id="14" <?=$perm[14]?>>مدیریت ساعت</li>
				                        <li id="15" <?=$perm[15]?>>بروزرسانی</li>
				                        <li id="16" <?=$perm[16]?>>گروه حقوق جدید</li>
				                        <li id="17" <?=$perm[17]?>>مدیریت گروه حقوق</li>
				                        <li id="18" <?=$perm[18]?>>ثبت کسر/اضافه</li>
				                        <li id="19" <?=$perm[19]?>>مدیریت کسر/اضافه</li>
				                        <li id="111" <?=$perm[111]?>>برنامه نجات جدید</li>
				                        <li id="112" <?=$perm[112]?>>مدیریت برنامه ناجیها</li>
				                    </ul>
				                </li>
				                <li id="10005">کاربران
				                    <ul>
				                        <li id="51" <?=$perm[51]?>>کاربر جدید</li>
				                        <li id="52" <?=$perm[52]?>>مدیریت کاربران</li>
				                        <li id="53" <?=$perm[53]?>>پیغام جدید</li>
				                        <li id="54" <?=$perm[54]?>>مدیریت پیغامها</li>
				                    </ul>
				                </li>
				                <li id="10006">بخش
				                    <ul>
				                        <li id="121" <?=$perm[121]?>>بخش جدید</li>
				                        <li id="122" <?=$perm[122]?>>مدیریت بخش ها</li>
				                        <li id="123" <?=$perm[123]?>>گزارش بخش</li>
				                    </ul>
				                </li>
				                <li id="10007">تگ
				                    <ul>
				                        <li id="131" <?=$perm[131]?>>تگ جدید</li>
				                        <li id="132" <?=$perm[132]?>>مدیریت تگ</li>
				                        <li id="133" <?=$perm[133]?>>گروه تگ جدید</li>
				                        <li id="134" <?=$perm[134]?>>مدیریت گروه تگها</li>
				                        <li id="135" <?=$perm[135]?>>گزارش تگ</li>
				                    </ul>
				                </li>
				                <li id="10014">گیفت کارت
				                    <ul>
				                        <li id="114" <?=$perm[114]?>>کوپن جدید</li>
				                        <li id="115" <?=$perm[115]?>>مدیریت گیفت کارتها</li>
				                    </ul>
				                </li>
				                <li id="10015">کمد
				                    <ul>
				                        <li id="116" <?=$perm[116]?>>درج کمد جدید</li>
				                        <li id="117" <?=$perm[117]?>>مدیریت کمدها</li>
				                    </ul>
				                </li>
				                <li id="10009">گزارشات
				                    <ul>
				                        <li id="71" <?=$perm[71]?>>گزارش بلیط ها</li>
				                        <li id="72" <?=$perm[72]?>>ورود و خروج پرسنل</li>
				                        <li id="73" <?=$perm[73]?>>گزارش هزینه ها</li>
				                        <li id="74" <?=$perm[74]?>>سالن</li>
				                        <?PHP /*<li id="75" <?=$perm[75]?>>قرارداد</li>*/ ?>
				                        <li id="76" <?=$perm[76]?>>حسابهای بانکی</li>
				                        <li id="77" <?=$perm[77]?>>گزارش واریز وجه</li>
				                        <li id="78" <?=$perm[78]?>>گزارش فیش حقوقی</li>
				                    </ul>
				                </li>
				            
				                <li id="10003">سالن
				                    <ul>
				                        <li id="31" <?=$perm[31]?>>کلاس جدید</li>
				                        <li id="32" <?=$perm[32]?>>مدیریت کلاس ها</li>
				                        <li id="33" <?=$perm[33]?>>صدور کارت سالن جدید</li>
				                        <li id="34" <?=$perm[34]?>>مدیریت کارت های سالن</li>
				                    </ul>
				                </li>
				                <li id="10008">مالی
				                    <ul>
				                        <li id="61" <?=$perm[61]?>>گروه هزینه جدید</li>
				                        <li id="62" <?=$perm[62]?>>مدیریت گروه هزینه ها</li>
				                        <li id="63" <?=$perm[63]?>>ثبت هزینه جدید</li>
				                        <li id="64" <?=$perm[64]?>>مدیریت هزینه ها</li>
				                        <li id="65" <?=$perm[65]?>>گزارشات</li>
				                        <li id="66" <?=$perm[66]?>>دریافت کارت سالن جدید</li>
				                        <li id="69" <?=$perm[69]?>>دریافت قرارداد جدید</li>
				                        <li id="67" <?=$perm[67]?>>مدیریت دریافتهای قرارداد</li>
				                        <li id="68" <?=$perm[68]?>>مدیریت دریافتهای کارت سالن</li>
				                    </ul>
				                </li>
				                <li id="10010">قرارداد
				                    <ul>
				                        <li id="81" <?=$perm[81]?>>قرارداد جدید</li>
				                        <li id="82" <?=$perm[82]?>>مدیریت قراردادها</li>
				                    </ul>
				                </li>
				                <li id="10011">حسابهای بانکی
				                    <ul>
				                        <li id="91" <?=$perm[91]?>>حساب جدید</li>
				                        <li id="92" <?=$perm[92]?>>مدیریت حسابها</li>
				                        <li id="93" <?=$perm[93]?>>انتقال وجه</li>
				                        <li id="94" <?=$perm[94]?>>واریز وجه</li>
				                    </ul>
				                </li>
				                <li id="10012">طرف حساب
				                    <ul>
				                        <li id="101" <?=$perm[101]?>>طرف حساب جدید</li>
				                        <li id="102" <?=$perm[102]?>>مدیریت طرف حسابها</li>
				                    </ul>
				                </li>
				                <li id="10016">تنظیمات
				                    <ul>
				                        <li id="120" <?=$perm[120]?>>پشتیبان گیری</li>
				                        <li id="150" <?=$perm[150]?>>تنظیمات عمومی</li>
				                    </ul>
                				</li>
				                
				            </ul>
				        </div>

				        <script src="jstree/dist/libs/jquery.js"></script>
				        <script src="jstree/dist/jstree.min.js"></script>
				        <script>
				            $(function () {
				                $('#jstree').jstree({
				                    "plugins" : [ "checkbox" ]
				                });

				            });
				        </script>

				    </td>
				  </tr>
				  <?PHP
				  echo '
				  <tr>
					<td>پیام خصوصی : </td>
					<td><textarea name="msg" class="input-s" style="width:500px; height:200px;">'.$editrow['msg'].'</textarea></td>
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
				$permit = $_POST['permit'];
				/*
				foreach ($_POST['permit'] as $k => $v)
				{
					$permit .= $v.',';
				}
				
				$permit = substr($permit , 0 , strlen($permit) - 1);
				*/

				$updsql = $admin->sql("update $tblname set name = '$_POST[name]' , mobile = '$_POST[mobile]' , permit = '$permit' , msg = '$_POST[msg]' where id = '$_GET[id]' limit 1");
				
				if (!empty($_POST['password']))
				{
					$admin->sql("update $tblname set password = '".sha1($_POST['password'])."' where id = '$_GET[id]' limit 1");
				}
				
				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				
				$admin->LOG('مدیریت کاربران - ویرایش' , $msg);
			}
		break;
	}
}

?>
<center>
<form method="post" action="">
جستجو بر اساس نام و نام خانوادگی / نام کاربری : <input type="text" name="search" class="input-t" size="45" /> <input type="submit" value="جستجو" class="input-b" style="text-align:center" />
</form>
</center>
<br /><br />
<table border="1" cellpadding="2" style="text-align:right" bordercolor="#FFFFFF" width="100%" class="managetable">
  <tr bgcolor="#cccccc" height="30">
    <td width="40" align="center">#</td>
    <td align="center">نام و نام خانوادگی</td>
    <td align="center">نام کاربری</td>
    <td align="center">آخرین ورود</td>
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
	$sql = $admin->sql("select * from $tblname where(username like '%$_POST[search]%' or name like '%$_POST[search]%' and status = 'available')");
}
else
{
	$sql = $admin->sql("select * from $tblname where(status = 'available') order by id asc limit $start,$pagCo");
}


$exec = '';
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
	<td align="center">'.$row['name'].'</td>
	<td align="center">'.$row['username'].'</td>
	<td align="center" dir="ltr">'.$row['lastlogin'].'</td>
	'; if (SUID == 0) { echo '<td align="center">'; if ($row['suid'] == 0) {echo '<span style="color:blue">مدیر</span>';} else {echo $admin->result($admin->sql("select name from users where id = '$row[suid]'") , 0);} echo '</td>'; } echo '
    <td align="center">
	<a href="index.php?do=log&userid='.$row['id'].'"><img src="images/panel.png" border="0" align="texttop" alt="مشاهده لاگ" title="مشاهده لاگ"></a> &nbsp;&nbsp;&nbsp;
	<a href="index.php?do='.$url.'&op=edit&id='.$row['id'].'"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;&nbsp;&nbsp;
	<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do='.$url.'&op=remove&id='.$row['id'].'"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a>
	</td>
  </tr>
	';
	
	$x++;
}

if (mysqli_num_rows($sql) == 0)
	echo '<tr><td style="background-color:white; border:1px solid red; height:45px; text-align:center; color:red; " colspan=6>متاسفانه نتیجه ای یافت نشد</td></tr>';


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
