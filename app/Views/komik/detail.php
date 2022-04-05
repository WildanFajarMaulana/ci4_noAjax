<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
  <div class="">
          <?= $validation->getError('judul'); ?>
          <?= $validation->getError('sampul'); ?>
        </div>
  <div class="row">
    <div class="col mt-4">
      <div class="card" style="width: 18rem;">
        <img src="..." class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title"><?= $komikDetail['judul'] ?></h5>
          <p class="card-text"><?= $komikDetail['slug'] ?></p>
         
          <button type="button" class="btn btn-primary mb-3 updateAjax" data-toggle="modal" data-target="#exampleModal">
          update
        </button>
          <form action="/komik/<?= $komikDetail['id'] ?>" method="post" class="d-inline">
            <?= csrf_field() ?>
            <input type="hidden" name="_method" value="DELETE">
            <button type="submit" class="btn btn-danger" onclick="return confirm('yakin?')">Delete</button>
          </form>
        
        </div>
      </div>
    </div>
  </div>
</div>


<form action="/komik/ubahData/<?= $komikDetail['id'] ?>" method="post" enctype="multipart/form-data" >
  <?= csrf_field(); ?> <!-- form hanya bisa diinput oleh halaman ini aja -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">update Komik</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="input-group flex-nowrap">
          <input type="hidden" name="sampulLama" value="<?= $komikDetail['sampul']  ?>">
          <input type="hidden" name="slug" value="<?= $komikDetail['slug'] ?>">
          <input type="text" class="form-control" name="judul" placeholder="Judul" aria-label="Username" aria-describedby="addon-wrapping" value="<?= (old('judul')) ? old('judul') : $komikDetail['judul'] ?> ">
        </div>
      </div>
           <div class="modal-body">
        <div class="input-group flex-nowrap">
          <input type="text" class="form-control" name="penulis" placeholder="penulis" aria-label="Username" aria-describedby="addon-wrapping" value="<?= (old('penulis'))?old('penulis'):$komikDetail['penulis'] ?> ">
        </div>
      </div>
      <div class="modal-body">
        <div class="input-group flex-nowrap">
          <input type="text" class="form-control" name="penerbit" placeholder="penerbit" aria-label="Username" aria-describedby="addon-wrapping" value="<?= (old('penerbit'))?old('penerbit'):$komikDetail['penerbit'] ?> ">
        </div>
      </div>
      <div class="modal-body">
        <div class="input-group flex-nowrap">
          <input type="file" name="sampul" value="<?= $komikDetail['sampul'] ?>">
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

<?= $this->endSection(); ?>