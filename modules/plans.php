<?php

class Plans
{
	public static function GetTable()
	{
		global $DB;
		$stmt = $DB->prepare("SELECT id, name, year, (SELECT name FROM specialties WHERE id=spec_id) as spec_name FROM plans");
		//$stmt->bind_param('ss', $login, md5($password));
		$stmt->execute();
		$result = $stmt->get_result();
		$temp = '<button type="button" data-toggle="modal" data-target="#addNewPlanModal" class="btn btn-light">Создать новый</button>
		<table class="table table-bordered"> 
		  <thead>
			<tr>
			  <th scope="col">ИД</th>
			  <th scope="col">Название</th>
			  <th scope="col">Год набора</th>
			  <th scope="col">Специальность</th>
			</tr>
		  </thead>
		  <tbody>';

    
		while ($row = $result->fetch_assoc())
		{
			$temp .='<tr onclick="window.location.href=`/?module=plan_editor&action=edit&id='.$row['id'].'`; return false;">
				  <td>'.$row['id'].'</td>
				  <td>'.$row['name'].'</td>
				  <td>'.$row['year'].'</td>
				  <td>'.$row['spec_name'].'</td>
				</tr>';
		}
		$temp .= '</tbody></table>';
		
		return $temp;
	}
	
	public static function addNew()
	{
		global $DB;
		$name = $_GET['name'];
        $semesters = $_GET['semesters'];
        $hours = $_GET['hours'];
		$year = $_GET['year'];
		
        $sql = $DB->prepare("INSERT INTO plans (name, semesters, hours, year) VALUES (?,?,?,?)");
        $sql->bind_param('siis', $name, $semesters, $hours, $year);
        $sql->execute();
        $result = $sql->get_result();
		$id=$DB->insert_id;
		var_dump($DB);
        header("Location:/?module=plan_editor&action=edit&id=".$id);
	}
}
?>