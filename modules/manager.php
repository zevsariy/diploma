<?php

class Manager
{
	public static $module;
	public static $action;
	public static $user_id;
	public static $id;
	public static $content;
	
	public static function Decode()
	{
		session_start();
		if(!isset($_SESSION['token']) | !Auth::Check($_SESSION['token']))
		{
			$_GET['module'] = "auth";
			$_GET['action'] = 'login';
		}
		else if(empty($_GET))
		{
			$_GET['module'] = "plans";
			$_GET['action'] = 'view';
		}
		$url = $_SERVER['HTTP_X_FORWARDED_PROTOCOL']."://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
		$arUrl = parse_url($url);
		
		if(isset($_GET['module']))
			self::$module = $_GET['module'];
		else
			self::$module = "404";
		
		if(isset($_GET['action']))
			self::$action = $_GET['action']; 
		else
			self::$action = "view";
		
		if(isset($_GET['id']))
			self::$id = $_GET['id']; 
		else
			self::$id = "1";
	}

	public static function Render()
	{
		if(self::$module == "plan_editor")
		{
			if(self::$action == "edit")
			{
				self::$content=file_get_contents("./templates/plan_editor.html");
				self::$content = str_replace("{{{js_editor_subject001}}}", file_get_contents("./JS/editor_subjects.js"), self::$content);
				$PlanData=json_encode(PlanEditor::GetPlan(self::$id),JSON_UNESCAPED_UNICODE).";";
			
				
				$op_parts_finished = "{";
				$op_parts_colors = "{";
				$op_parts=PlanEditor::GetOpParts();
				$num=0;
				$max=count($op_parts);
				foreach($op_parts as $op_part)
				{
					$num++;
					$op_parts_finished.="'".$op_part['id']."':'".$op_part['name']."'";
					$op_parts_colors.="'".$op_part['id']."':{'bg_color': '".$op_part['bg_color']."', 'text_color': '".$op_part['text_color']."'}";
					if($num!=$max)
					{
						$op_parts_finished.=",";
						$op_parts_colors.=",";
					}
				}
				$op_parts_finished.="}";
				$op_parts_colors.="}"; 
				
				$items=PlanEditor::GetSubjects(self::$id);
				
				self::$content=str_replace("{{{js_editor_subject002}}}", $PlanData, self::$content);
				self::$content=str_replace("{{{js_editor_subject_items}}}", $items, self::$content);
				self::$content=str_replace("{{{js_editor_subject003}}}", $op_parts_finished, self::$content);
				self::$content=str_replace("{{{js_editor_subject004}}}", $op_parts_colors, self::$content);
			}
			else if(self::$action == "embed")
			{
				self::$content=file_get_contents("./templates/plan_editor_embed.html");
				self::$content = str_replace("{{{js_editor_subject001}}}", file_get_contents("./JS/embed.js"), self::$content);
				$PlanData=PlanEditor::GetPlan(self::$id);
				$script="var semesters=".$PlanData['semesters']."; var hours=".$PlanData['hours']."; add_semesters(semesters);add_hours(hours);";
				
				$op_parts_finished = "{";
				$op_parts_colors = "{";
				$op_parts=PlanEditor::GetOpParts();
				$num=0;
				$max=count($op_parts);
				foreach($op_parts as $op_part)
				{
					$num++;
					$op_parts_finished.="'".$op_part['id']."':'".$op_part['name']."'";
					$op_parts_colors.="'".$op_part['id']."':{'bg_color': '".$op_part['bg_color']."', 'text_color': '".$op_part['text_color']."'}";
					if($num!=$max)
					{
						$op_parts_finished.=",";
						$op_parts_colors.=",";
					}
				}
				$op_parts_finished.="}";
				$op_parts_colors.="}";
				
				$script.=PlanEditor::GetSubjects();
				
				self::$content=str_replace("{{{js_editor_subject002}}}", $script, self::$content);
				self::$content=str_replace("{{{js_editor_subject003}}}", $op_parts_finished, self::$content);
				self::$content=str_replace("{{{js_editor_subject004}}}", $op_parts_colors, self::$content);
			}
		}
		else if(self::$module == "plans")
		{	
			self::$content=file_get_contents("./templates/dashboard.html");
			self::$content = Menu::GetToContent(self::$content);
			self::$content = UserProfile::GetToContent(self::$content);
			if(self::$action == "view")
			{
				self::$content=str_replace("{{{dashboard_name}}}", "Таблица образовательных программ", self::$content);
				self::$content=str_replace("{{{content}}}", Plans::GetTable(), self::$content);
			}
			else if(self::$action == "add_new")
			{
				Plans::addNew();
				exit;
			}
		}
		else if(self::$module == "auth")
		{
			if(self::$action == "login")
			{
				if ($_SERVER['REQUEST_METHOD'] == 'POST')
				{
					$_SESSION['token']= Auth::GetToken($_POST['login'], $_POST['password']);
					header("Location:/index.php"); 
				}
				else
				{
					self::$content=file_get_contents("./templates/login_page.html");
					
					self::$content=str_replace("{{{content}}}", "test", self::$content);
					self::$content=str_replace("{{{user_name}}}", "test", self::$content);
					self::$content=str_replace("{{{user_photo}}}", "test", self::$content);
					self::$content=str_replace("{{{dashboard_name}}}", "test", self::$content);
				}
				
				//self::$content=str_replace("{{{js_editor_subject002}}}", $PlanData, self::$content);
			}
			else if(self::$action == "logoff")
			{
				Auth::Logoff();
			}
		}
		else
		{
			self::$content=file_get_contents("./templates/404.html");
		}
		
		echo self::$content;
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