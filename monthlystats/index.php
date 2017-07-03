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
 * Module        : Monthly
 */

error_reporting(E_ERROR | E_WARNING | E_PARSE);

$mtime1    = explode(" ", microtime());
$starttime = $mtime1[1] + $mtime1[0];

$base_folder  = "";
$mainscript   = $_SERVER['PHP_SELF']."?";
$url          = $_SERVER['REQUEST_URI'];
$url_arr      = explode("/", $url);
$totalscript  = "http://".$_SERVER['HTTP_HOST']."/".$url_arr[1]."/index.php?";
$content      = "";
$rowclass1    = "tablerow1";
$rowclass2    = "tablerow2";
$selectedasc  = "selectedasc";
$selecteddesc = "selecteddesc";
$unselected   = "unselected";

require $base_folder."../config.php";
require $base_folder."../common.php";
require $base_folder."../weapons.php";
require $base_folder."../gametypes.php";
require $base_folder."../rating.php";
require $base_folder."../functions.php";

if($HTTP_POST_VARS)   foreach($HTTP_POST_VARS   as $Key=>$Value) $$Key = $Value;
if($HTTP_COOKIE_VARS) foreach($HTTP_COOKIE_VARS as $Key=>$Value) $$Key = $Value;
if($HTTP_GET_VARS)    foreach($HTTP_GET_VARS    as $Key=>$Value) $$Key = $Value;
if($HTTP_SERVER_VARS) foreach($HTTP_SERVER_VARS as $Key=>$Value) $$Key = $Value;
if($HTTP_ENV_VARS)    foreach($HTTP_ENV_VARS    as $Key=>$Value) $$Key = $Value;

DBConnect();
MakeTableNames();

require "../phemplate_class.php";

if(!isset($action) || $action == "") $action = "kill_stats";

if(file_exists("modules/$action.php")) {
  include "modules/$action.php";
} else {
  $content = "<P class=\"error\">Error: Module '$action' does not exist</P>";    
}

$tpl = new phemplate();
$tpl->set_file("main", "templates/main.htm");
$tpl->set_var("website_title", $website_title);
$tpl->set_var("charset",       $charset);
$tpl->set_var("mainscript",    $mainscript);
$tpl->set_var("totalscript",    $totalscript);
$tpl->set_var("version",       $version);
$tpl->set_var("base",          $base_folder);
$tpl->set_var("content", $content);
echo $tpl->process("", "main", 1);

$mtime2 = explode(" ", microtime());
$endtime = $mtime2[1] + $mtime2[0];
$totaltime = ($endtime - $starttime);
$totaltime = number_format($totaltime, 3);

//echo "<center><font size=\"1\" face=\"Tahoma, Verdana\" color=\"#999999\"><br><br>Page generated in $totaltime seconds</font></center>";
?>

<div style="visibility:hidden; font-size:xx-small;">monthlystats/index.php 1.0.0</div>