<?php

class Auth
{
	public static $token;
	public static $userRole;
	public static $userId;
	
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
			self::$userId = $user_id;
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
			//self::$userId=$row['user_id'];
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
			self::$userId = $user_id;
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
	
	public static function SaveAction()
	{
		global $DB;
		$stmt = $DB->prepare("INSERT INTO actions (user_id, url, ip) VALUES (?,?,?)");
		$stmt->bind_param('iss', self::$userId, $_SERVER['REQUEST_URI'], $_SERVER['REMOTE_ADDR']);
		$stmt->execute();
		return self::$token;
	}
	
	public static function Access()
	{
		global $DB;
		$access = 1;
		if(Manager::$module == "dialogs" && Manager::$action == "open")
		{
			$user_id = Auth::$userId;
			$type = 'dialog';
			$target_id = Manager::$id;
			$access = 0;
		}
		
		
		if($access==0)
		{
			$stmt = $DB->prepare("SELECT * FROM permissions WHERE user_id=? AND type=? AND target_id=?");
			$stmt->bind_param('isi', $user_id, $type, $target_id);
			
			$stmt->execute();
			
			$result = $stmt->get_result();
			
			while ($row = $result->fetch_assoc())
			{
				
				$access=$row['access'];
			}
			$stmt->close();
		}
		
		if($access != 1)
			header("Location:/index.php?module=access&action=denied");
	}
	
	public static function GetLog()
	{
		global $DB;
		$stmt = $DB->prepare("SELECT a.date as date, (SELECT CONCAT(last_name, ' ', first_name, ' ', second_name) FROM profiles WHERE user_id=a.user_id) as user_name, a.url as url, a.ip as ip FROM actions a ORDER BY date DESC");
		//$stmt->bind_param('ss', $curDate, $token);
		$stmt->execute();
		$result = $stmt->get_result();
		
		$temp = '<table class="table table-hover table-secondary"> 
				  <thead>
					<tr>
					  <th scope="col">Дата</th>
					  <th scope="col">Пользователь</th>
					  <th scope="col">IP</th>
					  <th scope="col">URL</th>
					</tr>
				  </thead>
				  <tbody>';
		while ($row = $result->fetch_assoc())
		{
			$temp.='<tr>
				  <td>'.$row['date'].'</td>
				  <td>'.$row['user_name'].'</td>
				  <td>'.$row['ip'].'</td>
				  <td>'.$row['url'].'</td>
				</tr>';
		}
		$temp .= '</tbody></table>';
		return $temp;
	}
}
?>