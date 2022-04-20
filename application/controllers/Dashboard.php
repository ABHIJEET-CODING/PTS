<?php
 require_once("Layout.php");
    class Dashboard extends Layout {

        function __construct() {
            parent::__construct();
            $this->load->model('Login_Model');
        }

        public function index(){
            // echo "<pre>";
            // print_r($_SESSION);
            // die;
            $this->load->view('dashboard');
        }
    }
?>
