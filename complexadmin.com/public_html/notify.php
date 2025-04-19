<?PHP
@session_start();
if (file_exists("_config.php"))
	require_once("_config.php");

$connection_link = mysqli_connect(_HOST , _USERNAME , _PASSWORD);
mysqli_select_db($connection_link , _DBNAME);


if (isset($_SESSION['login']))
{
	if (isset($_GET['php']) and $_GET['php'] == 'work')
	{
		require_once('cron.php');
	}
	else
	{
		
		?>
		
		<script>
		$(document).ready(function(e) {
			window.setInterval("notify()" , <?=($admin->result($admin->sql("select autoupdatetime from admin") , 0) * 60 * 1000)?>);
		});
		
		function notify()
		{
			$('#notify').css('visibility' , 'visible');
			$.ajax({
				url:"notify.php?php=work",
				type:"POST",
				success: function(data) {
					$("#notify").html(data);
				},
			});
			$('#notify').css('visibility' , 'hidden');
		}
		
		</script>
		
		<div style="position:fixed; left:10px; bottom:10px; width:300px; padding:15px; border-radius:15px;">
			<div style="margin-top:15px; visibility:hidden" id="notify">
			در حال بروزرسانی اطلاعات ...
			</div>
		</div>
		
		<?PHP
		
	}
}
?>