<?php
namespace app\models;

class Park extends \app\core\Model {
	public $park_id;
	public $park_name;
	public $park_address;

	public function getAllFor($activity) {
		$sql = "SELECT park FROM parktivity WHERE $activity=:activity";
		$statement = self::$db->prepare($sql);
		$data = ['activity'=>$activity];
		$statement->execute($data);
		$statement->setFetchMode(\PDO::FETCH_CLASS,'app\\models\\Park');
		return $statement->fetchAll();
	}
	
}