<?php
class UserProfile
{
	public static function GetToContent($content)
	{
		$content=str_replace("{{{user_name}}}", "Администратор системы", $content);
		$content=str_replace("{{{user_photo}}}", "/CSS/images/no-avatar.png", $content);
		return $content;
	}
}
?>