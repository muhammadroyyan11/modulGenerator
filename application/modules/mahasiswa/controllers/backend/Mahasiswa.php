<?php defined('BASEPATH') or exit('No direct script access allowed');



class Mahasiswa extends Backend
{

  private $title = "Mahasiswa";


  public function __construct()
  {
    $config = array(
      'title' => $this->title,
    );
    parent::__construct($config);
    $this->load->model("Mahasiswa_model", "model");
    // $this->load->model("Kelas_model", "kelas");
  }

  function index()
  {
    $this->is_allowed('mahasiswa_list');
    $this->template->set_title($this->title);
    $this->template->view("index");
  }

  function json()
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('mahasiswa_list')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $list = $this->model->get_datatables();
      $data = array();
      foreach ($list as $row) {
        $rows = array();
        $rows[] = $row->id_mhs;
        $rows[] = $row->nama;
        $rows[] = $row->alamat;
        $rows[] = $row->no_hp;
        $rows[] = $row->nama_kelas;

        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="' . url("mahasiswa/detail/" . enc_url($row->id_mhs)) . '" id="detail" class="btn btn-primary" title="' . cclang("detail") . '">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="' . url("mahasiswa/update/" . enc_url($row->id_mhs)) . '" id="update" class="btn btn-warning" title="' . cclang("update") . '">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="' . url("mahasiswa/delete/" . enc_url($row->id_mhs)) . '" id="delete" class="btn btn-danger" title="' . cclang("delete") . '">
                        <i class="ti-trash"></i>
                      </a>
                    </div>
                 ';

        $data[] = $rows;
      }

      $output = array(
        "draw" => $_POST['draw'],
        "recordsTotal" => $this->model->count_all(),
        "recordsFiltered" => $this->model->count_filtered(),
        "data" => $data,
      );
      //output to json format
      return $this->response($output);
    }
  }

  function filter()
  {
    if (!is_allowed('mahasiswa_filter')) {
      echo "access not permission";
    } else {
      $this->template->view("filter", [], false);
    }
  }

  function detail($id)
  {
    $this->is_allowed('mahasiswa_detail');
    if ($row = $this->model->find(dec_url($id))) {
      $this->template->set_title("Detail " . $this->title);
      $data = array(
        "nama" => $row->nama,
        "alamat" => $row->alamat,
        "no_hp" => $row->no_hp,
        "kelas_id" => $row->kelas_id,
      );
      $this->template->view("view", $data);
    } else {
      $this->error404();
    }
  }

  function add()
  {
    $this->is_allowed('mahasiswa_add');
    $this->template->set_title(cclang("add") . " " . $this->title);
    $kelas = $this->model->get_datatables_kelas();

    // var_dump($kelas);
    $data = array(
      'action' => url("mahasiswa/add_action"),
      'nama' => set_value("nama"),
      'alamat' => set_value("alamat"),
      'no_hp' => set_value("no_hp"),
      'kelas_id' => set_value("kelas_id"),
      'kelas' => $kelas
    );
    $this->template->view("add", $data);
  }

  function add_action()
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('mahasiswa_add')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $json = array('success' => false);
      $this->form_validation->set_rules("nama", "* Nama", "trim|xss_clean|required");
      $this->form_validation->set_rules("alamat", "* Alamat", "trim|xss_clean");
      $this->form_validation->set_rules("no_hp", "* No hp", "trim|xss_clean|required|numeric");
      $this->form_validation->set_rules("kelas_id", "* Kelas id", "trim|xss_clean");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {
        $save_data['nama'] = $this->input->post('nama', true);
        $save_data['alamat'] = $this->input->post('alamat', true);
        $save_data['no_hp'] = $this->input->post('no_hp', true);
        $save_data['kelas_id'] = $this->input->post('kelas_id', true);

        $this->model->insert($save_data);

        set_message("success", cclang("notif_save"));
        $json['redirect'] = url("mahasiswa");
        $json['success'] = true;
      } else {
        foreach ($_POST as $key => $value) {
          $json['alert'][$key] = form_error($key);
        }
      }

      $this->response($json);
    }
  }

  function update($id)
  {
    $this->is_allowed('mahasiswa_update');
    if ($row = $this->model->find(dec_url($id))) {
      $this->template->set_title(cclang("update") . " " . $this->title);
      $data = array(
        'action' => url("mahasiswa/update_action/$id"),
        'nama' => set_value("nama", $row->nama),
        'alamat' => set_value("alamat", $row->alamat),
        'no_hp' => set_value("no_hp", $row->no_hp),
        'kelas_id' => set_value("kelas_id", $row->kelas_id),
      );
      $this->template->view("update", $data);
    } else {
      $this->error404();
    }
  }

  function update_action($id)
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('mahasiswa_update')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $json = array('success' => false);
      $this->form_validation->set_rules("nama", "* Nama", "trim|xss_clean|required");
      $this->form_validation->set_rules("alamat", "* Alamat", "trim|xss_clean");
      $this->form_validation->set_rules("no_hp", "* No hp", "trim|xss_clean|required|numeric");
      $this->form_validation->set_rules("kelas_id", "* Kelas id", "trim|xss_clean");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {
        $save_data['nama'] = $this->input->post('nama', true);
        $save_data['alamat'] = $this->input->post('alamat', true);
        $save_data['no_hp'] = $this->input->post('no_hp', true);
        $save_data['kelas_id'] = $this->input->post('kelas_id', true);

        $save = $this->model->change(dec_url($id), $save_data);

        set_message("success", cclang("notif_update"));

        $json['redirect'] = url("mahasiswa");
        $json['success'] = true;
      } else {
        foreach ($_POST as $key => $value) {
          $json['alert'][$key] = form_error($key);
        }
      }

      $this->response($json);
    }
  }

  function delete($id)
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('mahasiswa_delete')) {
        return $this->response([
          'type_msg' => "error",
          'msg' => "do not have permission to access"
        ]);
      }

      $this->model->remove(dec_url($id));
      $json['type_msg'] = "success";
      $json['msg'] = cclang("notif_delete");


      return $this->response($json);
    }
  }
}

/* End of file Mahasiswa.php */
/* Location: ./application/modules/mahasiswa/controllers/backend/Mahasiswa.php */
