<?php

class PlanEditor
{
	public static $module;
	public static $script;
	
	// public static function GetSubjects($plan_id)
	// {
		// global $DB; 
		// $stmt = $DB->prepare("SELECT * FROM subjects WHERE plan_id=? ORDER BY position");
		// $stmt->bind_param('s', $plan_id);
		// $stmt->execute();
		// $result = $stmt->get_result();
		
		// while ($row = $result->fetch_assoc())
		// {
			// if($row['bg_color'] == '') $row['bg_color']="#FFF";
			// if($row['text_color'] == '') $row['text_color']="#000"; 
			// self::$script.="add_new_item(".$row['id'].",'".$row['name']."',".$row['semester'].",".$row['size'].",".$row['type'].",".$row['lections'].",".$row['seminars'].",".$row['labs'].",".$row['selfwork'].",".$row['part'].",".$row['kurs_project'].",".$row['kurs_work'].",'".$row['bg_color']."','".$row['text_color']."');";
		// }
		// $stmt->close(); 
		// return self::$script;
	// }
	
	public static function GetOpParts()
	{
		global $DB;
		$stmt = $DB->prepare("SELECT * FROM op_parts");
		$stmt->execute();
		$result = $stmt->get_result();
		
		$row = $result->fetch_all(MYSQLI_ASSOC);
		
		return $row;
	}
	
	public static function GetPlan($id)
	{
		
		global $DB;
		$stmt = $DB->prepare("SELECT id, type, name, year, semesters, hours, (SELECT name FROM specialties WHERE id=spec_id) as spec_name, (SELECT code FROM specialties WHERE id=spec_id) as spec_code FROM plans WHERE id=?");
		$stmt->bind_param('i', $id);
		$stmt->execute();
		$result = $stmt->get_result();
		
		while ($row = $result->fetch_assoc())
		{
			$stmt->close();
			return $row;
		}
		$stmt->close(); 
		return -1;
	}
	
	public static function Apply()
	{
		#Подготавливаю параметры для дальнейшей простоты работы
		$module = self::$module;
		$action = self::$action;
		
		#Выбор модуля с последующим выбором события

		if($module == 'auth')
		{
			//if($action == 'login') Auth::Login();
			//else if($action == 'logout') Auth::Logout();
			//else Errors::Get(2);
		}
		else if($module == 'courses')
		{
			//if($action == 'get_courses') Courses::Get_Courses();
			//else if($action == 'get_course') Courses::Get_Course();
			//else if($action == 'get_by_specialty') Courses::GetBySpecialty();
			//else if($action == 'request_one') Courses::RequestOne();
			//else Errors::Get(2);
		}
		else
		{
			//Errors::Get(1);
		}
	}
}
?>