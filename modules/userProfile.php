<?php
class UserProfile
{
	public static function GetToContent($content)
	{
		global $DB;
		$stmt = $DB->prepare("SELECT CONCAT(last_name, ' ', first_name, '<br>', second_name) as name, photo as image FROM profiles WHERE user_id=?");
		$stmt->bind_param('i', Auth::$userId);
		$stmt->execute();
		$result = $stmt->get_result();
		while ($row = $result->fetch_assoc())
		{
			$content=str_replace("{{{user_name}}}", $row['name'], $content);
			$content=str_replace("{{{user_photo}}}", $row['image'], $content);
		}
		return $content;
	}
}
?>