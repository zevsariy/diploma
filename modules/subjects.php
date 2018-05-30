<?php

class Subjects
{
	public static function GetDataForDocx($id)
	{
		$data = Array();
		global $DB;
		$stmt = $DB->prepare("SELECT id, type, name as subject_name, plan_id, zuch_ed, (zuch_ed*36) as hours, semester, lections, seminars, labs, selfwork, part, kurs_project, kurs_work, targets, tasks, competences, themes, bibliographys, softwares FROM subjects WHERE id=?");
		$stmt->bind_param('i', $id);
		$stmt->execute();
		$result = $stmt->get_result();
		while ($row = $result->fetch_assoc())
		{
			$data = $row;
			$data['targets'] = json_decode($data['targets']);
		}
		$stmt->close(); 
		return $data;
	}
}
?>