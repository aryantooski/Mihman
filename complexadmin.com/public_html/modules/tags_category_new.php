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
	$sql = $admin->sql("insert into tags_category set suid = '".SUID."' , name = '$_POST[name]' , color_name = '$_POST[color_name]' , color_code = '$_POST[color_code]' , pledge = '$_POST[pledge]' , type = '$_POST[type]' , mens = '$_POST[mens]' , mens_count = '$_POST[mens_count]' , womens = '$_POST[womens]' , womens_count = '$_POST[womens_count]' , frees = '$_POST[frees]' , frees_count = '$_POST[frees_count]' , discount = '$_POST[discount]' , description = '$_POST[description]' , datetime = '".$admin->time('Y-m-d H:i:s')."' , only_admin = '$_POST[only_admin]' ");
	if  ($sql)
	{
		$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
	}
	else
	{
		$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
	}
	
	$admin->LOG('گروه تگ جدید' , $msg);
}

?>

<div class="add-in">
<b class="bx">گروه تگ جدید : </b>
<div class="co">

<script src="inc/jscolor.js"></script>
<script type="text/javascript">
  function vax(name)
  {
    if ($("#"+name+"_ch").is(":checked"))
    {
      $("#"+name+"_in").removeAttr('disabled');
      $("#"+name+"_in").val('');
    }
    else
    {
      $("#"+name+"_in").attr('disabled' , 'disabled');
    }
  }

  function vaxt()
  {

    if ($("input[name=type]:checked").val() == 'پرسنل')
    {
      $("#discount").attr('disabled' , 'disabled');
    }
    else
    {
      $("#discount").removeAttr('disabled');
    }
  }

  function validate()
  {
    if ($('#mens_count').val().parseInt() >= 1 || $('#womens_count').val().parseInt() >= 1 || $('#frees_count').val().parseInt() >= 1 )
    {
      return true;
    }
    else
    {
      alert("حداقل مقدار صحیح نیست");
      return false;
    }
  }
</script>
<form method="post" action="" enctype="multipart/form-data" onsubmit="return validate()">
<input type="hidden" name="post" />
<table cellpadding="2">
  <tr>
    <td>نام گروه : </td>
    <td><input type="text" name="name" class="input-t" size="40" required></td>
  </tr>
  <tr>
    <td>نام رنگ : </td>
    <td><input type="text" name="color_name" class="input-t" required></td>
  </tr>
  <tr>
    <td>انتخاب رنگ : </td>
    <td><input type="text" name="color_code" class="color input-t" dir="ltr" required></td>
  </tr>
  <tr>
    <td>گرویی تگ : </td>
    <td><input type="text" name="pledge" class="input-t" required dir="ltr" onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )"> تومان</td>
  </tr>
  <tr>
    <td>برای : </td>
    <td><label><input type="radio" name="type" value="مهمان" checked="checked" onchange="vaxt()"> مهمان</label> <label><input type="radio" name="type" value="پرسنل" onchange="vaxt()"> پرسنل</label></td>
  </tr>

  <tr>
    <td>&nbsp;</td>
    <td><label style="width: 60px; display: inline-block;"><input type="checkbox" name="mens" id="mens_ch" onchange="vax('mens')"> آقا : </label> <input type="text" name="mens_count" class="input-t" dir="ltr" required onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )" disabled="disabled" id="mens_in"></td>
  </tr>
  
  <tr>
    <td>&nbsp;</td>
    <td><label style="width: 60px; display: inline-block;"><input type="checkbox" name="womens" id="womens_ch" onchange="vax('womens')"> خانم : </label> <input type="text" name="womens_count" class="input-t" dir="ltr" required onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )" disabled="disabled" id="womens_in"></td>
  </tr>
  
  <tr>
    <td>&nbsp;</td>
    <td><label style="width: 60px; display: inline-block;"><input type="checkbox" name="frees" id="frees_ch" onchange="vax('frees')"> آزاد : </label> <input type="text" name="frees_count" class="input-t" dir="ltr" required onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )" disabled="disabled" id="frees_in"></td>
  </tr>
  <tr>
    <td>تخفیف تگ : </td>
    <td><input type="text" name="discount" id="discount" class="input-t" required dir="ltr" onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )"> تومان</td>
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
                    <td><label><input type="checkbox" name="only_admin">اجازه ثبت فقط توسط مدیر </label></td>
                  </tr>



                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
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
