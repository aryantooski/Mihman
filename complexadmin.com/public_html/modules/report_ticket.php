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
$admin->LOG('گزارش بلیط ها' , 'مشاهده تنظیمات');
?>
<div class="add-in">
<b class="bx">گزارش بلیط ها : </b>
<div class="co">
<form method="post" action="report.php?do=<?PHP echo $_GET['do'] ?>" enctype="multipart/form-data">
<input type="hidden" name="post" />
<table cellpadding="2">
  <tr>
    <td>سانس : </td>
    <td>
    <select name="showtime_id" class="input-s">
    <option value="-">0- همه سانس ها</option>
    <option value="0">1- عادی روزانه</option>
    <option value="1">2- عادی ادارات</option>
    <option value="2">3- ویژه روزانه</option>
    <option value="3">4- ویژه ادارات</option>
    </select>
    </td>
  </tr>
  <tr>
    <td>زمان شروع : </td>
    <td>
    <?PHP
	echo $admin->date_select('start' , true);
	?>
    </td>
  </tr>
  <tr>
    <td>زمان پایان : </td>
    <td>
    <?PHP
	echo $admin->date_select('end');
	?>
    </td>
  </tr>
  <tr>
    <td>وضعیت بلیط : </td>
    <td>
    <select name="status" class="input-s">
    <option value="all">تمامی وضعیت ها</option>
    <option value="مرجوع">مرجوع</option>
    <option value="ابطال">ابطال</option>
    <option value="فعال">فعال</option>
    <option value="expired">تاریخ مصرف گذشته</option>
    </select>
    </td>
  </tr>
  <tr>
    <td>طرف حساب : </td>
    <td>
    <select name="person" class="input-s" id="seachableSelect">
    <option value="all">تمامی طرف حساب ها</option>
    <?PHP
    $person = $admin->sql("select distinct(name) from ticket ");
	while ($person_ = $admin->row($person))
	{
		if (!empty($person_['name']))
		echo '<option value="'.$person_['name'].'">'.$admin->result($admin->sql("select name from person where id = '$person_[name]' ") , 0).'</option>';
	}
	?>
    </select>
    <span style="color:red;"> جستجو : </span><input id="textbox" type="text" class="input-t" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>ترتیب : </td>
    <td>
    <input type="radio" name="sort" value="none" id="none" checked="checked" /><label for="none">بدون مرتب سازی</label> <input type="radio" name="sort" value="asc" id="asc" /><label for="asc">صعودی</label> <input type="radio" name="sort" value="desc" id="desc" /><label for="desc">نزولی</label> 
    </td>
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
