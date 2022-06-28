<?php defined('BASEPATH') or exit('No direct script access allowed');

/*| --------------------------------------------------------------------------*/
/*| dev : mpampamdev  */
/*| version : V.0.0.2 */
/*| facebook : https://web.facebook.com/mpampam */
/*| fanspage : https://web.facebook.com/programmerjalanan */
/*| instagram : https://www.instagram.com/programmer_jalanan */
/*| youtube : https://www.youtube.com/channel/UC1TlTaxRNdwrCqjBJ5zh6TA */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 28/06/2022 10:40*/
/*| Please DO NOT modify this information*/


class Mahasiswa_model extends MY_Model
{

  private $table        = "mahasiswa";
  private $primary_key  = "id_mhs";
  private $column_order = array('id_mhs', 'nama', 'alamat', 'no_hp', 'kelas_id');
  private $order        = array('mahasiswa.id_mhs' => "DESC");
  private $select       = "mahasiswa.id_mhs,mahasiswa.id_mhs,mahasiswa.nama,mahasiswa.alamat,mahasiswa.no_hp,mahasiswa.kelas_id";

  public function __construct()
  {
    $config = array(
      'table'         => $this->table,
      'primary_key'   => $this->primary_key,
      'select'         => $this->select,
      'column_order'   => $this->column_order,
      'order'         => $this->order,
    );

    parent::__construct($config);
  }

  private function _get_datatables_query()
  {
    $this->db->select($this->select);
    $this->db->from($this->table);

    if ($this->input->post("nama")) {
      $this->db->like("mahasiswa.nama", $this->input->post("nama"));
    }

    if ($this->input->post("alamat")) {
      $this->db->like("mahasiswa.alamat", $this->input->post("alamat"));
    }

    if ($this->input->post("no_hp")) {
      $this->db->like("mahasiswa.no_hp", $this->input->post("no_hp"));
    }


    if (isset($_POST['order'])) // here order processing
    {
      $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
    } else if (isset($this->order)) {
      $order = $this->order;
      $this->db->order_by(key($order), $order[key($order)]);
    } elseif (isset($this->join)) {
      $join = $this->join;
      $this->db->join_by(key($join), $join[key($join)]);
    }
  }


  public function get_datatables()
  {
    $this->_get_datatables_query();
    if ($_POST['length'] != -1)
      $this->db->limit($_POST['length'], $_POST['start']);
    $this->db->join('kelas', 'kelas.id_kelas = mahasiswa.kelas_id');
    $query = $this->db->get();
    return $query->result();
  }

  public function count_filtered()
  {
    $this->_get_datatables_query();
    $query = $this->db->get();
    return $query->num_rows();
  }

  public function count_all()
  {
    $this->db->select($this->select);
    $this->db->from("$this->table");
    return $this->db->count_all_results();
  }

  private function _get_datatables_query_kelas()
  {
    $this->db->select('*');
    $this->db->from('kelas');

    if ($this->input->post("nama_kelas")) {
      $this->db->like("kelas.nama_kelas", $this->input->post("nama_kelas"));
    }
  }


  public function get_datatables_kelas()
  {
    $this->_get_datatables_query_kelas();
    $query = $this->db->get();
    return $query->result();
  }
}

/* End of file Mahasiswa_model.php */
/* Location: ./application/modules/mahasiswa/models/Mahasiswa_model.php */
