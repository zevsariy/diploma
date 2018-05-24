<?php

class Menu
{
	public static function GetToContent($content)
	{
		if(Auth::$userRole == 0)
		{
			$user_sidebar_menu = file_get_contents("./templates/menu/sidebar/0.html");
			$content=str_replace("{{{user_sidebar_menu}}}", $user_sidebar_menu, $content);
			
			$user_top_menu = file_get_contents("./templates/menu/top/0.html");
			$content=str_replace("{{{user_top_menu}}}", $user_top_menu, $content);
		}
		else if(Auth::$userRole == 1)
		{
			$user_sidebar_menu = file_get_contents("./templates/menu/sidebar/1.html");
			$content=str_replace("{{{user_sidebar_menu}}}", $user_sidebar_menu, $content);
			
			$user_top_menu = file_get_contents("./templates/menu/top/1.html");
			$content=str_replace("{{{user_top_menu}}}", $user_top_menu, $content);
		}
		return $content;
	}
}
?>