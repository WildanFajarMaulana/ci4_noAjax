<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
  <div class="container">
   	<div class="row">
   		<div class="col">
   	    <h1 class="mt-2 daftar-komik">Daftar Komik</h1>
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary mb-3 tambahAjax" data-toggle="modal" data-target="#exampleModal">
          Tambah
        </button>
        <div class="">
          <?= $validation->getError('judul'); ?>
           <?= $validation->getError('sampul'); ?>
        </div>
        <?php if(session()->getFlashdata('pesan')){ ?>
          <div class="alert alert-primary"><?= session()->getFlashdata('pesan') ?></div>
        <?php } ?>
        <table class="table table-dark">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Sampul</th>
              <th scope="col">Judul</th>
              <th scope="col">Aksi</th>
            </tr>
          </thead>
          <tbody>
            <?php $no=1; foreach($komik as $k){ ?>
            <tr>
              <th scope="row"><?= $no++; ?></th>
              <td><img src=""><?= $k['slug'] ?></td>
              <td><?= $k['judul'] ?></td>
              <td><a href="/komik/<?= $k['slug'] ?>" class="btn btn-success">Detail</a> </td>
            </tr>
          <?php } ?>
          </tbody>
        </table>
   		</div>
   	</div>
   </div>
<!-- Modal -->
<form action="/komik/tambah" method="post" enctype="multipart/form-data">
  <?= csrf_field(); ?> <!-- form hanya bisa diinput oleh halaman ini aja -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Komik</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="input-group flex-nowrap">
          <input type="text" class="form-control" name="judul" placeholder="Judul" aria-label="Username" aria-describedby="addon-wrapping" value="<?= old('judul') ?>">
        </div>
      </div>
      <div class="modal-body">
        <div class="input-group flex-nowrap">
          <input type="text" class="form-control" name="penulis" placeholder="penulis" aria-label="Username" aria-describedby="addon-wrapping">
        </div>
      </div>
      <div class="modal-body">
        <div class="input-group flex-nowrap">
          <input type="text" class="form-control" name="penerbit" placeholder="penerbit" aria-label="Username" aria-describedby="addon-wrapping">
        </div>
      </div>
      <div class="modal-body">
        <div class="col-sm-2">
          <img src="/image/foto.jpg" class="img-preview" width="200px">
        </div>
        <div class="custom-file">
          <input type="file" class="custom-file-input" name="sampul" id="sampul" onchange="readGambar()" placeholder="Sampul" >
          <label class="custom-file-label" for="sampul">pilih gambar</label>
        </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</form>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
     




<?= $this->endSection(); ?>

