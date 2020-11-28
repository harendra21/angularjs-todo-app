<?php


defined('BASEPATH') or exit('No direct script access allowed');

class TaskCtrl extends CI_Controller
{

    public function index()
    {
        $this->load->view('home');
    }

    public function add_update_task()
    {
        $json = file_get_contents('php://input');
        $data = json_decode($json, TRUE);


        $id = $data['id'];
        $title = $data['title'];
        $status = $data['status'];
        $description = $data['description'];
        $data_array = array(
            'title' => $title,
            'status' => $status,
            'description' => $description
        );
        if (empty($id)) {
            $this->db->insert('task', $data_array);
        } else {
            $this->db->where('id', $id);
            $this->db->update('task', $data_array);
        }

        echo '1';
    }

    public function get_task()
    {
        $data = $this->db->where('status !=', 'delete')->order_by('id', 'DESC')->get('task');
        if ($data->num_rows() > 0) {
            print_r(json_encode($data->result_array()));
        }
    }

    public function action_task()
    {
        $json = file_get_contents('php://input');
        $data = json_decode($json, TRUE);


        $id = $data['formData']['id'];
        $data_array = array(
            'title' => $data['formData']['title'],
            'status' => $data['action'],
            'description' => $data['formData']['description']
        );

        $this->db->where('id', $id);
        $this->db->update('task', $data_array);
    }
}

/* End of file TaskCtrl.php */
