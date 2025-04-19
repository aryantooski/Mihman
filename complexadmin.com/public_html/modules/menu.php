<?PHP
if (!defined("SECURITY_CHECK"))
{
	die("SECURITY CHECK FAILED ON THIS FILE . FORBIDDEN USE");
}
else
{
	if (SECURITY_CHECK != "MOHAMMAD_REZA_POURSOLTAN")
	{
		die("SECURITY CHECK FAILED ON THIS FILE . FORBIDDEN USE");
	}
}

$dosub = substr($do , 0 , 4);

switch ($dosub)
{
	case 'gues' :
		$deftab = 0;
	break;

	case 'arch' :
	case 'show' :
		$deftab = 1;
	break;
	
	case 'tick' :
		$deftab = 2;
	break;
	
	case 'pers' :
		$deftab = 3;
	break;

	case 'user' :
		$deftab = 4;
	break;
	
	case 'part' :
		$deftab = 5;
	break;
	
	case 'tags' :
		$deftab = 6;
	break;
	
	case 'coup' :
		$deftab = 7;
	break;
	
	case 'clos' :
		$deftab = 8;
	break;
	
	case 'repo' :
		$deftab = 9;
	break;
	
	case 'clas' :
	case 'card' :
		$deftab = 10;
	break;
	
	case 'cost' :
		$deftab = 11;
	break;
	
	case 'cont' :
		$deftab = 12;
	break;
	
	case 'acco' :
		$deftab = 13;
	break;
	
	case 'xper' :
		$deftab = 14;
	break;
	
	case 'sett' :
	case 'back' :
	case 'chan' :
	case 'logo' :
		$deftab = 15;
	break;
	
	default :
		$deftab = 0;
	break;
}

?>
<script language="javascript">
var deftab = <?PHP echo $deftab ?>;
</script>
<div id="TabbedPanels1" class="TabbedPanels">
  <ul class="TabbedPanelsTabGroup">
	<?PHP
	
	
	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[141] == 'on' or $permit[142] == 'on' or $permit[143] == 'on'))
		echo '<li class="TabbedPanelsTab" tabindex="0">مهمانان</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';




	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[21] == 'on' or $permit[22] == 'on' or $permit[23] == 'on' or $permit[24] == 'on' or $permit[25] == 'on' or $permit[26] == 'on' or $permit[27] == 'on' or $permit[28] == 'on' or $permit[29] == 'on'))
		echo '<li class="TabbedPanelsTab" tabindex="0">سانس</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';
	



	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[41] == 'on' or $permit[42] == 'on' or $permit[43] == 'on' or $permit[44] == 'on' or $permit[45] == 'on' or $permit[46] == 'on' or $permit[47] == 'on' or $permit[48] == 'on' or $permit[49] == 'on'))
		echo '<li class="TabbedPanelsTab" tabindex="0">بلیط</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';
	


	
	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[11] == 'on' or $permit[12] == 'on' or $permit[13] == 'on' or $permit[14] == 'on' or $permit[15] == 'on' or $permit[16] == 'on' or $permit[17] == 'on' or $permit[18] == 'on' or $permit[19] == 'on'))
		echo '<li class="TabbedPanelsTab" tabindex="0">پرسنل</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';
	



	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[51] == 'on' or $permit[52] == 'on' or $permit[53] == 'on' or $permit[54] == 'on' or $permit[55] == 'on' or $permit[56] == 'on' or $permit[57] == 'on' or $permit[58] == 'on' or $permit[59] == 'on'))
		echo '<li class="TabbedPanelsTab" tabindex="0">کاربران</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';
	



	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[121] == 'on' or $permit[122] == 'on'))
		echo '<li class="TabbedPanelsTab" tabindex="0">بخش</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';
	



	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[131] == 'on' or $permit[132] == 'on' or $permit[133] == 'on' or $permit[134] == 'on' or $permit[135] == 'on' ))
		echo '<li class="TabbedPanelsTab" tabindex="0">تگ</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';
	




	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[114] == 'on' or $permit[114] == 'on'))
		echo '<li class="TabbedPanelsTab" tabindex="0">گیفت کارت</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';
	



	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[116] == 'on' or $permit[117] == 'on'))
		echo '<li class="TabbedPanelsTab" tabindex="0">کمد</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';
	



	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[71] == 'on' or $permit[72] == 'on' or $permit[73] == 'on' or $permit[74] == 'on' or $permit[75] == 'on' or $permit[76] == 'on' or $permit[77] == 'on' or $permit[78] == 'on' or $permit[79] == 'on'))
		echo '<li class="TabbedPanelsTab" tabindex="0">گزارشات</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';
	



	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[31] == 'on' or $permit[32] == 'on' or $permit[33] == 'on' or $permit[34] == 'on' or $permit[35] == 'on' or $permit[36] == 'on' or $permit[37] == 'on' or $permit[38] == 'on' or $permit[39] == 'on'))
		echo '<li class="TabbedPanelsTab" tabindex="0">سالن</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';
	



	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[61] == 'on' or $permit[62] == 'on' or $permit[63] == 'on' or $permit[64] == 'on' or $permit[65] == 'on' or $permit[66] == 'on' or $permit[67] == 'on' or $permit[68] == 'on' or $permit[69] == 'on'))
		echo '<li class="TabbedPanelsTab" tabindex="0">مالی</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';
	



	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[81] == 'on' or $permit[82] == 'on' or $permit[83] == 'on' or $permit[84] == 'on' or $permit[85] == 'on' or $permit[86] == 'on' or $permit[87] == 'on' or $permit[88] == 'on' or $permit[89] == 'on'))
		echo '<li class="TabbedPanelsTab" tabindex="0">قرارداد</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';
	



	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[91] == 'on' or $permit[92] == 'on' or $permit[93] == 'on' or $permit[94] == 'on' or $permit[95] == 'on' or $permit[96] == 'on' or $permit[97] == 'on' or $permit[98] == 'on' or $permit[99] == 'on'))
		echo '<li class="TabbedPanelsTab" tabindex="0">حسابهای بانکی</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';
	



	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[101] == 'on' or $permit[102] == 'on' or $permit[103] == 'on' or $permit[104] == 'on' or $permit[105] == 'on' or $permit[106] == 'on' or $permit[107] == 'on' or $permit[102] == 'on' or $permit[108] == 'on' or $permit[109] == 'on'))
		echo '<li class="TabbedPanelsTab" tabindex="0">طرف حساب</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';
	
	if (($admin->login_check() == 'FULL_ACCESS') or ($permit[120] == 'on' or $permit[150] == 'on'))
		echo '<li class="TabbedPanelsTab" tabindex="0">تنظیمات</li>';
	else
		echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';


	// if ($admin->login_check() == 'FULL_ACCESS')
	// 	echo '<li class="TabbedPanelsTab" tabindex="0">تنظیمات</li>';
	// else
	// 	echo '<li class="TabbedPanelsTab" tabindex="0" style="display:none">EMPTY</li>';
	


	?>
  </ul>
  <div class="TabbedPanelsContentGroup">


	<div class="TabbedPanelsContent">
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[141] == 'on') echo '<a href="index.php?do=guest_new">مهمان جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[142] == 'on') echo '<a href="index.php?do=guest_manage">مدیریت مهمان ها</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[143] == 'on') echo '<a href="index.php?do=guest_block_report">گزارش انسداد ها</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	</div>
	
	
	<div class="TabbedPanelsContent">
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[21] == 'on') echo '<a href="index.php?do=showtime_new">ایجاد سانس جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[22] == 'on') echo '<a href="index.php?do=showtime_manage">مدیریت سانس ها</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[23] == 'on') echo '<a href="index.php?do=archive_showtimes">آرشیو سانس ها</a>   '; ?>
	</div>


	<div class="TabbedPanelsContent">
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[41] == 'on') echo '<a href="index.php?do=ticket_new">ثبت بلیط</a> &nbsp;&nbsp;&nbsp;&nbsp;   '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[44] == 'on') echo '<a href="index.php?do=ticket_manage">مدیریت بلیط ها</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>

	
	<?PHP //if ($admin->login_check() == 'FULL_ACCESS' or $permit[42] == 'on') echo '<a href="index.php?do=ticket_return">مرجوع بلیط</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP //if ($admin->login_check() == 'FULL_ACCESS' or $permit[43] == 'on') echo '<a href="index.php?do=ticket_cancel">ابطال بلیط</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP //if ($admin->login_check() == 'FULL_ACCESS' or $permit[45] == 'on') echo '<a href="index.php?do=ticket_cancel_group">ابطال گروهی</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP //if ($admin->login_check() == 'FULL_ACCESS' or $permit[46] == 'on') echo '<a href="index.php?do=ticket_multifunction">عملیات گروهی</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[47] == 'on') echo '<a href="index.php?do=ticket_print">چاپ گروهی</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[41] == 'on') echo '<a href="index.php?do=ticket_newold">ثبت بلیط old</a> &nbsp;&nbsp;&nbsp;&nbsp;   '; ?>
	</div>



	<div class="TabbedPanelsContent">
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[11] == 'on') echo '<a href="index.php?do=personal_new">پرسنل جدید</a> &nbsp;&nbsp;&nbsp;  '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[12] == 'on') echo '<a href="index.php?do=personal_manage">مدیریت پرسنل</a> &nbsp;&nbsp;&nbsp;  '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[13] == 'on') echo '<a href="index.php?do=personal_time">ثبت ساعت حضور</a> &nbsp;&nbsp;&nbsp;  '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[15] == 'on') echo '<a href="index.php?do=personal_managetime">مدیریت ساعت</a> &nbsp;&nbsp;&nbsp;  '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[14] == 'on') echo '<a href="index.php?do=personal_update">بروزرسانی</a> &nbsp;&nbsp;&nbsp;  '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[16] == 'on') echo '<a href="index.php?do=personal_deduction_group_new">گروه حقوق جدید</a> &nbsp;&nbsp;&nbsp;  '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[17] == 'on') echo '<a href="index.php?do=personal_deduction_group_manage">مدیریت گروه حقوق</a> &nbsp;&nbsp;&nbsp;  '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[18] == 'on') echo '<a href="index.php?do=personal_deduction_new">ثبت کسر/اضافه</a> &nbsp;&nbsp;&nbsp;  '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[19] == 'on') echo '<a href="index.php?do=personal_deduction_manage">مدیریت کسر/اضافه</a> &nbsp;&nbsp;&nbsp;  '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[111] == 'on') echo '<a href="index.php?do=personal_saviorprogram_new">برنامه نجات جدید</a> &nbsp;&nbsp;&nbsp;  '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[112] == 'on') echo '<a href="index.php?do=personal_saviorprogram_manage">مدیریت برنامه ناجیها</a>'; ?>
	</div>



	<div class="TabbedPanelsContent">
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[51] == 'on') echo '<a href="index.php?do=user_new">کاربر جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[52] == 'on') echo '<a href="index.php?do=user_manage">مدیریت کاربران</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[53] == 'on') echo '<a href="index.php?do=user_msg_new">پیغام جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[54] == 'on') echo '<a href="index.php?do=user_msg_manage">مدیریت پیغامها</a>  '; ?>
	</div>


	<div class="TabbedPanelsContent">
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[121] == 'on') echo '<a href="index.php?do=part_new">بخش جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[122] == 'on') echo '<a href="index.php?do=part_manage">مدیریت بخش ها</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[123] == 'on') echo '<a href="index.php?do=part_report">گزارش بخش</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	</div>


	<div class="TabbedPanelsContent">
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[131] == 'on') echo '<a href="index.php?do=tags_new">تگ جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[132] == 'on') echo '<a href="index.php?do=tags_manage">مدیریت تگ</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[133] == 'on') echo '<a href="index.php?do=tags_category_new">گروه تگ جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[134] == 'on') echo '<a href="index.php?do=tags_category_manage">مدیریت گروه تگها</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[135] == 'on') echo '<a href="index.php?do=tags_report">گزارش تگ</a>  '; ?>
	</div>

	<div class="TabbedPanelsContent">
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[114] == 'on') echo '<a href="index.php?do=coupon_new">گیفت کارت جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[115] == 'on') echo '<a href="index.php?do=coupon_manage">مدیریت گیفت کارتها</a>     '; ?>
	</div>


	<div class="TabbedPanelsContent">
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[116] == 'on') echo '<a href="index.php?do=closet_new">درج کمد جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[117] == 'on') echo '<a href="index.php?do=closet_manage">مدیریت کمدها</a>     '; ?>
	</div>


	<div class="TabbedPanelsContent">
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[71] == 'on') echo '<a href="index.php?do=report_ticket">گزارش بلیط ها</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[72] == 'on') echo '<a href="index.php?do=report_personel_time">گزارش ورود و خروج پرسنل</a> &nbsp;&nbsp;&nbsp;&nbsp;   '; ?> 
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[73] == 'on') echo '<a href="index.php?do=report_costs">گزارش هزینه ها</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[74] == 'on') echo '<a href="index.php?do=report_class">گزارش آموزش</a>  &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP /*if ($admin->login_check() == 'FULL_ACCESS' or $permit[75] == 'on') echo '<a href="index.php?do=report_contract">گزارش قرارداد ها</a> &nbsp;&nbsp;&nbsp;&nbsp;    ';*/ ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[76] == 'on') echo '<a href="index.php?do=report_account">گزارش حسابهای بانکی</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[77] == 'on') echo '<a href="index.php?do=report_settle">گزارش واریز وجه</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[78] == 'on') echo '<a href="index.php?do=report_paystubs">گزارش فیش حقوقی</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	</div>



	<div class="TabbedPanelsContent">
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[31] == 'on') echo '<a href="index.php?do=class_new">سالن جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[32] == 'on') echo '<a href="index.php?do=class_manage">مدیریت سالن ها</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[33] == 'on') echo '<a href="index.php?do=card_new">صدور کارت سالن جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[34] == 'on') echo '<a href="index.php?do=card_manage">مدیریت کارت های سالن</a>   '; ?>
	</div>


	<div class="TabbedPanelsContent">
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[61] == 'on') echo '<a href="index.php?do=cost_group_new">گروه هزینه جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[62] == 'on') echo '<a href="index.php?do=cost_group_manage">مدیریت گروه هزینه ها</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[63] == 'on') echo '<a href="index.php?do=cost_new">ثبت هزینه</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[64] == 'on') echo '<a href="index.php?do=cost_manage">مدیریت هزینه ها</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[65] == 'on') echo '<a href="index.php?do=cost_report">گزارشات</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[66] == 'on') echo '<a href="index.php?do=cost_payment_new">دریافت کارت آموزشی جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[69] == 'on') echo '<a href="index.php?do=costract_payment_new">دریافت قرارداد جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[67] == 'on') echo '<a href="index.php?do=costract_payment_manage">مدیریت دریافتهای قرارداد</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[68] == 'on') echo '<a href="index.php?do=cost_payment_manage">مدیریت دریافتهای کارت آموزشی</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	</div>


	<div class="TabbedPanelsContent">
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[81] == 'on') echo '<a href="index.php?do=contract_new">قرارداد جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[82] == 'on') echo '<a href="index.php?do=contract_manage">مدیریت قرارداد ها</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	</div>


	<div class="TabbedPanelsContent">
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[91] == 'on') echo '<a href="index.php?do=account_new">حساب جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[92] == 'on') echo '<a href="index.php?do=account_manage">مدیریت حسابها</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[93] == 'on') echo '<a href="index.php?do=account_transfer">انتقال وجه</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[94] == 'on') echo '<a href="index.php?do=account_settle">واریز وجه</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	</div>


	<div class="TabbedPanelsContent">
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[101] == 'on') echo '<a href="index.php?do=xperson_new">طرف حساب جدید</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[102] == 'on') echo '<a href="index.php?do=xperson_manage">مدیریت طرف حسابها</a> &nbsp;&nbsp;&nbsp;&nbsp;    '; ?>
	</div>
	
	
	<div class="TabbedPanelsContent">
	<?PHP /*<a href="index.php?do=setting">تنظیمات</a> &nbsp;&nbsp;&nbsp;&nbsp;  */?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[120] == 'on') echo '<a href="index.php?do=backup">پشتیبان گیری</a> &nbsp;&nbsp;&nbsp;&nbsp;  '; ?>
	<?PHP if ($admin->login_check() == 'FULL_ACCESS' or $permit[150] == 'on') echo '<a href="index.php?do=changeinfo">تنظیمات عمومی</a> &nbsp;&nbsp;&nbsp;&nbsp;  '; ?>
	
	</div>
	
  </div>
</div>
