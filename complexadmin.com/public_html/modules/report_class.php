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
$admin->LOG('گزارش آموزش' , 'مشاهده تنظیمات');
?>
<div class="add-in">
<b class="bx">گزارش آموزش : </b>
<div class="co">
<form method="post" action="report.php?do=<?PHP echo $_GET['do'] ?>" enctype="multipart/form-data">
<input type="hidden" name="post" />
<table cellpadding="2">
  <tr>
    <td>گزارش بر اساس : </td>
    <td>
        <table cellpadding="3">
          <tr>
            <td><input type="radio" name="report_by" value="کلاس" id="o1" checked="checked" /></td>
            <td><label for="o1">کلاس</label></td>
            <td><?PHP echo $admin->select('class' , 'class_id' , 'name' , 0 , false); ?></td>
          </tr>
          <tr>
            <td><input type="radio" name="report_by" value="کد کارت" id="o2" /></td>
            <td><label for="o2">کد کارت</label></td>
            <td><input type="text" name="value" class="input-t" /></td>
          </tr>
          <tr>
            <td><input type="radio" name="report_by" value="نام مربی" id="o3" /></td>
            <td><label for="o3">نام مربی</label></td>
            <td>
            <select name="teacher" class="input-s">
            <?PHP
            $sql = $admin->sql("select * from personel where type = 'مربی آموزشی'");
            while ($row = $admin->row($sql))
            {
                echo '<option value="'.$row['name'].'">'.$row['name'].'</option>';
            }
            ?>
            </select>
            </td>
          </tr>
        </table>
    
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
