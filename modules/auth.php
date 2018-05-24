<?php

class Auth
{
	public static $token;
	public static $userRole;
	
	public static function GetToken($login, $password)
	{
		global $DB;
		$stmt = $DB->prepare("SELECT * FROM users WHERE login=? and password=?");
		$stmt->bind_param('ss', $login, md5($password));
		$stmt->execute();
		$result = $stmt->get_result();
		$user_id = false;
		while ($row = $result->fetch_assoc())
		{
			$user_id=$row['id'];
		}
		if(!$user_id==false)
		{
			self::GenerateToken();
			self::GetUserRole();
			$stmt = $DB->prepare("INSERT INTO tokens (value, user_id) VALUES (?,?)");
			$stmt->bind_param('ss', self::$token, $user_id);
			$stmt->execute();
			return self::$token;
		}
		$stmt->close(); 
		
		return false;
	}
	
	public static function GetUserRole()
	{
		global $DB;
		$stmt = $DB->prepare("SELECT (SELECT role FROM users WHERE id=user_id) as role FROM tokens WHERE value=?");
		$stmt->bind_param('s', self::$token);
		$stmt->execute();
		$result = $stmt->get_result();
		self::$userRole = 0;
		while ($row = $result->fetch_assoc())
		{
			self::$userRole=$row['role'];
		}
		$stmt->close(); 
	}
	
	public static function GenerateToken()
	{
		self::$token = sha1('Кодова фраза'.microtime());
	}
	
	public static function Check($token)
	{
		global $DB;
		$stmt = $DB->prepare("SELECT * FROM tokens WHERE date > ? - INTERVAL 1 DAY AND value=?");
		$curDate = date('Y-m-d G:i:s');
		$stmt->bind_param('ss', $curDate, $token);
		$stmt->execute();
		$result = $stmt->get_result();
		$user_id = false;
		while ($row = $result->fetch_assoc())
		{
			$user_id=$row['user_id'];
		}
		$stmt->close();
		
		if($user_id == false)
			return false;
		else
		{
			self::$token = $token;
			self::GetUserRole();
			return true;
		}
	}
	
	public static function Logoff()
	{
		session_destroy();
		$_SESSION = array();
		header("Location:/index.php"); 
	}
	
}
?>