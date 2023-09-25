<?php defined('BASEPATH') OR exit('No direct script access allowed');

/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 24/09/2023 20:42*/
/*| Please DO NOT modify this information*/


class Visi_misi_model extends MY_Model{

  private $table        = "visi_misi";
  private $primary_key  = "id";
  private $column_order = array('visi', 'misi', 'createdOn');
  private $order        = array('visi_misi.id'=>"DESC");
  private $select       = "visi_misi.id,visi_misi.visi,visi_misi.misi,visi_misi.createdOn";

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

    if($this->input->post("visi"))
        {
          $this->db->like("visi_misi.visi", $this->input->post("visi"));
        }

    if($this->input->post("misi"))
        {
          $this->db->like("visi_misi.misi", $this->input->post("misi"));
        }

    if($this->input->post("createdOn"))
        {
          $this->db->like("visi_misi.createdOn", $this->input->post("createdOn"));
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

/* End of file Visi_misi_model.php */
/* Location: ./application/modules/visi_misi/models/Visi_misi_model.php */
