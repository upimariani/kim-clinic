<section class="hero-wrap hero-wrap-2" style="background-image: url('<?= base_url('asset/energen-master/') ?>images/bg_2.jpg');" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
				<h1 class="mb-3 bread">Login Pelanggan</h1>
				<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Login</span></p>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section contact-section">
	<div class="container">
		<div class="row block-9">

			<div class="col-md-1"></div>
			<div class="col-md-12 ftco-animate">

				<form action="<?= base_url('Pelanggan/cLogin') ?>" method="POST" class="contact-form">
					<div class="card">
						<div class="card-header">
							<?php
							if ($this->session->userdata('success')) {
							?>
								<div class="alert alert-success" role="alert">
									<?= $this->session->userdata('success') ?>
								</div>
							<?php
							}
							?>

							<?php
							if ($this->session->userdata('error')) {
							?>
								<div class="alert alert-danger" role="alert">
									<?= $this->session->userdata('error') ?>
								</div>
							<?php
							}
							?>
						</div>
						<div class="card-body">
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
							<small class="mb-3">Apakah Anda Belum Memiliki Akun? <a href="<?= base_url('Pelanggan/cLogin/register') ?>">Register Here!</a></small>

							<div class="form-group">
								<input type="submit" value="Login" class="btn btn-primary py-3 px-5">
							</div>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
</section>