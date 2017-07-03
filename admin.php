<?php ob_start() ?>
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

$base_folder  = "";
$mainscript   = $_SERVER['PHP_SELF']."?";
$adminaction  = $mainscript."action=admin_actions";
$content      = "";
$rowclass1    = "tablerow1";
$rowclass2    = "tablerow2";
$selectedasc  = "selectedasc";
$selecteddesc = "selecteddesc";
$unselected   = "unselected";

require $base_folder."config.php";
require $base_folder."common.php";
require $base_folder."weapons.php";
require $base_folder."gametypes.php";
require $base_folder."rating.php";
require $base_folder."functions.php";

if($_POST)   foreach($_POST   as $Key=>$Value) $$Key = $Value;
if($_COOKIE) foreach($_COOKIE as $Key=>$Value) $$Key = $Value;
if($_GET)    foreach($_GET    as $Key=>$Value) $$Key = $Value;
if($_SERVER) foreach($_SERVER as $Key=>$Value) $$Key = $Value;
if($_ENV)    foreach($_ENV    as $Key=>$Value) $$Key = $Value;

DBConnect();
MakeTableNames();

$loginform = "<form method=\"post\" action=\"$mainscript\">\n
              Username <input type=\"text\" name=\"username\" size=\"25\" maxlength=\"40\"></input><br>\n
              Password <input type=\"password\" name=\"password1\" size=\"25\" maxlength=\"40\"></input><br>\n
              <input type=\"submit\" name=\"loginsubmit\" value=\"Login\">\n
              </form>\n";

$logoutform = "<center><form method=\"post\" action=\"$mainscript\">\n
               <input type=\"submit\" name=\"logoutsubmit\" value=\"Logout\">\n
               </form></center>\n";
               
unset($auth_str);

if(isset($auth_string)) {
  $auth_str = $auth_string;
}
         
if(isset($logoutsubmit)) {
  unset($auth_str);
  setcookie("auth_string", "", time() + (86400*3), "/");
}

if(isset($loginsubmit)) {
  if($username == $admin_name && $password1 == $admin_pass) {
    $auth_str = md5($username)."|".md5($password1);
    setcookie("auth_string", $auth_str, time() + (86400*3), "/");
  }
}

if(isset($auth_str)) {
  $auth_str = explode("|", $auth_str);  
  if($auth_str["0"] != md5($admin_name) || $auth_str["1"] != md5($admin_pass)) {
    echo $loginform;
    exit;
  }
} else {
  echo $loginform;
  exit;
}

require $base_folder."phemplate_class.php";

if(!isset($action) || $action == "") $action = "admin_start";

if(file_exists($base_folder."modules/admin/$action.php")) {
  include $base_folder."modules/admin/$action.php";
} else {
  $content = "<P class=\"error\">Error: Module '$action' does not exist</P>";    
}

$tpl = new phemplate();
$tpl->set_file("main", $base_folder."templates/admin/admin_main.htm");
$tpl->set_var("website_title", $website_title);
$tpl->set_var("charset",       $charset);
$tpl->set_var("mainscript",    $mainscript);
$tpl->set_var("version",       $version);
$tpl->set_var("base",          $base_folder);
$tpl->set_var("content", $content);
echo $tpl->process("", "main", 1);

$mtime2 = explode(" ", microtime());
$endtime = $mtime2[1] + $mtime2[0];
$totaltime = ($endtime - $starttime);
$totaltime = number_format($totaltime, 3);

//echo "<center><font size=\"1\" face=\"Tahoma, Verdana\" color=\"#999999\"><br><br>Page generated in $totaltime seconds</font></center>";
echo $logoutform;
?>

<div style="visibility:hidden; font-size:xx-small;">admin.php 1.0.0</div>