<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
  <div class="container">
    <div class="row">
      <div class="col">
        <h1 class="mt-2 daftar-komik">Daftar Orang</h1>
        <!-- Button trigger modal -->
        <form method="post" action="">
          <input type="text" name="keyword" > 
          <button type="submit">cari</button>
        </form>
      
        <table class="table table-dark">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">nama</th>
              
         
            </tr>
          </thead>
          <?php if($orang){ ?>
          <tbody>
            <?php $no=1+(6*($cP-1)); 
            foreach($orang as $k){ ?>
            <tr>
              <th scope="row"><?= $no++; ?></th>
              <td><?= $k['nama'] ?></td>
              
            </tr>
          <?php } ?>
          </tbody>
        <?php }else{
            echo 'gaaada';
        } ?>
        </table>
        <?= $pager->links('orang','orang_pagination') ?>
      </div>
    </div>
   </div>



<?= $this->endSection(); ?>

