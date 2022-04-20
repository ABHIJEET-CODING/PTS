<?php
    class Registration_Model extends CI_model {
    
        public function registration_tpo(){
            $email     = $this->input->post('email');
            $data = array (
                'name'        => $this->input->post('name'),
                'department'  => $this->input->post('department'),
                'email'       => $email,
                'contact_no'  => $this->input->post('contact_no'),
                'password'    => $this->input->post('password')
            );
        
            $check_user = $this->db->query("select * from tpo where (email='".$email."')");
            $row = $check_user->num_rows();
            if($row){
                return array("status" => 0, "message" => "Email address already exist");
            } else {
                $query = $this->db->insert('tpo', $data);
                if(!empty($query)){
                    //set session here
                    return array('status' => 1, 'message' => 'Registarion success');
                }
            }
        }
        public function registration_student(){
            $email         = $this->input->post('email');
            $enrollment_no = $this->input->post('enrollment_no');

            $data = array (
                'enrollment_no' => $enrollment_no,
                'name'          => $this->input->post('name'),
                'department'    => $this->input->post('department'),
                'email'         => $email,
                'contact_no'    => $this->input->post('contact_no'),
                'date_of_birth' => $this->input->post('date_of_birth'),
                'passing_year'  => $this->input->post('passing_year'),
                'password'      => $this->input->post('password')
            );
        
            $check_user = $this->db->query("select * from student where (email='".$email."' OR enrollment_no='".$enrollment_no."')");
            $row = $check_user->num_rows();
            if($row){
                return array("status" => 0, "message" => "Email or Enrollment No. address already exist");
            } else {
                $query = $this->db->insert('student', $data);
                if(!empty($query)){
                    //set session here
                    return array('status' => 1, 'message' => 'Registarion success');
                }
            }
        }
    
    }
?>


   