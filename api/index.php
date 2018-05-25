<?php
header("Content-type: application/json; charset=utf-8");
//Include all classes from classes folder

$dir = __DIR__ ."/classes";
$dh  = opendir($dir);
while ($filename = readdir($dh)) {
	if($filename != '..' && $filename != '.')
		include_once($dir.'/'.$filename);
}	
//Connecting to DB with new Class
//$DB = new mysqli("localhost", "035848010_diplom", "31203120", "zevsariy_diplom");
$DB = new mysqli("localhost", "root", "LoGiTeCH1995", "diploma_tst");
$DB->set_charset("utf8");
//get JSONKA from APP
//$input = json_decode($_POST['jsonka'], true);

//Create API main class
Output::Decode();
//Do task by Module that is getted
Output::Apply(); 
Output::View();
?>