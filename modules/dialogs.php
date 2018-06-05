<?php

class Dialogs
{
	public static function GetList()
	{
		$userId = Auth::$userId;
		global $DB;
		$stmt = $DB->prepare("SELECT id, name FROM dialogs WHERE id IN (SELECT target_id FROM permissions WHERE type='dialog' AND access='1' AND user_id=?)");
		$stmt->bind_param('i', $userId);
		$stmt->execute();
		$result = $stmt->get_result();
		$temp = '<table class="table table-hover"> 
				  <thead>
					<tr>
					  <th scope="col">ИД</th>
					  <th scope="col">Название</th>
					</tr>
				  </thead>
				  <tbody>';

    
		while ($row = $result->fetch_assoc())
		{
			$temp .='<tr onclick="window.location.href=`/?module=dialogs&action=open&id='.$row['id'].'`; return false;">
				  <td>'.$row['id'].'</td>
				  <td>'.$row['name'].'</td>
				</tr>';
		}
		$temp .= '</tbody></table>';
		
		return $temp;
	}
	
	public static function GetGuestsSelector()
	{
		global $DB;
		$stmt = $DB->prepare("SELECT u.id as id, (SELECT CONCAT(last_name, ' ', first_name, ' ', second_name) FROM profiles WHERE user_id=u.id) as name FROM users u");
		//$stmt->bind_param('i', $userId);
		$stmt->execute();
		$result = $stmt->get_result();
		$temp = '';
		while ($row = $result->fetch_assoc())
		{
			$temp .='<option value="'.$row['id'].'">'.$row['name'].'</option>';
		}
		return $temp;
	}
	
	public static function Create()
	{
		global $DB;
		$name = $_GET['name'];
        $guests = $_GET['guests'];
		
        $sql = $DB->prepare("INSERT INTO dialogs (owner, name) VALUES (?,?)");
        $sql->bind_param('is', Auth::$userId, $name);
        $sql->execute();
		$id=$DB->insert_id;
		foreach($guests as $guest)
		{
			$sql = $DB->prepare("INSERT INTO permissions (user_id, type, target_id, access) VALUES (?, 'dialog', ?, 1)");
			$sql->bind_param('ii', $guest, $id);
			$sql->execute();
		}
        header("Location:/?module=dialogs&action=open&id=".$id);
	}
	
	public static function Open($id)
	{
		global $DB;
		$stmt = $DB->prepare("SELECT m.user_id as user_id, m.date as date, m.text as text, (SELECT CONCAT(last_name, ' ', first_name, ' ', second_name) FROM profiles WHERE user_id=m.user_id) as name, (SELECT photo FROM profiles WHERE user_id=m.user_id) as image FROM messages m WHERE m.dialog_id=?");
		$stmt->bind_param('i', $id);
		$stmt->execute();
		$result = $stmt->get_result();
		$temp = '<div class="card direct-chat direct-chat-primary">
              <div class="card-body">
                <!-- Conversations are loaded here -->
                <div class="direct-chat-messages">
                  <!-- Message. Default to the left -->';
		while ($row = $result->fetch_assoc())
		{
			$temp .=self::GenerateMessageItem($row['user_id'], $row['date'], $row['name'], $row['text'], $row['image']);
		}
		$temp .= '  </div>
  <!-- /.card-body -->
  <div class="card-footer">
	<form action="/" method="get" id="messageForm">
	  <div class="input-group">
	  <input type="hidden" name="id" value="'.$id.'">
	  <input type="hidden" name="module" value="dialogs">
	  <input type="hidden" name="action" value="send">
	  
	  <textarea id="message" class="form-control" rows="5" name="message" placeholder="Напишите сообщение здесь ..."></textarea>
		<span class="input-group-append">
		  <button type="submit" class="btn btn-secondary btn-send">Отправить</button>
		</span>
	  </div>
	</form>
  </div>
  <!-- /.card-footer-->
</div>
</div>';
		return $temp;
	}
	
	public static function GenerateMessageItem($user_id=0, $date='000 000 000', $name='Анонимус', $text='Съешь еще этих мягких французских булок, да выпей чаю.', $image='http://www.securitylab.ru/upload/iblock/87f/87f22b0576180eddd1fdf12b707f834f.jpg')
	{
		$text = nl2br($text);
		if($user_id == Auth::$userId)
			$temp .= '<div class="direct-chat-msg right">
                    <div class="direct-chat-info clearfix">
                      <span class="direct-chat-name float-right">'.$name.'</span>
                      <span class="direct-chat-timestamp float-left">'.$date.'</span>
                    </div>';
		
		else
			$temp = '<div class="direct-chat-msg">
				<div class="direct-chat-info clearfix">
				  <span class="direct-chat-name float-left">'.$name.'</span>
				  <span class="direct-chat-timestamp float-right">'.$date.'</span>
				</div>';
		$temp .=  '<!-- /.direct-chat-info -->
		<img class="direct-chat-img" src="'.$image.'" alt="Фото пользователя">
		<!-- /.direct-chat-img -->
		<div class="direct-chat-text">
		  '.$text.'
		</div>
		<!-- /.direct-chat-text -->
	  </div>';
	  return $temp;
	}
	
	public static function Send()
	{
		global $DB;
		$dialog_id = $_GET['id'];
		$text = $_GET['message'];
        //$guests = $_GET['guests'];
		$user_id = Auth::$userId;
		
		var_dump($_GET);
        $sql = $DB->prepare("INSERT INTO messages (user_id, dialog_id, text) VALUES (?,?,?)");
        $sql->bind_param('iis', $user_id, $dialog_id, $text); 
        $sql->execute();
        header("Location:/?module=dialogs&action=open&id=".$dialog_id);
	}
}
?>