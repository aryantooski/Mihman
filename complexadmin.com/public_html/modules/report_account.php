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
$admin->LOG('گزارش حساب های بانکی' , 'مشاهده تنظیمات');
?>
<div class="add-in">
<b class="bx">گزارش حساب های بانکی : </b>
<div class="co">
<form method="post" action="report.php?do=<?PHP echo $_GET['do'] ?>" enctype="multipart/form-data">
<input type="hidden" name="post" />
<table cellpadding="2">
  <tr>
    <td>حساب بانکی : </td>
    <td><?PHP echo $admin->select('account' , 'account_id' , 'name'); ?></td>
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
