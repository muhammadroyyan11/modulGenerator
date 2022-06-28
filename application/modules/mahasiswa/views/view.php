<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card-header bg-primary text-white">
      <?=ucwords($title_module)?>
    </div>
    <div class="card">
      <div class="card-body">
        <table class="table table-bordered table-striped">
        <tr>
          <td>Nama</td>
          <td><?=$nama?></td>
        </tr>
        <tr>
          <td>Alamat</td>
          <td><?=$alamat?></td>
        </tr>
        <tr>
          <td>No hp</td>
          <td><?=$no_hp?></td>
        </tr>
        <tr>
          <td>Kelas id</td>
          <td><?=$kelas_id?></td>
        </tr>
        </table>

        <a href="<?=url($this->uri->segment(2))?>" class="btn btn-sm btn-danger mt-3"><?=cclang("back")?></a>
      </div>
    </div>
  </div>
</div>
