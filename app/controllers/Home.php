<?php
namespace app\controllers;

class Home extends \app\core\Controller {
	
	public function park() {
        if (isset($_POST['activity_id'])) {
            $park = new \app\models\Park();
            $park->getAllFor($_POST['activity_id']);

            $this->view('Home/park', $park);
        }
        else {
            $this->view('Home/park');
        }

    }
}