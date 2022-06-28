<?php
defined('BASEPATH') OR exit('No direct script access allowed');



class Dashboard extends Backend{

  private $title = "Dashboard";

  public function __construct()
  {
    parent::__construct();
    $this->load->model("Core_model","model");
  }

  function index()
  {
    $this->template->set_title("Dashboard");
    $this->template->view("index");
  }

  function test()
  {
    $get_controller = $this->userize->combo_controllerlist();
    echo json_encode($get_controller);
  }

  function folderSize ($dir = null)
  {
    $dir = "./_temp/uploads/img/";
      $size = 0;

      foreach (glob(rtrim($dir, '/').'/*', GLOB_NOSORT) as $each) {
          $size += is_file($each) ? filesize($each) : folderSize($each);
      }

      echo $size. "Kb";
  }


}
