<?php
class Output
{
	public static $errors = array();
	public static $data = array();
	
	public static function Clean($string) {
		return iconv('utf-8', 'utf-8//IGNORE', $string); 
	}

	public static function View()
	{
		global $_POST, $input;
		$input = json_decode($_POST['jsonka'], true);
		$JSON = array(
		"errors" => self::$errors,
		"data" => self::$data
		);
		
		
		//$error_flag = json_last_error();
		
		/*if($error_flag != JSON_ERROR_NONE)
		{
			self::$data = array();
			self::$errors = array();
		}
		
		switch ($error_flag) {
			case JSON_ERROR_NONE:
				echo '';
			break;
			case JSON_ERROR_DEPTH:
				Errors::Get(2001);
			break;
			case JSON_ERROR_STATE_MISMATCH:
				Errors::Get(2002);
			break;
			case JSON_ERROR_CTRL_CHAR:
				Errors::Get(2003);
			break;
			case JSON_ERROR_SYNTAX:
				Errors::Get(2004);
			break;
			case JSON_ERROR_UTF8:
				Errors::Get(2005);
			break;
			default:
				Errors::Get(2006);
			break;
		}
		
		if($error_flag != JSON_ERROR_NONE)
		{
			$JSON = array(
			"errors" => self::$errors,
			"data" => self::$data
			);
			echo json_encode($JSON);
		}
		*/
	}
}
?>