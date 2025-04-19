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
$admin->LOG('بلیط' , 'چاپ گروهی');
?>
<div class="add-in">
<b class="bx">چاپ گروهی بلیط : </b>
<div class="co">
<form method="post" action="report.php?do=ticket" enctype="multipart/form-data" onSubmit="return confirm('آیا اطمینان دارید؟')">
<input type="hidden" name="post" />
<table cellpadding="2">
  <tr>
    <td>طرف حساب : </td>
    <td><?PHP echo $admin->select('person', 'name' , 'name' , 0 , false , 'انتخاب کنید' , 'seachableSelect') ?> <span style="color:red;"> جستجو : </span><input id="textbox" type="text" class="input-t" /></td>
  </tr>
  <tr>
    <td>سانس : </td>
    <td>
    <select name="showtime_id" class="input-s">
    <option value="0">1- عادی روزانه</option>
    <option value="1">2- عادی ادارات</option>
    <option value="2">3- ویژه روزانه</option>
    <option value="3">4- ویژه ادارات</option>
    <?PHP
    $sql = $admin->sql("select * from showtime order by id desc");
	while ($r = $admin->row($sql))
	{
		echo '<option value="'.$r['id'].'">'.$r['name'].'</option>';
	}
	?>
    </select>
    </td>
  </tr>
  <tr>
    <td>نوع بلیط : </td>
    <td>
    <select name="type" class="input-s">
    <option value="1">معمولی تک جلسه ای</option>
    <option value="6">کارت 6 جلسه ای</option>
    <option value="12">کارت 12 جلسه ای</option>
    </select>
    </td>
  </tr>
  <tr>
    <td>تعداد : </td>
    <td><input type="text" name="limit" class="input-t" dir="ltr" size="10" <?PHP echo NUMERAL; ?>></td>
  </tr>
  <tr>
    <td>نوع کاغذ چاپ : </td>
    <td>
    <input type="radio" name="paper" value="a4" id="a4" checked="checked" /><label for="a4">تنظیم خودکار برای کاغذ A4 سایز بزرگ</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="radio" name="paper" value="a4mini" id="a4mini"><label for="a4mini">تنظیم خودکار برای کاغذ A4 سایز کوچک</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="radio" name="paper" value="fish" id="fish" /><label for="fish">تنظیم خودکار برای فیش پرینتر</label>
    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" value="چاپ" class="input-b" /></td>
  </tr>
</table>

</form>
</div>
</div>
</div>
    </td>
  </tr>
</table>
