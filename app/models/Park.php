<?php
namespace app\models;

class Park extends \app\core\Model {
	public $park_id;
	public $park_name;
	public $park_address;

	public function getAllFor($activity_id) {
		$sql = "SELECT park_id FROM park_activities WHERE $activity_id=:activity_id";
		$statement = self::$db->prepare($sql);
		$data = ['activity_id'=>$activity_id];
		$statement->execute($data);
		$statement->setFetchMode(\PDO::FETCH_CLASS,'app\\models\\Park');
		return $statement->fetchAll();
	}
	
}