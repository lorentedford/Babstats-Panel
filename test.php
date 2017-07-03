<?php
require("config.php");
// $dbhost     = "localhost";	
// $dbname     = "vow_stats";	
// $dbusername = "vow_stats";	
// $dbuserpw   = "SxX9Mgsm";	

$conn = mysql_connect($dbhost, $dbusername, $dbuserpw) or die(mysql_error());
$db   = mysql_select_db($dbname, $conn) or die(mysql_error());
$question = mysql_query("SELECT * FROM `chronos_players`;", $conn) or die(mysql_error());
$i = 0;
echo "Connected!";
?>

<table width="100%">
	<tr>
		<td>ID</td>
		<td>Player Names...</td>
	<tr>

<?php
while ($loop = mysql_fetch_array($question)){
	$i++;
	echo "<tr>";
	echo "<td>".$i."</td>";
	echo "<td>".base64_decode($loop['name'])."</td>";
	echo "</tr>";
	if ($i == 100){EXIT;}
}
?>
</table>