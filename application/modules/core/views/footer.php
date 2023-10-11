<div class="sidenav-overlay"></div>
<div class="drag-target"></div>

<!-- BEGIN: Footer-->
<footer class="footer footer-static footer-light">
  <p class="clearfix blue-grey lighten-2 mb-0"><span class="float-md-left d-block d-md-inline-block mt-25">COPYRIGHT &copy; 2021<a class="text-bold-800 grey darken-2" href="#">Kubis.id,</a>All rights Reserved</span>
    <button class="btn btn-primary btn-icon scroll-top" type="button"><i class="feather icon-arrow-up"></i></button>
  </p>
</footer>
<!-- END: Footer-->

<div class="modal modal-top animated fadeInUp delay-30s" id="modalGue" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary  text-white">
        <h5 class="modal-title" id="modalTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="modalContent"></div>
    </div>
  </div>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<!-- BEGIN: Vendor JS-->
<script src="<?= base_url() ?>assets/app-assets/vendors/js/vendors.min.js"></script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="<?= base_url() ?>assets/app-assets/vendors/js/charts/apexcharts.min.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/extensions/tether.min.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/extensions/shepherd.min.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/tables/datatable/buttons.bootstrap.min.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/tables/datatable/datatables.bootstrap4.min.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="<?= base_url() ?>assets/app-assets/js/core/app-menu.js"></script>
<script src="<?= base_url() ?>assets/app-assets/js/core/app.js"></script>
<script src="<?= base_url() ?>assets/app-assets/js/scripts/components.js"></script>
<!-- END: Theme JS-->

<!-- Datepicker -->
<script src="<?= base_url(); ?>assets/vendor/daterangepicker/moment.min.js"></script>
<script src="<?= base_url(); ?>assets/vendor/daterangepicker/daterangepicker.min.js"></script>

<!-- BEGIN: Page JS-->
<script src="<?= base_url() ?>assets/app-assets/js/scripts/pickers/dateTime/pick-a-datetime.js"></script>
<script src="<?= base_url() ?>assets/app-assets/js/scripts/datatables/datatable.js"></script>
<script src="<?= base_url() ?>assets/assets/js/ajax.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>

<script src="<?= base_url() ?>assets/app-assets/vendors/js/calendar/fullcalendar.min.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/calendar/extensions/daygrid.min.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/calendar/extensions/timegrid.min.js"></script>
<script src="<?= base_url() ?>assets/app-assets/vendors/js/calendar/extensions/interactions.min.js"></script>
<!-- <script src="<?= base_url() ?>assets/app-assets/js/scripts/pages/dashboard-analytics.js"></script> -->

<!-- DRAG -->
<!-- <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/js/fileinput.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/themes/fa/theme.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" type="text/javascript"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" type="text/javascript"></script>
<!-- BEGIN: Page Vendor JS-->
<script src="<?= base_url() ?>assets/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
<!-- BEGIN: Page JS-->
<script src="<?= base_url() ?>assets/app-assets/js/scripts/forms/select/form-select2.js"></script>

<!-- CKEDITOR-->
<script src="<?= base_url() ?>assets/ckeditor/ckeditor.js"></script>

<script>
  var hoursLabel = document.getElementById("hours");
  var minutesLabel = document.getElementById("minutes");
  var secondsLabel = document.getElementById("seconds");
  setInterval(setTime, 1000);

  function setTime() {
    secondsLabel.innerHTML = pad(Math.floor(new Date().getSeconds()));
    minutesLabel.innerHTML = pad(Math.floor(new Date().getMinutes()));
    hoursLabel.innerHTML = pad(Math.floor(new Date().getHours()));
  }

  function pad(val) {
    var valString = val + "";
    if (valString.length < 2) {
      return "0" + valString;
    } else {
      return valString;
    }
  }

  <?php if (@$this->session->absen_needed) : ?>
    var absenNeeded = '<?= json_encode($this->session->absen_needed) ?>';
    <?php $this->session->sess_unset('absen_needed') ?>
  <?php endif; ?>
</script>

<script type="text/javascript">
  $(function() {

    var start = moment().subtract(29, 'days');
    var end = moment();

    function cb(start, end) {
      $('#tangalrange').val(start.format('YYYY-MM-DD') + ' - ' + end.format('YYYY-MM-DD'));
    }

    $('#tanggalrange').daterangepicker({
      startDate: start,
      endDate: end,
      ranges: {
        'Hari ini': [moment(), moment()],
        'Kemarin': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
        '7 hari terakhir': [moment().subtract(6, 'days'), moment()],
        '30 hari terakhir': [moment().subtract(29, 'days'), moment()],
        'Bulan ini': [moment().startOf('month'), moment().endOf('month')],
        'Bulan lalu': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
        'Tahun ini': [moment().startOf('year'), moment().endOf('year')],
        'Tahun lalu': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')]
      }
    }, cb);

    cb(start, end);
  });
</script>

<!-- CKEDITOR -->
<script>
  var ckeditor = CKEDITOR.replace('ckeditor', {
    height: '600px'
  });

  var ckeditor = CKEDITOR.replace('ckeditor2', {
    height: '600px'
  });

  // var ckeditor = CKEDITOR.replace('posting', {
  //     height: '600px',
  //     filebrowserUploadUrl: '<?= base_url('posting/upload_image') ?>',
  //     filebrowserUploadMethod: "form"
  // });

  CKEDITOR.replace('posting', {
    height: '600px',
    filebrowserUploadUrl: '<?= base_url('posting/uploadImage') ?>',
    filebrowserUploadMethod: 'form'
  });

  CKEDITOR.disableAutoInline = true;
  CKEDITOR.inline('editable');
</script>
<script>
  $('#summernote').summernote({
    height: 300,
  });
</script>

<script type="text/javascript">
  $(document).ready(function() {

    $('#kategori').change(function() {
      var id = $(this).val();
      $.ajax({
        url: "<?php echo site_url('posting/get_sub_category'); ?>",
        method: "POST",
        data: {
          id: id
        },
        async: true,
        dataType: 'json',
        success: function(data) {
          console.log(data);
          var html = '';
          var i;
          for (i = 0; i < data.length; i++) {
            html += '<option value=' + data[i].id_sub + '>' + data[i].nama_sub + '</option>';
          }
          $('#sub_category').html(html);

        }
      });
      return false;
    });

  });
</script>

<script>
  function title(judul) {
    document.getElementById('title').innerText = judul.value;
  }
</script>

<script type="text/javascript">
  $(document).ready(function() {
    $('#modalGue').on('hide.bs.modal', function() {
      setTimeout(function() {
        $('.modal-dialog').removeClass('modal-lg modal-sm modal-md');
        $('#modalTitle, #modalContent , #modalFooter').html('');
      }, 500);
    });


    if ($(".select2").length) {
      $('.select2').select2();
    }


    $(document).on("click", "#reset-pwd", function(e) {
      e.preventDefault();
      $('.modal-dialog').addClass('modal-md');
      $("#modalTitle").text('Reset Password');
      $('#modalContent').load($(this).attr("href"));
      $("#modalGue").modal('show');
    });

    if ($(".text-editor").length) {
      $('.text-editor').summernote({
        height: ($(window).height() - 250),
        tabsize: 1,
        minHeight: null,
        maxHeight: null,
        dialogsInBody: true,
        dialogsFade: true,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'italic', 'underline', 'clear']],
          ['fontname', ['fontname']],
          ['height', ['height']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']],
        ],
        callbacks: {
          onImageUpload: function(image) {
            uploadImage(image[0]);
          },
          onInit: function() {
            var label = $(this).attr('data-original-label');
            var next_class = $(this).next();
            $(next_class).addClass(label);
            $(next_class).find('.btn-fullscreen').attr('data-label', label);
            $(next_class).find('button[data-original-title="Picture"]').attr('data-label', label);
            $(document).on("click", "button[data-label='" + label + "']", function(e) {
              e.preventDefault();
              var label_modal = $(this).data('label');
              $(".modal[aria-label='Insert Image']").attr('data-label', '');
              $('.button-file-manager').remove();
              var modal_filemanager = $(".modal[aria-label='Insert Image']").attr('data-label', label_modal);
              $(".modal[data-label='" + label_modal + "'] .modal-body").append('<div class="button-file-manager"></div>');
              $(".button-file-manager").html('<p id="filemanager-note"><a class="btn btn-sm btn-warning" target="_blank" href="<?= url('filemanager') ?>">Open Filemanager</a></p>');
            });

            $(document).on("click", ".btn-fullscreen[data-label='" + label + "']", function(e) {
              e.preventDefault();
              var isFullscreen = $(".text-editor[data-original-label='" + label + "']").summernote('fullscreen.isFullscreen');
              if (isFullscreen) {
                $(".fixed-top").css('z-index', '0');
                $(".sidebar").css('z-index', '0');
              } else {
                $(".fixed-top").css('z-index', '1030');
                $(".sidebar").css('z-index', '11');
              }

            });
          }
        }
      });


      // $(".modal[aria-label='Insert Image']").on('hide.bs.modal', function () {
      //   setTimeout(function(){
      //       $('.button-file-manager').remove();
      //     }, 500);
      //  });


      function uploadImage(image) {
        var data = new FormData();
        data.append("file", image);
        $.ajax({
          url: "<?= url($this->uri->segment(2) . "/imageUploadEditor") ?>",
          cache: false,
          contentType: false,
          processData: false,
          data: data,
          type: "POST",
          dataType: 'JSON',
          success: function(json) {
            if (json.success == true) {
              $('.text-editor').summernote("insertImage", json.file);
            } else {
              showToast('error', json.msg);
            }
          },
          error: function(data) {
            console.log(data);
          }
        });
      }
    }


    // upload single image
    $('.btn-remove-image').on('click', function() {
      var data_id = $(this).data('id');
      $(".btn-remove-image[data-id='" + data_id + "']").hide();
      $(".file-dir[data-id='" + data_id + "']").val("");
      $(".file-name[data-id='" + data_id + "']").val("");
      $(".file-upload-default[data-id='" + data_id + "']").val("");
    });



    $('.file-upload-browse').on('click', function() {
      var data_id = $(this).data('id');
      var file = $(".file-upload-default[data-id='" + data_id + "']");
      file.focus().trigger('click');
    });

    $('.file-upload-default').on('change', function() {
      var data_id = $(this).data('id');
      $(".file-upload-browse[data-id='" + data_id + "']").html(`<div class="spinner-border-custom spinner-border text-light" role="status"">
                                     <span class="sr-only">Loading...</span>
                                   </div>`);
      var file_data = $(".file-upload-default[data-id='" + data_id + "']").prop("files")[0];
      var form_data = new FormData();
      form_data.append("file", file_data);
      $.ajax({
        url: '<?= url("core/imageUpload") ?>',
        type: 'post',
        data: form_data,
        dataType: 'json',
        cache: false,
        contentType: false,
        processData: false,
        success: function(json) {
          $(".file-upload-browse[data-id='" + data_id + "']").html("Select File");
          if (json.success != true) {
            $(".file-dir[data-id='" + data_id + "']").val("");
            $(".file-name[data-id='" + data_id + "']").val("");
            $(".btn-remove-image[data-id='" + data_id + "']").hide();
            showToast("error", json.msg);
          } else {
            if (json.select != false) {
              $(".file-dir[data-id='" + data_id + "']").val(json.file_dir);
              $(".file-name[data-id='" + data_id + "']").val(json.file_name);
              if ($(".file-name[data-id='" + data_id + "']").val() != "") {
                $(".btn-remove-image[data-id='" + data_id + "']").show();
              }
            }
            //  console.log(json.msg);
          }
        }
      });
    });
  });
</script>

</body>

</html>