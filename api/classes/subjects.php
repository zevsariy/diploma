<?php
class Subjects
{
	public static function Save()
	{
		global $DB, $input;
		if(isset($_POST['subjects']) && is_array($_POST['subjects']))
			$subjects = $_POST['subjects'];
		else
			$subjects = array();
		
		$plan_id = Output::$id;
		
		foreach ($subjects as $subject)
		{
			
			if(strlen($subject['id'])==0 && $subject['delete']!='1') 
			{
				$stmt = $DB->prepare("INSERT INTO subjects (name, type, plan_id, position, zuch_ed, semester, lections, seminars, labs, selfwork, part, kurs_project, kurs_work, bg_color, text_color) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
				$stmt->bind_param('ssissssssssssss', $subject['name'], $subject['type'],$plan_id,$subject['position'],$subject['zuch_ed'],$subject['semester'],$subject['lections'],$subject['seminars'],$subject['labs'],$subject['selfwork'],$subject['part'],$subject['kurs_project'],$subject['kurs_work'],$subject['bg_color'],$subject['text_color']);
				echo "";
			}
			else
			{
				if($subject['delete']!='1')
				{
					
					$stmt = $DB->prepare("update subjects set name=?, type=?, plan_id=?, position=?, zuch_ed=?, semester=?, lections=?, seminars=?, labs=?, selfwork=?, part=?, kurs_project=?, kurs_work=?, bg_color=?, text_color=? WHERE id=?");
					$stmt->bind_param('ssissssssssssssi', $subject['name'], $subject['type'], $plan_id, $subject['position'], $subject['zuch_ed'], $subject['semester'],$subject['lections'],$subject['seminars'],$subject['labs'],$subject['selfwork'],$subject['part'],$subject['kurs_project'],$subject['kurs_work'],$subject['bg_color'],$subject['text_color'], $subject['id']);
				}
				else
				{
					$stmt = $DB->prepare("DELETE FROM subjects WHERE id=?");
					$stmt->bind_param('i', $subject['id']);
				}
			}
			
			if (!$stmt) {
			   printf("Errormessage: %s\n", $DB->error);
			}
			$stmt->execute();
			$stmt->close();
		}
	}
	
	public static function GetAllJson($plan_id)
	{
		global $DB, $input;
		$stmt = $DB->prepare("SELECT * FROM subjects WHERE plan_id=? ORDER BY position");
		$stmt->bind_param('i', $plan_id);
		$stmt->execute();
		$result = $stmt->get_result();
		while ($row = $result->fetch_assoc())
		{
			Output::$data[]=$row;
		}
	}
}
?>