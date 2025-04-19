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

?>
<div style="direction:rtl; text-align:center; color:#999; padding:10px; border-top:1px dotted #0066FF; margin-top:30px;">
کلیه حقوق مادی و معنوی این نرم افزار متعلق به ComplexAdmin می باشد
</div>
</div>
</center>
<script type="text/javascript">
<!--
var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
//-->
</script>
<?PHP
if (isset($_SESSION['login']))
{
    ?>
    <script>
    window.onload = function (){
         var time = new Date().getTime();
         $(document.body).bind("mousemove keypress", function(e) {
             time = new Date().getTime();
         });

         function refresh() {
             if(new Date().getTime() - time >= <?=$autologoutmin * 60 * 1000?>) 
                 window.location.reload(true);
             else 
                 setTimeout(refresh, 10000);
         }

         setTimeout(refresh, 10000);
     }
    </script>
    <?PHP
}
?>
</div>
</body>
</html>
