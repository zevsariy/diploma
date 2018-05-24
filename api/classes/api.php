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
			else if($action == 'none') Auth::Logout(); #need Выход из учетной записи
			//else Errors::Get(2);
		}
		
		else if($module == 'courses')
		{
			if($action == 'get_courses') Courses::Get_Courses(); #Получить список курсов
			else if($action == 'get_course') Courses::Get_Course(); #Получить конкретный курс
			else if($action == 'get_by_specialty') Courses::GetBySpecialty(); #Получить курсы по специальности списком
			else if($action == 'request_one') Courses::RequestOne(); #Запросить один курс
			//else Errors::Get(2);
		}
		
		else if($module == 'tests')
		{
			if($action == 'get') Tests::Get(); #Получить тест от курса
			else if($action == 'complete') Tests::Complete(); #Завершить тестирование и записать результат  в бд
			//else Errors::Get(2);
		}
		
		else if($module == 'profile')
		{
			if($action == 'get') Profile::Get(); #Получить профиль пользователя
			//else Errors::Get(2);
		}
		
		else if($module == 'achivments')
		{
			if($action == 'get') Achivments::Get(); #Получить список достижений пользователя
			//else Errors::Get(2);
		}
		
		else if($module == 'academic_plan')
		{
			if($action == 'get') AcademicPlan::Get(); #Получить план обучения пользователя
			//else Errors::Get(2);
		}
		
		else if($module == 'competence')
		{
			if($action == 'get') Competence::Get(); #Получить список компетенций пользователя
			else if($action == 'get_all') Competence::Get_All(); #Получить список всех компетенций по специальностям
			//else Errors::Get(2);
		}
		else if($module == 'chat')
		{
			if($action == 'send') Chat::Send(); #Отправить сообщение
			else if($action == 'get') Chat::Get(); #Получить сообщения
			//else Errors::Get(2);
		}
		else if($module == 'specialties')
		{
			if($action == 'get_all') Specialties::Get_all(); #Отправить сообщение
			//else Errors::Get(2);
		}
		else
		{
			//Errors::Get(1);
		}
	}
}
?>