<section class="hero-wrap hero-wrap-2" style="background-image: url('<?= base_url('asset/energen-master/') ?>images/bg_2.jpg');" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
				<h1 class="mb-3 bread">Register Pelanggan</h1>
				<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Register</span></p>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section contact-section">
	<div class="container">
		<div class="row block-9">

			<div class="col-md-1"></div>
			<div class="col-md-8 ftco-animate">
				<form action="<?= base_url('Pelanggan/cLogin/register') ?>" method="POST" class="contact-form">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" name="nama" class="form-control" placeholder="Nama Pelanggan">
								<?= form_error('nama', '<small class="text-danger">', '</small>') ?>

							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" name="no_hp" class="form-control" placeholder="No Telepon">
								<?= form_error('no_hp', '<small class="text-danger">', '</small>') ?>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<select name="jk" class="form-control">
									<option value="">---Pilih Jenis Kelamin---</option>
									<option value="Perempuan">Perempuan</option>
									<option value="Laki - Laki">Laki - Laki</option>
								</select>
								<?= form_error('jk', '<small class="text-danger">', '</small>') ?>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="date" name="tgl_lahir" class="form-control" placeholder="Tanggal Lahir">
								<?= form_error('tgl_lahir', '<small class="text-danger">', '</small>') ?>
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<input type="text" name="alamat" class="form-control" placeholder="Alamat">
								<?= form_error('alamat', '<small class="text-danger">', '</small>') ?>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" name="username" class="form-control" placeholder="Username">
								<?= form_error('username', '<small class="text-danger">', '</small>') ?>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" name="password" class="form-control" placeholder="Password">
								<?= form_error('password', '<small class="text-danger">', '</small>') ?>
							</div>
						</div>
					</div>
					<small class="mb-3">Apakah Anda Sudah Memiliki Akun? <a href="<?= base_url('Pelanggan/cLogin') ?>">Login Here!</a></small>

					<div class="form-group">
						<input type="submit" value="Register" class="btn btn-primary py-3 px-5">
					</div>
				</form>
			</div>
		</div>
	</div>
</section>