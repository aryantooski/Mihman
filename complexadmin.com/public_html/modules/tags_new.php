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
  if ($admin->sql("select count(*) as cnt from tags where (serial = '$_POST[serial]')")->fetch_object()->cnt == 0)
  {
  	$sql = $admin->sql("insert into tags set suid = '".SUID."' , category_id = '$_POST[category_id]' , serial = '$_POST[serial]' , description = '$_POST[description]' , datetime = '".$admin->time('Y-m-d H:i:s')."' , status = 'free' ");
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
    $msg = "این سریال قبلا درج شده است"; echo $admin->msg($msg , "critical");
  }
	
	$admin->LOG('تگ جدید' , $msg);
}

?>

<div class="add-in">
<b class="bx">تگ جدید : </b>
<div class="co">
<script type="text/javascript">
  function update_data()
  {
    $("#color_name").html($("#category_id").find(":selected").data('colorname'));
    $("#color_code").css("background-color" , $("#category_id").find(":selected").data('colorcode'));
    $("#pledge").html($("#category_id").find(":selected").data('pledge'));
    $("#type").html($("#category_id").find(":selected").data('type'));
  }
</script>
<form method="post" action="" enctype="multipart/form-data">
<input type="hidden" name="post" />
<table cellpadding="2">
  
  <tr>
    <td>سریال کارت یا دستبند : </td>
    <td><input type="text" name="serial" dir="ltr" class="input-t" required></td>
  </tr>
<tr>
    <td>گروه تگ : </td>
    <td>
      <select name="category_id" id="category_id" onchange="update_data()" class="input-s" required>
      <option value="">انتخاب کنید</option>
        <?php
        $sql = $admin->sql("select * from tags_category order by id asc");
        while ($row = $admin->row($sql))
        {
          echo '<option value="'.$row['id'].'" data-colorname="'.$row['color_name'].'" data-colorcode="'.$row['color_code'].'" data-pledge="'.@number_format($row['pledge']).' تومان" data-type="'.$row['type'].'">'.$row['name'].'</option>';
        }
        ?>
      </select>
    </td>
  </tr>

  <tr>
    <td>نام رنگ : </td>
    <td><div id="color_name"></div></td>
  </tr>
  <tr>
    <td>رنگ : </td>
    <td><div id="color_code" style="width:60px; height:30px; border: 1px solid black;"></div></td>
  </tr>
  <tr>
    <td>گرویی تگ : </td>
    <td><div id="pledge"></div></td>
  </tr>
  <tr>
    <td>نوع تگ : </td>
    <td><div id="type"></div></td>
  </tr>

  <tr>
    <td>توضیحات : </td>
    <td><textarea name="description" class="input-s"  style="width:300px;"></textarea></td>
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
</div>
</div>
</div>
    </td>
  </tr>
</table>
