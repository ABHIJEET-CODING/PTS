<?php
    require_once("Layout.php");
    
    class Profile extends Layout {

        function __construct() {
            parent::__construct();
            $this->load->model('Profile_management_model');
        }

        public function index(){
            $data['manage_profile'] = $this->Profile_management_model->update_profile();
            $this->load->view('manage_profile', $data);
        }
        
        public function update_profile_data(){
            $result = $this->Profile_management_model->update_profile_data();
            echo json_encode($result); 
        }
        public function update_password(){
            // echo '<pre>';
            // print_r($_POST);
            // die;
            $result = $this->Profile_management_model->update_password();
            echo json_encode($result); 
        }
        
    }
?>
