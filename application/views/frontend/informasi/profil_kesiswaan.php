 <?php foreach ($profil_kesiswaan as $profil): ?> 
 <section class="section cb">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="tagline-message page-title text-center">
                    <h3>Profil Kesiswaan</h3>
                </div>
            </div>
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end section -->
<section class="section" style="margin-bottom: 40px">
  <div class="container">
    <div class="row">

      <div class="col-md-12">
        <div class="card">
          <div class="row no-gutters">
            <div class="col-md-4" style="display: flex; justify-content: center;" >
              <img src="<?= base_url('assets/backend/dist/img/').$profil->gambar  ?>" class="card-img" alt="<?= $profil->gambar  ?>">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h3 class="card-title"><?= $profil->judul  ?></h3>
                <p class="card-text"><?= $profil->keterangan  ?></p>

              </div> <!-- end card body -->
            </div> <!-- end col -->
          </div> <!-- end row -->
        </div> <!-- end card -->
      </div><!-- end col -->									
    </div><!-- end row -->

  </div><!-- end container -->
</section>
<?php endforeach ?>