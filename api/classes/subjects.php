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
			$subject['targets'] = json_encode($subject['targets'], JSON_UNESCAPED_UNICODE);
			$subject['tasks'] = json_encode($subject['tasks'], JSON_UNESCAPED_UNICODE);
			$subject['competences'] = json_encode($subject['competences'], JSON_UNESCAPED_UNICODE);
			$subject['themes'] = json_encode($subject['themes'], JSON_UNESCAPED_UNICODE);
			$subject['bibliographys'] = json_encode($subject['bibliographys'], JSON_UNESCAPED_UNICODE);
			$subject['softwares'] = json_encode($subject['softwares'], JSON_UNESCAPED_UNICODE);
			
			
			if(strlen($subject['id'])==0 && $subject['delete']!='1') 
			{
				$stmt = $DB->prepare("INSERT INTO subjects (name, type, plan_id, position, zuch_ed, semester, lections, seminars, labs, selfwork, part, kurs_project, kurs_work, bg_color, text_color, targets, tasks) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
				$stmt->bind_param('ssissssssssssssssssss', $subject['name'], $subject['type'],$plan_id,$subject['position'],$subject['zuch_ed'],$subject['semester'],$subject['lections'],$subject['seminars'],$subject['labs'],$subject['selfwork'],$subject['part'],$subject['kurs_project'],$subject['kurs_work'],$subject['bg_color'],$subject['text_color'],$subject['targets'],$subject['tasks'],$subject['competences'],$subject['themes'],$subject['bibliographys'],$subject['softwares']);
				echo "";
			}
			else
			{
				if($subject['delete']!='1')
				{
					
					$stmt = $DB->prepare("update subjects set name=?, type=?, plan_id=?, position=?, zuch_ed=?, semester=?, lections=?, seminars=?, labs=?, selfwork=?, part=?, kurs_project=?, kurs_work=?, bg_color=?, text_color=?, targets=?, tasks=?, competences=?, themes=?, bibliographys=?, softwares=? WHERE id=?");
					$stmt->bind_param('ssissssssssssssssssssi', $subject['name'], $subject['type'], $plan_id, $subject['position'], $subject['zuch_ed'], $subject['semester'],$subject['lections'],$subject['seminars'],$subject['labs'],$subject['selfwork'],$subject['part'],$subject['kurs_project'],$subject['kurs_work'],$subject['bg_color'],$subject['text_color'],$subject['targets'],$subject['tasks'],$subject['competences'],$subject['themes'],$subject['bibliographys'],$subject['softwares'], $subject['id']);
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