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

error_reporting(E_ERROR | E_WARNING | E_PARSE);

$mtime1    = explode(" ", microtime());
$starttime = $mtime1[1] + $mtime1[0];

$base_folder  = "./";
$mainscript   = $_SERVER['PHP_SELF']."?";
$monthlyscript   = "monthlystats/index.php?";
$content      = "";
$rowclass1    = "tablerow1";
$rowclass2    = "tablerow2";
$selectedasc  = "selectedasc";
$selecteddesc = "selecteddesc";
$unselected   = "unselected";

require "config.php";
require "common.php";
require "weapons.php";
require "gametypes.php";
require "rating.php";
require "functions.php";

if($_POST)   foreach($_POST   as $Key=>$Value) $$Key = $Value;
if($_COOKIE) foreach($_COOKIE as $Key=>$Value) $$Key = $Value;
if($_GET)    foreach($_GET    as $Key=>$Value) $$Key = $Value;
if($_SERVER) foreach($_SERVER as $Key=>$Value) $$Key = $Value;
if($_ENV)    foreach($_ENV    as $Key=>$Value) $$Key = $Value;

DBConnect();
MakeTableNames();

require "phemplate_class.php";

if(!(@mysql_query("SELECT * FROM $awards_table"))) {
  $file = "error";
  $content = "Click <a href=\"".$base_folder."install.php\"><b><u>Here</u></b></a> to install the database.";
} else {
  $files = array('install.php', 'update.php');
  foreach($files as $value) {
    if (file_exists($base_folder.$value)) {
      $file = "error";
      $errs[] = $value;
      $content = "Please delete the following files before proceeding:<br><br>";
      $i = 0;
      foreach($errs as $value){
        $i++;
        if(file_exists($base_folder.$value)) {
          $content .= "$i: $base_folder$value<br>";
	    }
      }
    } 
  }
}

if($content == "") { 
  if(!isset($action) || $action == "") $action = "start";
  if(file_exists("modules/$action.php")) {
    include "modules/$action.php";
  } else {
    $content = "<P class=\"error\">Error: Module '$action' does not exist</P>";    
  }
}

/*$fp = file("http://www.babstats.com/version/neos_version.txt");
$update = "";
$latest = trim($fp[0]);
if($latest > $version) $update = "<table class=\"link_col\" width=\"790\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
                                    <tr class=\"header\">
								      <td align=\"center\">Neos.Chronos version $fp[0] is available for download</td>
								    </tr>
								  </table>";*/

$tpl = new phemplate();
$tpl->set_file("main", "templates/main.htm");
$tpl->set_var("website_title", $website_title);
$tpl->set_var("charset",       $charset);
$tpl->set_var("mainscript",    $mainscript);
$tpl->set_var("monthlyscript", $monthlyscript);
$tpl->set_var("version",       $version);
$tpl->set_var("update",        $update);
$tpl->set_var("base",          $base_folder);
$tpl->set_var("content", $content);
echo $tpl->process("", "main", 1);

$mtime2 = explode(" ", microtime());
$endtime = $mtime2[1] + $mtime2[0];
$totaltime = ($endtime - $starttime);
$totaltime = number_format($totaltime, 3);

echo "<center><font size=\"1\" face=\"Tahoma, Verdana\" color=\"#999999\"><br><br>Page generated in $totaltime seconds</font></center>";
?>

<div style="visibility:hidden; font-size:xx-small;">index.php 1.0.0</div>