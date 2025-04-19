<?PHP
exit;
require_once("header.php");
require_once("menu.php");
?>
    </td>
  </tr>
  <tr>
    <td valign="top">
<div class="text-cont">
<?PHP
$admin->LOG('گزارش قراردادها' , 'مشاهده تنظیمات');
?>
<div class="add-in">
<b class="bx">گزارش قراردادها : </b>
<div class="co">
<form method="post" action="report.php?do=<?PHP echo $_GET['do'] ?>" enctype="multipart/form-data">
<input type="hidden" name="post" />
<table cellpadding="2">
  <tr>
    <td>گزارش بر اساس : </td>
    <td>
        <table cellpadding="3">
          <tr>
            <td><input type="radio" name="report_by" value="type" checked="checked" id="o1" /></td>
            <td><label for="o1">نوع قرارداد</label></td>
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
            <td><input type="radio" name="report_by" value="person" id="o2" /></td>
            <td><label for="o2">طرف حساب</label></td>
            <td><?PHP echo $admin->select('person' , 'person_id' , 'name'); ?></td>
          </tr>
        </table>
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
