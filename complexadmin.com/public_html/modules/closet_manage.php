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
<b class="bx">مدیریت کمد ها : </b>
<div class="co">
<?PHP
$tblname = 'closet';
$pagCo = 20;
$url = 'closet_manage';
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
			$admin->LOG('مدیریت گروه تگ ها - حذف ' , $msg);
		break;
		
		case 'edit' :
			if (!isset($_POST['post']))
			{
				$editsql = $admin->sql("select * from $tblname where id = '$_GET[id]' limit 1");
				$editrow = $admin->row($editsql);

				echo '
				


				<form method="post" action="" enctype="multipart/form-data" onsubmit="return validate()">
				<input type="hidden" name="post" />
				
				<table cellpadding="2">
				  <tr>
				    <td>گروه کمد ها : </td>
				    <td><input type="text" name="category_name" class="input-t" value="'.$editrow['category_name'].'"></td>
				  </tr>
				  <tr>
				    <td>قیمت : </td>
				    <td><input type="text" name="price" dir="ltr" class="input-t" value="'.$editrow['price'].'"> تومان</td>
				  </tr>
				  <tr>
				    <td>شماره کمد : </td>
				    <td><input type="text" name="name" class="input-t" dir="ltr" value="'.$editrow['name'].'"></td>
				  </tr>

				  <tr>
				    <td>توضیحات : </td>
				    <td><textarea name="description" class="input-s" style="width:300px;">'.$editrow['description'].'</textarea></td>
				  </tr>

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
				$editsql = $admin->sql("select * from $tblname where id = '$_GET[id]' limit 1");
				$editrow = $admin->row($editsql);

				
				$updsql = $admin->sql("update $tblname set suid = '".SUID."' , category_name = '$_POST[category_name]' , name = '$_POST[name]' , description = '$_POST[description]' , status = 'فعال' , price = '$_POST[price]' where id = '$_GET[id]' limit 1");
				if ($updsql)
				{
					$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
				}
				else
				{
					$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
				}
				
				$admin->LOG('مدیریت گیفت کارت ها - ویرایش ' , $msg);
			}
		break;

		case 'update' :
			$status['active'] = 'فعال';
			$status['damaged'] = 'معیوب';
			$status['inuse'] = 'در حال استفاده';

			$sql = $admin->sql("select * from closet ");
			while ($row = $admin->row($sql))
			{
				if (isset($_POST[$row['id']]) and $_POST[$row['id']] == 'on')
				{
					switch ($_POST['selected'])
					{
						case 'active':
						case 'damaged':
						case 'inuse':
							$admin->sql("update closet set status = '".$status[$_POST['selected']]."' where (id = '$row[id]') limit 1");
						break;
						
						case 'delete':
							$admin->sql("delete from closet where (id = '$row[id]') limit 1");
						break;
						
					}
				}
			}
			$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");

			$admin->LOG('مدیریت کمد ها - تغییر وضعیت گروهی ' , $msg);
		break;
	}
}


?>

<form method="post" action="index.php?do=closet_manage&op=update">
<?PHP
$status['فعال'] = 'active';
$status['معیوب'] = 'damaged';
$status['در حال استفاده'] = 'inuse';

$category_names = $admin->sql("select distinct(category_name) as cname from closet");
while ($cname = $admin->row($category_names))
{
	?>
	<div class="closet-cname"><?=$cname['cname']?></div>
	
	<?PHP

	$sql = $admin->sql("select * from closet where (category_name = '$cname[cname]') order by CAST(closet.name as unsigned)");
	while ($row = $admin->row($sql))
	{
		?>
		<div class="closet closet-<?=$status[$row['status']]?>">
			<table style="width: 100%;">
				<tr>
					<td class="t"><label><input type="checkbox" name="<?=$row['id']?>"> <?=$row['name']?></label></td>
				</tr>
				<tr>
					<td style="height: 51px;"><?=$row['status']?><br><?=number_format($row['price'])?> ت</td>
				</tr>
				<tr>
					<td>
						<?=$admin->description($row , 'closet')?> &nbsp;
						<a href="index.php?do=<?=$url?>&op=edit&id=<?=$row['id']?>"><img src="images/edit.png" border="0" align="texttop" alt="ویرایش" title="ویرایش"></a> &nbsp;
						<a onclick="return confirm(\'آیا اطمینان دارید ؟ \')" href="index.php?do=<?=$url?>&op=remove&id=<?=$row['id']?>"><img src="images/critical.gif" border="0" alt="حذف" title="حذف" align="texttop"></a></td>
				</tr>
			</table>
		</div>

		<?PHP
	}
	?>
	<div class="cls"></div>
	<br><br>
	<?PHP
}



?>

انتخاب شده ها : 
<select name="selected" class="input-s">
	<option value="">انتخاب کنید</option>
	<option value="active">تغییر وضعیت به فعال</option>
	<option value="damaged">تغییر وضعیت به معیوب</option>
	<option value="inuse">تغییر وضعیت به در حال استفاده</option>
	<option value="delete">حذف</option>
</select> <input type="submit" value="انجام" class="input-b">
</form>

</div>
</div>
</div>
    </td>
  </tr>
</table>
