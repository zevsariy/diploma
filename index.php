<?php
header('Content-Type: text/html; charset=utf-8');
$dir = __DIR__ ."/modules";
$dh  = opendir($dir);
while ($filename = readdir($dh)) {
	if($filename != '..' && $filename != '.')
		include_once($dir.'/'.$filename);
}	
//$DB = new mysqli("localhost", "035848010_diplom", "31203120", "zevsariy_diplom");
$DB = new mysqli("localhost", "root", "LoGiTeCH1995", "diploma_tst");
$DB->set_charset("utf8");
Manager::Decode();
Manager::Render();

?>
