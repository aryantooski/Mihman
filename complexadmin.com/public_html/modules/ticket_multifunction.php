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
	$showtime_id = $_POST['showtime_id']+1;
	$code_from = $_POST['code_from'];
	$code_to = $_POST['code_to'];
	$op = $_POST['op'];
	
	$count = 0;
	
	if (!empty($code_from) and !empty($code_to) and $code_from < $code_to)
	{
		$id_array = array();
		for ($i = $code_from ; $i <= $code_to ; $i++)
		{
			$count++;
			$id_array[] = $showtime_id.'.'.$i;
		}
	}
	
	
	if ($count > 0)
	{
		$str = '';
		foreach ($id_array as $k => $v)
		{
			$str .= "code = '".$v."' or ";
		}
		
		$str = substr($str , 0 , strlen($str) - 4);
		
		if (strlen($str) > 0)
		{
			$sql = $admin->sql("select * from ticket where ($str)");
			$count_tickets = mysqli_num_rows($sql);
			if ($count_tickets > 0)
			{
				switch ($_POST['op'])
				{
					case 'delete' :
						$admin->sql("delete from ticket where ($str)");
						$msg .= "حذف گروهی انجام شد ".PHP_EOL; echo $admin->msg($msg , "true");
					break;
					
					case 'edit' :
						
						if ($_POST['name_check'] == 'on')
						{
							$admin->sql("update ticket set name = '$_POST[name]' where ($str)");
							$msg .= "ویرایش خریدار انجام شد ".PHP_EOL;
						}
						
						
						if ($_POST['amount_check'] == 'on')
						{
							$admin->sql("update ticket set amount = '".str_replace("," , "" , $_POST['amount'])."' where ($str)");
							$msg .= "ویرایش قیمت انجام شد ".PHP_EOL;
						}
						
						$time_start = $_POST['start_year'].'-'.$_POST['start_month'].'-'.$_POST['start_day'];
						$time_finish = $_POST['finish_year'].'-'.$_POST['finish_month'].'-'.$_POST['finish_day'];
						
						if ($_POST['datestart_check'] == 'on')
						{
							$admin->sql("update ticket set time_start = '$time_start' where ($str)");
							$msg .= "ویرایش تاریخ شروع انجام شد ".PHP_EOL;
						}
						
						
						if ($_POST['datefinish_check'] == 'on')
						{
							$admin->sql("update ticket set time_finish = '$time_finish' where ($str)");
							$msg .= "ویرایش تاریخ پایان انجام شد ".PHP_EOL;
						}
						
						
						if ($_POST['type_check'] == 'on')
						{
							$admin->sql("update ticket set type = '$_POST[type]' where ($str)");
							$msg .= "ویرایش نوع بلیط انجام شد ".PHP_EOL;
						}
						
						echo $admin->msg(str_replace(PHP_EOL , '<br>' , $msg) , "true");
					break;
				}
			}
			else
			{
				echo 'هیچ بلیطی در بازه انتخابی شما وجود ندارد';
			}
		}
		else
		{
			echo 'هیچ بلیطی انتخاب نشده است . ورودی ها را بررسی کنید';
		}
	}
	else
	{
		echo 'هیچ بلیطی انتخاب نشده است . ورودی ها را بررسی کنید';
	}
	
	$admin->LOG('عملیات گروهی بلیط' , $msg);
}
?>
<div class="add-in">
<b class="bx">عملیات گروهی بلیط: </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data" id="myForm">
<input type="hidden" name="post" />
<script language="javascript" src="inc/jquery.min.js"></script>
<script language="javascript">
function ticket_multi()
{
	$("#loading").css("display","block");
	var option = $('input[name=op]:checked', '#myForm').val();
	$.ajax({
		data:"showtime_id="+$("#showtime_id").val()+"&code_from="+$("#code_from").val()+"&code_to="+$("#code_to").val()+"&op="+option,
		type:"POST",
		url:"core.php?act=validate_multifunction",
		success: function(data){
			var subs = data.substr(0,2);
			var count = data.substr(2,10);
			if (subs == 'OK')
			{
				document.getElementById('table1').style.display = 'none';
				document.getElementById('table_'+option).style.display = 'block';
				
				if (option == 'delete')
				{
					$("#table_delete_msg").html("تعداد "+count+" بلیط قابل حذف می باشد. آیا برای حذف تمایل دارید ؟");
				}
				else
				{
					$("#table_edit_msg").html("تعداد "+count+" بلیط قابل ویرایش می باشد");
				}
				$("#loading").css("display","none");
			}
			else
			{
				$("#loading").css("display","none");
				alert(data);
			}
		}
	});
	
}
</script>
<table cellpadding="3" id="table1" style="display:block">
  <tr>
    <td width="60">سانس : </td>
    <td>
    <select name="showtime_id" class="input-s" id="showtime_id">
    <option value="0">1- عادی روزانه</option>
    <option value="1">2- عادی ادارات</option>
    <option value="2">3- ویژه روزانه</option>
    <option value="3">4- ویژه ادارات</option>
    </select>
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>عملیات : </td>
    <td><input type="radio" name="op" value="delete" id="delete" checked="checked" /> <label for="delete">حذف</label> <input type="radio" name="op" value="edit" id="edit" /> <label for="edit">ویرایش</label></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>کد بلیط : </td>
    <td>
    از &nbsp;&nbsp;<input type="text" name="code_from" id="code_from" class="input-t" size="13" style="text-align:center"  />&nbsp;&nbsp;
    تا &nbsp;&nbsp;<input type="text" name="code_to" id="code_to" class="input-t" size="13" style="text-align:center"  />
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="button" value="بررسی" onclick="ticket_multi()" class="input-b" /></td>
    <td><div id="loading" style="display:none;"><img src="images/loading.gif" /> در حال بررسی ...</div></td>
  </tr>
</table>






<table cellpadding="10" id="table_delete" style="display:none;">
  <tr>
    <td style="color:green; font-weight:bold;"><div id="table_delete_msg"></div></td>
  </tr>
  <tr>
    <td><input type="submit" value="تایید" class="input-b" onclick="return confirm('آیا اطمینان دارید ؟');" /></td>
  </tr>
</table>






<table cellpadding="4" id="table_edit" style="display:none;">
  <tr>
    <td colspan="3" style="color:green; font-weight:bold;"><div id="table_edit_msg"></div><br /><br /></td>
  </tr>
  <tr>
    <td width="30"><input type="checkbox" name="name_check" /></td>
    <td width="80">خریدار : </td>
    <td><?PHP echo $admin->select('person', 'name' , 'name' , 0 , false) ?></td>
  </tr>
  <tr>
    <td><input type="checkbox" name="amount_check" /></td>
    <td>قیمت : </td>
    <td><input type="text" name="amount" class="input-t" dir="ltr" size="30" <?PHP echo NUMERAL; ?> /> تومان</td>
  </tr>
  <tr>
    <td><input type="checkbox" name="datestart_check" /></td>
    <td>تاریخ شروع : </td>
    <td><?PHP echo $admin->date_select('start') ?></td>
  </tr>
  <tr>
    <td><input type="checkbox" name="datefinish_check" /></td>
    <td>تاریخ پایان : </td>
    <td><?PHP echo $admin->date_select('finish' , true , 'y+') ?></td>
  </tr>
  <tr>
    <td><input type="checkbox" name="type_check" /></td>
    <td>نوع : </td>
    <td>
    <select name="type" class="input-s">
    <option value="1">معمولی تک جلسه ای</option>
    <option value="6">کارت 6 جلسه ای</option>
    <option value="12">کارت 12 جلسه ای</option>
    </select>
    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><input type="submit" value="تایید" class="input-b" onclick="return confirm('آیا اطمینان دارید ؟');" /> &nbsp;&nbsp;&nbsp; <i style="color:red;"> برای ویرایش باید تیک کنار هر فیلد انتخاب شود</i></td>
  </tr>
</table>








</form>
</div>
</div>
</div>
    </td>
  </tr>
</table>
