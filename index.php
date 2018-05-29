<?php
header('Content-Type: text/html; charset=utf-8');
session_start();
if (!function_exists('mb_str_replace')) {
	function mb_str_replace($search, $replace, $subject, &$count = 0) {
		if (!is_array($subject)) {
			// Normalize $search and $replace so they are both arrays of the same length
			$searches = is_array($search) ? array_values($search) : array($search);
			$replacements = is_array($replace) ? array_values($replace) : array($replace);
			$replacements = array_pad($replacements, count($searches), '');
			foreach ($searches as $key => $search) {
				$parts = mb_split(preg_quote($search), $subject);
				$count += count($parts) - 1;
				$subject = implode($replacements[$key], $parts);
			}
		} else {
			// Call mb_str_replace for each subject in array, recursively
			foreach ($subject as $key => $value) {
				$subject[$key] = mb_str_replace($search, $replace, $value, $count);
			}
		}
		return $subject;
	}
}


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
