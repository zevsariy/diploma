<?php

class API
{
	public static $module;
	public static $action;
	public static $user_id;
	public static $id;
	
	public static function Decode()
	{
		 $input = json_decode($_POST['jsonka'], true);
		 if($input != '')
		 {
			 self::$module = $input['module'];
			 self::$action = $input['action']; 
		 }
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
			else if($action == 'getalljson') Subjects::GetAllJson(); #need Выход из учетной записи
			//else Errors::Get(2);
		}
		
	}
}
?>