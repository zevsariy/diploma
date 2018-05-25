<?php
class Output
{
	public static $errors = array();
	public static $data = array();
	public static $module;
	public static $action;
	public static $id;
	
	public static function Clean($string) {
		return iconv('utf-8', 'utf-8//IGNORE', $string); 
	}
	
	public static function Decode()
	{
		 // $input = json_decode($_POST['jsonka'], true);
		 // if($input != '')
		 // {
			 // self::$module = $input['module'];
			 // self::$action = $input['action']; 
		 // }
		self::$module = $_GET['module'];
		self::$action = $_GET['action']; 
		self::$id = $_GET['id'];
	}
	
	public static function View()
	{
		$JSON = array(
		"errors" => self::$errors,
		"data" => self::$data
		);
		echo json_encode($JSON);
	}
	

	
	public static function Apply()
	{
		#Подготавливаю параметры для дальнейшей простоты работы
		$module = self::$module;
		$action = self::$action;
		#Выбор модуля с последующим выбором события
		if($module == 'subjects')
		{
			if($action == 'save') Subjects::Save(); #Авторизация в приложении
			else if($action == 'getalljson') Subjects::GetAllJson($_GET['id']); #need Выход из учетной записи
			//else Errors::Get(2);
		}
		
	}
}
?>