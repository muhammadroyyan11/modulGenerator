</div>
<!-- content-wrapper ends -->
<footer class="footer">
  <div class="d-sm-flex justify-content-center justify-content-sm-between">
    <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Page rendered in <strong>{elapsed_time}</strong> seconds.<?=$this->config->item("author") ?> - <?=$this->config->item("version") ?> Copyright © <?=date("Y")?>. All rights reserved.</span>
    <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="ti-heart text-danger ml-1"></i></span>
  </div>
</footer>
<!-- partial -->
</div>
<!-- main-panel ends -->
</div>
<!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- modal -->
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
<!-- end modal -->

<!-- js -->
<script src="<?=base_url()?>_temp/backend/js/off-canvas.js"></script>
<script src="<?=base_url()?>_temp/backend/js/hoverable-collapse.js"></script>
<script src="<?=base_url()?>_temp/backend/js/template.js"></script>
<script src="<?=base_url()?>_temp/backend/js/settings.js"></script>
<script src="<?=base_url()?>_temp/backend/js/todolist.js"></script>
<script src="<?=base_url()?>_temp/backend/js/clipboard.js"></script>
<script src="<?=base_url()?>_temp/backend/js/tooltips.js"></script>
<script src="<?=base_url()?>_temp/backend/js/popover.js"></script>
<script type="text/javascript">

 $(document).ready(function(){
   $('#modalGue').on('hide.bs.modal', function () {
     setTimeout(function(){
         $('.modal-dialog').removeClass('modal-lg modal-sm modal-md');
         $('#modalTitle, #modalContent , #modalFooter').html('');
       }, 500);
    });


    if ($(".select2").length) {
        $('.select2').select2();
      }


    $(document).on("click","#reset-pwd",function(e){
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
          ['font', ['bold','italic', 'underline', 'clear']],
          ['fontname', ['fontname']],
          ['height', ['height']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen','codeview', 'help']],
        ],
        callbacks: {
                    onImageUpload: function(image) {
                        uploadImage(image[0]);
                    },
                    onInit: function(){
                      var label = $(this).attr('data-original-label');
                      var next_class = $(this).next();
                      $(next_class).addClass(label);
                      $(next_class).find('.btn-fullscreen').attr('data-label',label);
                      $(next_class).find('button[data-original-title="Picture"]').attr('data-label',label);
                      $(document).on("click", "button[data-label='"+label+"']",function(e){
                        e.preventDefault();
                        var label_modal = $(this).data('label');
                        $(".modal[aria-label='Insert Image']").attr('data-label','');
                        $('.button-file-manager').remove();
                        var modal_filemanager = $(".modal[aria-label='Insert Image']").attr('data-label',label_modal);
                        $(".modal[data-label='"+label_modal+"'] .modal-body").append('<div class="button-file-manager"></div>');
                        $(".button-file-manager").html('<p id="filemanager-note"><a class="btn btn-sm btn-warning" target="_blank" href="<?=url('filemanager')?>">Open Filemanager</a></p>');
                      });

                      $(document).on("click",".btn-fullscreen[data-label='"+label+"']",function(e){
                        e.preventDefault();
                        var isFullscreen = $(".text-editor[data-original-label='"+label+"']").summernote('fullscreen.isFullscreen');
                        if (isFullscreen) {
                          $(".fixed-top").css('z-index','0');
                          $(".sidebar").css('z-index','0');
                        }else {
                          $(".fixed-top").css('z-index','1030');
                          $(".sidebar").css('z-index','11');
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
                    url: "<?=url($this->uri->segment(2)."/imageUploadEditor")?>",
                    cache: false,
                    contentType: false,
                    processData: false,
                    data: data,
                    type: "POST",
                    dataType:'JSON',
                    success: function(json) {
                      if (json.success==true) {
                        $('.text-editor').summernote("insertImage", json.file);
                      }else {
                        showToast('error',json.msg);
                      }
                    },
                    error: function(data) {
                        console.log(data);
                    }
                });
            }
  }


   // upload single image
   $('.btn-remove-image').on('click',function(){
     var data_id = $(this).data('id');
     $(".btn-remove-image[data-id='"+data_id+"']").hide();
     $(".file-dir[data-id='"+data_id+"']").val("");
     $(".file-name[data-id='"+data_id+"']").val("");
     $(".file-upload-default[data-id='"+data_id+"']").val("");
   });



   $('.file-upload-browse').on('click', function() {
     var data_id = $(this).data('id');
     var file = $(".file-upload-default[data-id='"+data_id+"']");
     file.focus().trigger('click');
   });

   $('.file-upload-default').on('change', function() {
     var data_id = $(this).data('id');
     $(".file-upload-browse[data-id='"+data_id+"']").html(`<div class="spinner-border-custom spinner-border text-light" role="status"">
                                     <span class="sr-only">Loading...</span>
                                   </div>`);
      var file_data = $(".file-upload-default[data-id='"+data_id+"']").prop("files")[0];
      var form_data = new FormData();
      form_data.append("file", file_data);
       $.ajax({
         url : '<?=url("core/imageUpload")?>',
         type: 'post',
         data: form_data,
         dataType: 'json',
         cache: false,
         contentType: false,
         processData: false,
         success:function(json)
         {
           $(".file-upload-browse[data-id='"+data_id+"']").html("Select File");
           if (json.success!=true) {
             $(".file-dir[data-id='"+data_id+"']").val("");
             $(".file-name[data-id='"+data_id+"']").val("");
             $(".btn-remove-image[data-id='"+data_id+"']").hide();
             showToast("error", json.msg);
           }else {
             if (json.select != false) {
               $(".file-dir[data-id='"+data_id+"']").val(json.file_dir);
               $(".file-name[data-id='"+data_id+"']").val(json.file_name);
               if ($(".file-name[data-id='"+data_id+"']").val() != "") {
                 $(".btn-remove-image[data-id='"+data_id+"']").show();
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
