<?php
require_once('vendor/autoload.php'); // ставится ТОЛЬКО через Composer!

header('Content-Type: text/html; charset=utf-8');
session_start();

$dir = __DIR__ ."/modules";
$dh  = opendir($dir);
while ($filename = readdir($dh)) {
	if($filename != '..' && $filename != '.')
		include_once($dir.'/'.$filename);
}	

// $DB = new mysqli("localhost", "035848010_diplom", "31203120", "zevsariy_diplom");
$DB = new mysqli("localhost", "root", "LoGiTeCH1995", "diploma_tst");
$DB->set_charset("utf8");
Manager::Decode();
Manager::Render();

?>
