<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title><?= ucwords($title_module) ?></title>
  <link rel="shortcut icon" href="<?= base_url() ?>_temp/uploads/img/<?= setting("favicon") ?>" />
  <!--Animate CSS -->
  <link href="<?= base_url() ?>_temp/backend/vendors/animate/animate.min.css" rel="stylesheet" type="text/css">
  <!-- plugins:css -->
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/ti-icons/css/themify-icons.css">
  <link href="<?= base_url() ?>_temp/backend/css/icons.css" rel="stylesheet" type="text/css" />

  <!-- SELECT 2 -->
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/select2/select2.min.css">
  <!-- END SELECT 2 -->
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
  <!-- Plugin css for this page -->

  <!-- TOAST MSG  -->
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/jquery-toast-plugin/jquery.toast.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/fancybox/jquery.fancybox.min.css" />
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/summernote/dist/summernote-bs4.css">
  <!-- END TOAST MSG  -->

  <!-- BEGIN: Vendor CSS-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/vendors.min.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/charts/apexcharts.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/extensions/tether-theme-arrows.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/extensions/tether.min.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/tables/datatable/datatables.min.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/extensions/shepherd-theme-default.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/pickers/pickadate/pickadate.css">

  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/calendars/fullcalendar.min.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/calendars/extensions/daygrid.min.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/calendars/extensions/timegrid.min.css">
  <!-- END: Vendor CSS-->

  <!-- BEGIN: Theme CSS-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/bootstrap-extended.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/colors.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/components.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/themes/dark-layout.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/themes/semi-dark-layout.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/forms/select/select2.min.css">

  <!-- BEGIN: Page CSS-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/core/menu/menu-types/vertical-menu.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/core/colors/palette-gradient.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/pages/dashboard-analytics.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/pages/card-analytics.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/plugins/tour/tour.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/pages/app-user.css">

  <!-- drag -->
  <!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet"> -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" media="all" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/assets/css/drag.css">

  <!-- <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" /> -->
  <link href="<?= base_url(); ?>assets/vendor/daterangepicker/daterangepicker.css" rel="stylesheet">
  <!-- End DatePicket -->

  <!-- BEGIN: Custom CSS-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/assets/css/style.css">
  <!-- END: Custom CSS-->


  <!-- plugins:js -->
  <script src="<?= base_url() ?>_temp/backend/vendors/js/vendor.bundle.base.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/sweetalert/sweetalert.min.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/jquery-toast-plugin/jquery.toast.min.js"></script>
  <!-- <script src="<?= base_url() ?>_temp/backend/vendors/datatables.net/jquery.dataTables.js"></script> -->
  <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
  <!-- <script src="<?= base_url() ?>_temp/backend/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script> -->
  <script src="<?= base_url() ?>_temp/backend/vendors/fancybox/jquery.fancybox.min.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/select2/select2.min.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/summernote/dist/summernote-bs4.min.js"></script>
  <script src="<?= base_url() ?>_temp/backend/vendors/clipboard/clipboard.min.js"></script>
  <script src="<?= base_url() ?>_temp/backend/js/custom.js"></script>
  <script src="<?= base_url() ?>_temp/backend/ckeditor/ckeditor.js"></script>
  <!-- end plugins js -->
  <script>
    var BASE_URL = "<?= base_url() ?>";

    $(document).ready(function() {
      var t_message = '<?= $this->session->flashdata('tt_message'); ?>';
      var t_type = '<?= $this->session->flashdata('tt_type'); ?>';

      if (t_message.length > 0) {
        // showToast(t_type, t_message);
        swal(t_message, {
          icon: t_type
        })
      }
    });
  </script>

</head>

<body class="vertical-layout vertical-menu-modern semi-dark-layout content-left-sidebar email-application navbar-floating footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="content-left-sidebar" data-layout="semi-dark-layout">

  <!-- BEGIN: Header-->
  <nav class="header-navbar navbar-expand-lg navbar navbar-with-menu floating-nav navbar-light navbar-shadow">
    <div class="navbar-wrapper">
      <div class="navbar-container content">
        <div class="navbar-collapse" id="navbar-mobile">
          <div class="mr-auto float-left bookmark-wrapper d-flex align-items-center">
            <ul class="nav navbar-nav">
              <li class="nav-item mobile-menu d-xl-none mr-auto"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i class="ficon feather icon-menu"></i></a></li>
            </ul>
            <ul class="nav navbar-nav bookmark-icons">
              <li class="nav-item d-none d-lg-block"><a class="nav-link" href="#" data-toggle="tooltip" data-placement="top" title="Todo"><i class="ficon feather icon-check-square"></i></a></li>
            </ul>
          </div>
          <ul class="nav navbar-nav float-right">

            <li class="dropdown dropdown-user nav-item"><a class="dropdown-toggle nav-link dropdown-user-link" href="#" data-toggle="dropdown">
                <div class="user-nav d-sm-flex d-none"><span class="user-name text-bold-600"><?= profile('name') ?>
                  </span><span class="user-status">Online</span></div><span>
                  <?php if (profile('photo') == "") : ?>
                    <img class="round" src="<?= base_url() ?>_temp/backend/logo-user.png" alt="profile" height="40" width="40" />
                  <?php else : ?>
                    <img class="round" src="<?= base_url() ?>_temp/uploads/img/<?= profile('photo') ?>" alt="profile" height="40" width="40" />
                  <?php endif; ?>
                </span>
              </a>
              <div class="dropdown-menu dropdown-menu-right"><a class="dropdown-item" href="<?= site_url('logout'); ?>"><i class="feather icon-user"></i> Logout</a>
                <!-- <div class="dropdown-divider"></div><a class="dropdown-item" href="<?= site_url('logout'); ?>"><i class="feather icon-power"></i> Logout</a> -->
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
  <!-- END: Header-->
  <!-- partial -->
    <?= $main_menu ?>

    <!-- BEGIN: Content-->
    <div class="app-content content">
      <div class="content-overlay"></div>
      <div class="header-navbar-shadow"></div>
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body">
          <!-- Dashboard Ecommerce Starts -->
          <!-- Dashboard Ecommerce ends -->

        