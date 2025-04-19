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
if (isset($_POST['post']))
{
	if ($admin->result($admin->sql("select count(*) from card where code = '$_POST[code]'") , 0) == 0)
	{
		$_POST['amount'] = $_POST['post'];
		$remained = str_replace("," , "" , $_POST['amount']) - str_replace("," , "" , $_POST['discount']);
		
		$sql = $admin->sql("insert into card (suid , class_id , name , amount , discount , remained , description , code) values('".SUID."' , '$_POST[class_id]' , '$_POST[name]' , '".str_replace("," , "" , $_POST['amount'])."' , '".str_replace("," , "" , $_POST['discount'])."' , '$remained' , '$_POST[description]' , '$_POST[code]')");
		if  ($sql)
		{
			$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
		}
		else
		{
			$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
		}
	}
	else
	{
		$msg = "کد کارت تکراری است"; echo $admin->msg($msg , "critical");
	}
	
	$admin->LOG('کارت سالن جدید' , $msg);
}
?>
<div class="add-in">
<b class="bx">کارت سالن جدید : </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" id="post" />
<script language="javascript" src="inc/jquery.min.js"></script>
<script language="javascript">
function update()
{
	$.ajax({
		url:"core.php",
		data:"class_id="+$("#class_id").val(),
		type:"POST",
		success: function(data){
			$("#amount").val(data);
			$("#post").val(data);
			checkComma(document.getElementById('amount'));
		}
	});
}

function disc()
{
	a = $("#post").val();
	d = $("#discount").val();
	
	a = a.replace(',' , '');
	a = a.replace(',' , '');
	a = a.replace(',' , '');

	d = d.replace(',' , '');
	d = d.replace(',' , '');
	d = d.replace(',' , '');

	
	$("#remained").val(a - d);
	checkComma(document.getElementById('remained'));
	return false;
}
</script>
<table cellpadding="2">
  <tr>
    <td>سالن : </td>
    <td>
    <select name="class_id" id="class_id" class="input-s" onchange="update()">
    <option value="">انتخاب کنید</option>
    <?PHP
	$sql = $admin->sql("select * from class order by id desc");
	while ($row = $admin->row($sql))
	{
		echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
	}
	?>
    </select>
    </td>
  </tr>
  <tr>
    <td>نام و نام خانوادگی : </td>
    <td><input type="text" name="name" class="input-t" size="40" /></td>
  </tr>
  <tr>
    <td>کد کارت : </td>
    <td><input type="text" name="code" class="input-t" dir="ltr" /></td>
  </tr>
  
  <tr>
    <td>توضیحات : </td>
    <td><textarea name="description" class="input-s" style="width:300px;"></textarea></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" value="تایید" class="input-b" /></td>
  </tr>
</table>

</form>
</div>
</div>
</div>
    </td>
  </tr>
</table>
