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
	if ($admin->result($admin->sql("select count(*) from users where username = '".strtolower($_POST['username'])."'") , 0) == 0)
	{
		$permit = $_POST['permit'];
		/*
		foreach ($_POST['permit'] as $k => $v)
		{
			$permit .= $v.',';
		}
		
		$permit = substr($permit , 0 , strlen($permit) - 1);
		*/
		$sql = $admin->sql("insert into users (suid , name , username , password , permit , mobile) values('".SUID."' , '$_POST[name]' , '$_POST[username]' , '".sha1($_POST['password'])."' , '$permit' , '$_POST[mobile]')");
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
		$msg = "این نام کاربری قبلا استفاده شده است"; echo $admin->msg($msg , "warning");
	}
	
	$admin->LOG('کاربر جدید' , $msg);
}
?>

<script type="text/javascript">
    function update_permit()
    {
        var items = $('#jstree').jstree('get_selected');
        var values = items.join();
        $("#permit").val(values);
    }
</script>
<div class="add-in">
<b class="bx">کاربر جدید : </b>
<div class="co">
<form method="post" action="" enctype="multipart/form-data" onsubmit="update_permit()">
<input type="hidden" name="permit" id="permit" value="none">
<input type="hidden" name="post" />
<table cellpadding="2">
  <tr>
    <td>نام و نام خانوادگی : </td>
    <td><input type="text" name="name" class="input-t" size="40" /></td>
  </tr>
  <tr>
    <td>موبایل : </td>
    <td><input type="text" name="mobile" dir="ltr" class="input-t" /></td>
  </tr>
  <tr>
    <td>نام کاربری : </td>
    <td><input type="text" name="username" class="input-t" dir="ltr" /></td>
  </tr>
  <tr>
    <td>رمز عبور : </td>
    <td><input type="text" name="password" class="input-t" dir="ltr" /></td>
  </tr>
  <tr>
    <td>دسترسی : </td>
    <td>

        <link rel="stylesheet" href="jstree/dist/themes/default/style.min.css" />

        <div id="jstree">
            <ul>
                <li id="10013">مهمانان
                    <ul>
                        <li id="141">مهمان جدید</li>
                        <li id="142">مدیریت مهمان ها</li>
                        <li id="143">گزارش انسداد ها</li>
                    </ul>
                </li>
                <li id="10002">سانس
                    <ul>
                        <li id="21">ایجاد سانس جدید</li>
                        <li id="22">مدیریت سانس ها</li>
                        <li id="23">آرشیو سانس ها</li>
                    </ul>
                </li>
                <li id="10004">بلیط
                    <ul>
                        <li id="41">ثبت بلیط عمومی</li>
                        <?PHP /*
                        <li id="42">مرجوع بلیط</li>
                        <li id="43">ابطال بلیط</li>
                        <li id="45">ابطال گروهی</li>
                        */ ?>
                        <li id="44">مدیریت بلیط ها</li>
                        <?PHP /*
                        <li id="46">عملیات گروهی</li>
                        */ ?>
                        <li id="47">چاپ گروهی</li>
                    </ul>
                </li>
                <li id="10001">پرسنل
                    <ul>
                        <li id="11">پرسنل جدید</li>
                        <li id="12">مدیریت پرسنل</li>
                        <li id="13">ثبت ساعت حضور</li>
                        <li id="14">مدیریت ساعت</li>
                        <li id="15">بروزرسانی</li>
                        <li id="16">گروه حقوق جدید</li>
                        <li id="17">مدیریت گروه حقوق</li>
                        <li id="18">ثبت کسر/اضافه</li>
                        <li id="19">مدیریت کسر/اضافه</li>
                        <li id="111">برنامه نجات جدید</li>
                        <li id="112">مدیریت برنامه ناجیها</li>
                    </ul>
                </li>
                <li id="10005">کاربران
                    <ul>
                        <li id="51">کاربر جدید</li>
                        <li id="52">مدیریت کاربران</li>
                        <li id="53">پیغام جدید</li>
                        <li id="54">مدیریت پیغامها</li>
                    </ul>
                </li>
                <li id="10006">بخش
                    <ul>
                        <li id="121">بخش جدید</li>
                        <li id="122">مدیریت بخش ها</li>
                        <li id="123">گزارش بخش</li>
                    </ul>
                </li>
                <li id="10007">تگ
                    <ul>
                        <li id="131">تگ جدید</li>
                        <li id="132">مدیریت تگ</li>
                        <li id="133">گروه تگ جدید</li>
                        <li id="134">مدیریت گروه تگها</li>
                        <li id="135">گزارش تگ</li>
                    </ul>
                </li>
                <li id="10014">گیفت کارت
                    <ul>
                        <li id="114">کوپن جدید</li>
                        <li id="115">مدیریت گیفت کارتها</li>
                    </ul>
                </li>
                <li id="10015">کمد
                    <ul>
                        <li id="116">درج کمد جدید</li>
                        <li id="117">مدیریت کمدها</li>
                    </ul>
                </li>
                <li id="10009">گزارشات
                    <ul>
                        <li id="71">گزارش بلیط ها</li>
                        <li id="72">ورود و خروج پرسنل</li>
                        <li id="73">گزارش هزینه ها</li>
                        <li id="74">آموزش</li>
                        <?PHP /*<li id="75">قرارداد</li>*/ ?>
                        <li id="76">حسابهای بانکی</li>
                        <li id="77">گزارش واریز وجه</li>
                        <li id="78">گزارش فیش حقوقی</li>
                    </ul>
                </li>
                <li id="10003">سالن
                    <ul>
                        <li id="31">سالن جدید</li>
                        <li id="32">مدیریت سالن ها</li>
                        <li id="33">صدور کارت سالن جدید</li>
                        <li id="34">مدیریت کارت های سالن</li>
                    </ul>
                </li>
                <li id="10008">مالی
                    <ul>
                        <li id="61">گروه هزینه جدید</li>
                        <li id="62">مدیریت گروه هزینه ها</li>
                        <li id="63">ثبت هزینه جدید</li>
                        <li id="64">مدیریت هزینه ها</li>
                        <li id="65">گزارشات</li>
                        <li id="66">دریافت کارت سالن جدید</li>
                        <li id="69">دریافت قرارداد جدید</li>
                        <li id="67">مدیریت دریافتهای قرارداد</li>
                        <li id="68">مدیریت دریافتهای کارت سالن</li>
                    </ul>
                </li>
                <li id="10010">قرارداد
                    <ul>
                        <li id="81">قرارداد جدید</li>
                        <li id="82">مدیریت قراردادها</li>
                    </ul>
                </li>
                <li id="10011">حسابهای بانکی
                    <ul>
                        <li id="91">حساب جدید</li>
                        <li id="92">مدیریت حسابها</li>
                        <li id="93">انتقال وجه</li>
                        <li id="94">واریز وجه</li>
                    </ul>
                </li>
                <li id="10012">طرف حساب
                    <ul>
                        <li id="101">طرف حساب جدید</li>
                        <li id="102">مدیریت طرف حسابها</li>
                    </ul>
                </li>
                
                <li id="10016">تنظیمات
                    <ul>
                        <li id="120">پشتیبان گیری</li>
                        <li id="150">تنظیمات عمومی</li>
                    </ul>
                </li>
            </ul>
        </div>

        <script src="jstree/dist/libs/jquery.js"></script>
        <script src="jstree/dist/jstree.min.js"></script>
        <script>
            $(function () {
                $('#jstree').jstree({
                    "plugins" : [ "checkbox" ]
                });

            });
        </script>

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
