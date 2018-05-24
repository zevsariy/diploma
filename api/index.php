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
$DB = new mysqli("localhost", "035848010_diplom", "31203120", "zevsariy_diplom");
//get JSONKA from APP
//$input = json_decode($_POST['jsonka'], true);

//Create API main class
//API::Decode();
//Do task by Module that is getted
//API::Apply(); 

Subjects::Save();
//Output prepared JSON
Output::View();
?>