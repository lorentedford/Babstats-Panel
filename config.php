<?php
/*
 * Copyright (c) 2003, Tomas Stucinskas a.k.a Baboon
 * All rights reserved.
 *
 * Redistribution and use with or without modification, are
 * permitted provided that the following conditions are met:
 *
 * Redistributions must retain the above copyright notice.
 * File licence.txt must not be removed from the package.
 *
 * Author        : Tomas Stucinskas a.k.a Baboon
 * E-mail        : baboon@ai-hq.com
 */

// if($_GET["version"]) {
	// echo 'config.php 1.0.0';
	// die();
// }

// Database settings
$dbhost     = "localhost";	// Database host
$dbname     = "";	// Database name
$dbusername = "";	// Database user name
$dbuserpw   = "";	// Database password

$tablepre   = "chronos";    // Table prefix. Change this if you want to have several 
                            // installations of stats on the same database. Do not edit
                            // after stats were installed!
							
$tablepre2   = "chronos_m"; // Table prefix for monthly stats. Change this if you want to have several 
                            // installations of stats on the same database. Do not edit
                            // after stats were installed!

$admin_name = "admin";    // Admin username
$admin_pass = "password";    // Admin password

//---------------------------------- FTP details ----------------------------------//
$ftpInfoArr["fUser"]   = "*******";                // FTP Username
$ftpInfoArr["fPass"]   = "*******";                // FTP Password
$ftpInfoArr["fRoot"]   = "/public_html/";          // FTP Root Directory
$ftpInfoArr["fServer"] = 'localhost';              // FTP Server
//---------------------------------- FTP details ----------------------------------//

$website_title = "Babstats Updated March 17th, 2018";       // Website title
$charset       = "windows-1252";   // Character encoding (windows-1252 for english)

$playerstoshow = 25;  // How many players/maps to show per page
$averagelimit  = 0;   // Player must play this number of seconds before his stats show up
$percenttowin  = 60;  // Percent of game time player must play in order the win was recorded
$timefactor    = 60;  // Do not edit - number of seconds in the minute.

$date = mktime(0, 0, 0, date("m")  , date("d"), date("Y")); // Do not edit - todays date.
$today = date("Y-m-d", $date) ; // Do not edit - formatted date.
$date2 = mktime(0, 0, 0, date("m")  , date("d")-1, date("Y")); // Do not edit - yesterdays date.
$yesterday = date("Y-m-d", $date2) ; // Do not edit - formatted date.
$dow = date("l"); // Do not edit - current day.
$cur_mon = date("m"); // Do not edit - current month.
$cur_year = date("Y"); // Do not edit - current year.

?>