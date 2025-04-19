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
if (isset($_GET['type']))
{
	if (isset($_POST['post']))
	{
		$sql = $admin->sql("update contract set f1 = '$_POST[f1]' , f2 = '$_POST[f2]' , f3 = '$_POST[f3]' , f4 = '$_POST[f4]' where id = '$_GET[cid]' limit 1");
					
		if  ($sql)
		{
			$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
			echo '<meta http-equiv="refresh" content="0;URL=index.php?do=contract_new&e=ok">';
		}
		else
		{
			$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
		}
		
		$admin->LOG('ثبت قرارداد جدید' , $msg);
	}
	?>
	<div class="add-in">
	<b class="bx">ثبت قرارداد جدید : </b>
	<div class="co">
	<form method="post" action="" enctype="multipart/form-data">
	<input type="hidden" name="post" />
	<table cellpadding="2">
		<?PHP
		switch ($_GET['type'])
		{
			case 'فروش بلیط' :
				?>
                <tr>
                    <td>تعداد بلیط : </td>
                    <td><input type="text" name="f1" class="input-t" dir="ltr" size="6" /></td>
                </tr>
                <tr>
                    <td>شماره سریال از : </td>
                    <td><input type="text" name="f2" class="input-t" dir="ltr" size="6" /> تا <input type="text" name="f3" class="input-t" dir="ltr" size="6" /></td>
                </tr>
                <?PHP
			break;
			
			case 'آموزشی' :
				?>
                <tr>
                    <td>نوع کلاس : </td>
                    <td><input type="text" name="f1" class="input-t" /></td>
                </tr>
                <tr>
                    <td>سطح کلاس : </td>
                    <td><input type="text" name="f2" class="input-t" /></td>
                </tr>
                <tr>
                    <td>تعداد هنرجویان : </td>
                    <td><input type="text" name="f3" class="input-t" size="6" dir="ltr" /></td>
                </tr>
                <?PHP
			break;
			
			case 'اختصاصی' :
				?>
                <tr>
                    <td>تعداد سانس : </td>
                    <td><input type="text" name="f1" class="input-t" size="6" dir="ltr" /></td>
                </tr>
                <?PHP
			break;
			
			case 'فروش کارت' :
				?>
                <tr>
                    <td>نوع کارت : </td>
                    <td>
                    <select name="f1" class="input-s">
                    	<option value="شش جلسه ای">شش جلسه ای</option>
                    	<option value="دوازده جلسه ای">دوازده جلسه ای</option>
                    </select>
                    </td>
                </tr>
                <tr>
                    <td>تعداد : </td>
                    <td><input type="text" name="f2" class="input-t" dir="ltr"  size="6" /></td>
                </tr>
                <tr>
                    <td>شماره سریال از : </td>
                    <td><input type="text" name="f3" class="input-t" dir="ltr" size="6" /> تا <input type="text" name="f4" class="input-t" dir="ltr" size="6" /></td>
                </tr>
                <?PHP
			break;
			
		}
		
		?>
	  <tr>
		<td>&nbsp;</td>
		<td><input type="submit" value="تایید" class="input-b" /></td>
	  </tr>
	</table>
	</form>
    </div>
    </div>
<?PHP
}
else
{
	if (isset($_POST['post']))
	{
		$date_start = $_POST['start_year'].'-'.$_POST['start_month'].'-'.$_POST['start_day'];
		$date_finish = $_POST['finish_year'].'-'.$_POST['finish_month'].'-'.$_POST['finish_day'];
		
		$remained = str_replace("," , "" , $_POST['amount']) - ((str_replace("," , "" , $_POST['amount']) / 100) * $_POST['discount']);
		
		$sql = $admin->sql("insert into contract (suid , type , contract_number , date_start , date_finish , person_id , tel , amount , discount , remained , paying_type , description) values('".SUID."' , '$_POST[type]' , '$_POST[contract_number]' , '$date_start' , '$date_finish' , '$_POST[person_id]' , '$_POST[tel]' , '".str_replace("," , "" , $_POST['amount'])."' , '$_POST[discount]' , '$remained' , '$_POST[paying_type]' , '$_POST[description]')");
					
		if  ($sql)
		{
			$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
			echo '<meta http-equiv="refresh" content="0;URL=index.php?do=contract_new&type='.$_POST['type'].'&cid='.mysqli_insert_id().'">';
		}
		else
		{
			$msg = "خطای سیستمی"; echo $admin->msg($msg , "critical");
		}
	}
	
	if (isset($_GET['e']) and $_GET['e'] == 'ok')
	{
		$msg = "عملیات درخواستی با موفقیت انجام شد"; echo $admin->msg($msg , "true");
	}
	
	?>
	<script language="javascript">
	function disc()
	{
		var amount = document.getElementById('amount').value;
		amount = amount.replace(',' , '');
		amount = amount.replace(',' , '');
		amount = amount.replace(',' , '');
		var discount = document.getElementById('discount').value;
		
		if (amount > 0 && discount > 0)
		{
			d = amount / 100;
			d = d * discount;
		}
		else
		{
			d = 0;
		}
		
		a = amount - d;
		
		document.getElementById("mostpay").innerHTML = 'مبلغ قابل پرداخت : ' + a + ' تومان';
		
		return false;
	}
	</script>
	<div class="add-in">
	<b class="bx">ثبت قرارداد جدید : </b>
	<div class="co">
	<form method="post" action="" enctype="multipart/form-data">
	<input type="hidden" name="post" />
	<table cellpadding="2">
	  <tr>
		<td>نوع قرارداد : </td>
		<td>
		<select name="type" class="input-s">
			<option value="فروش بلیط">فروش بلیط</option>
			<option value="آموزشی">آموزشی</option>
			<option value="اختصاصی">اختصاصی</option>
			<option value="فروش کارت">فروش کارت</option>
		</select>
		</td>
	  </tr>
	  <tr>
		<td>شماره قراداد : </td>
		<td><input type="text" name="contract_number" class="input-t" /></td>
	  </tr>
	  <tr>
		<td>تاریخ شروع : </td>
		<td><?PHP echo $admin->date_select('start') ?></td>
	  </tr>
	  <tr>
		<td>تاریخ پایان : </td>
		<td><?PHP echo $admin->date_select('finish' , true , 'y+') ?></td>
	  </tr>
	  <tr>
		<td>طرف قرارداد : </td>
		<td><?PHP echo $admin->select('person', 'person_id' , 'name' , 0 , false , 'انتخاب کنید' , 'seachableSelect') ?> <span style="color:red;"> جستجو : </span><input id="textbox" type="text" class="input-t" /></td>
	  </tr>
	  <tr>
		<td>شماره تماس : </td>
		<td><input type="text" name="tel" class="input-t" dir="ltr" /></td>
	  </tr>
	  <tr>
		<td>مبلغ کل قرارداد : </td>
		<td><input type="text" name="amount" id="amount" class="input-t" dir="ltr" <?PHP echo NUMERAL; ?> /> تومان</td>
	  </tr>
	  <tr>
		<td>تخفیف : </td>
		<td><input type="text" name="discount" id="discount" class="input-t" dir="ltr" /> درصد &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="محاسبه" onclick="return disc()" style="font:8pt tahoma;" />&nbsp;&nbsp;<span id="mostpay" style="color:green;">مبلغ قابل پرداخت : 0 تومان</span></td>
	  </tr>
	  <tr>
		<td>نحوه پرداخت : </td>
		<td><textarea name="paying_type" class="input-s" style="width:300px;"></textarea></td>
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
<?PHP
}
?>
</div>
    </td>
  </tr>
</table>
