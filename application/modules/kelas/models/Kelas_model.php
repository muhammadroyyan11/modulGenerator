<?php defined('BASEPATH') OR exit('No direct script access allowed');


class Kelas_model extends MY_Model{

  private $table        = "kelas";
  private $primary_key  = "id_kelas";
  private $column_order = array('id_kelas', 'nama_kelas');
  private $order        = array('kelas.id_kelas'=>"DESC");
  private $select       = "kelas.id_kelas,kelas.id_kelas,kelas.nama_kelas";

public function __construct()
	{
		$config = array(
      'table' 	      => $this->table,
			'primary_key' 	=> $this->primary_key,
		 	'select' 	      => $this->select,
      'column_order' 	=> $this->column_order,
      'order' 	      => $this->order,
		 );

		parent::__construct($config);
	}

  private function _get_datatables_query()
    {
      $this->db->select($this->select);
      $this->db->from($this->table);

    if($this->input->post("nama_kelas"))
        {
          $this->db->like("kelas.nama_kelas", $this->input->post("nama_kelas"));
        }

      if(isset($_POST['order'])) // here order processing
       {
           $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
       }
       else if(isset($this->order))
       {
           $order = $this->order;
           $this->db->order_by(key($order), $order[key($order)]);
       }

    }


    public function get_datatables()
    {
        $this->_get_datatables_query();
        if($_POST['length'] != -1)
        $this->db->limit($_POST['length'], $_POST['start']);
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



}

/* End of file Kelas_model.php */
/* Location: ./application/modules/kelas/models/Kelas_model.php */
