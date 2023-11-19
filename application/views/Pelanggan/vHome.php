<section class="hero-wrap js-fullheight" style="background-image: url(<?= base_url('asset/energen-master/images/bg_1.jpg') ?>);" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
			<div class="col-md-10 ftco-animate text-center">
				<div class="icon">
					<span class="flaticon-lotus"></span>
				</div>
				<h1>Kim Clinic</h1>
				<div class="row justify-content-center">
					<div class="col-md-7 mb-3">
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>
				<?php
				if ($this->session->userdata('success')) {
				?>
					<div class="alert alert-success alert-dismissible" role="alert">
						<?= $this->session->userdata('success') ?>
					</div>
				<?php
				}
				?>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section ftco-intro" style="background-image: url(<?= base_url('asset/energen-master/images/intro.jpg') ?>);">
	<div class="container">
		<div class="row justify-content-end">
			<div class="col-md-6">
				<div class="heading-section ftco-animate">
					<h2 class="mb-4">Benefits of Doing Spa &amp; Massage</h2>
				</div>
				<p class="ftco-animate">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
				<ul class="mt-5 do-list">
					<li class="ftco-animate"><a href="#"><span class="ion-ios-checkmark-circle mr-3"></span>Spa &amp; Massage boosts brain power</a></li>
					<li class="ftco-animate"><a href="#"><span class="ion-ios-checkmark-circle mr-3"></span>Spa &amp; Massage helps you to breathe better</a></li>
					<li class="ftco-animate"><a href="#"><span class="ion-ios-checkmark-circle mr-3"></span>Spa &amp; Massage improves your strength</a></li>
					<li class="ftco-animate"><a href="#"><span class="ion-ios-checkmark-circle mr-3"></span>Spa &amp; Massage helps you to focus</a></li>
					<li class="ftco-animate"><a href="#"><span class="ion-ios-checkmark-circle mr-3"></span>Spa &amp; Massage helps give meaning to your day</a></li>
				</ul>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section ftco-no-pt ftco-no-pb">
	<div class="container">
		<div class="row no-gutters">

			<?php
			foreach ($produk as $key => $value) {
			?>

				<div class="col-md-4 d-flex align-items-stretch">
					<form action="<?= base_url('Pelanggan/cHome/addtocart') ?>" method="POST">
						<input type="hidden" name="id" value="<?= $value->id_barang ?>">
						<input type="hidden" name="nama" value="<?= $value->nama_barang ?>">

						<input type="hidden" name="gambar" value="<?= $value->gambar ?>">
						<input type="hidden" name="stok" value="<?= $value->stok ?>">
						<div class="offer-deal text-center px-2 px-lg-5">
							<div class="img" style="background-image: url(<?= base_url('asset/foto-produk/' . $value->gambar) ?>);"></div>
							<div class="text mt-3">
								<h3 class="mb-4"><?= $value->nama_barang ?></h3>
								<?php
								if ($this->session->userdata('level') == '1') {
								?>
									<h5 class="mb-2">Rp. <?= number_format($value->harga - (($value->diskon / 100) * $value->harga))  ?></h5>
									<input type="hidden" name="harga" value="<?= $value->harga - (($value->diskon / 100) * $value->harga) ?>">
									<?php
									if ($value->diskon != NULL) {
									?>
										<del>Rp. <?= number_format($value->harga)  ?></del>
									<?php
									}
									?>
								<?php
								} else {
								?>
									<input type="hidden" name="harga" value="<?= $value->harga ?>">
									<h5 class="mb-2">Rp. <?= number_format($value->harga)  ?></h5>
								<?php
								}
								?>


								<p class="mb-5">Deskripsi: <?= $value->deskripsi ?></p>
								<p><button type="submit" class="btn btn-white px-4 py-3"> Add To Cart <span class="ion-ios-arrow-round-forward"></span></button></p>
							</div>
						</div>
					</form>
				</div>
			<?php
			}
			?>
		</div>
	</div>
</section>

<section class="ftco-section ftco-section-services bg-light">
	<div class="container-fluid px-md-5">
		<div class="row">
			<div class="col-md-6 col-lg-3">
				<div class="services text-center ftco-animate">
					<div class="icon d-flex justify-content-center align-items-center">
						<span class="flaticon-candle"></span>
					</div>
					<div class="text mt-3">
						<h3>Aromatheraphy</h3>
						<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-3">
				<div class="services text-center ftco-animate">
					<div class="icon d-flex justify-content-center align-items-center">
						<span class="flaticon-beauty-treatment"></span>
					</div>
					<div class="text mt-3">
						<h3>Skin Care</h3>
						<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-3">
				<div class="services text-center ftco-animate">
					<div class="icon d-flex justify-content-center align-items-center">
						<span class="flaticon-stone"></span>
					</div>
					<div class="text mt-3">
						<h3>Herbal Spa</h3>
						<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-3">
				<div class="services text-center ftco-animate">
					<div class="icon d-flex justify-content-center align-items-center">
						<span class="flaticon-relax"></span>
					</div>
					<div class="text mt-3">
						<h3>Body Massage</h3>
						<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>




<section class="ftco-section testimony-section">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
			<div class="col-md-10 heading-section ftco-animate text-center">
				<h3 class="subheading">Testimony</h3>
				<h2 class="mb-1">Successful Stories</h2>
			</div>
		</div>
		<div class="row ftco-animate">
			<div class="col-md-12">
				<div class="carousel-testimony owl-carousel">
					<?php
					foreach ($review as $key => $value) {
					?>
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="text">
									<div class="line pl-5">
										<p class="mb-4 pb-1"><?= $value->review ?></p>
										<span class="quote d-flex align-items-center justify-content-center">
											<i class="icon-quote-left"></i>
										</span>
									</div>
									<div class="d-flex align-items-center">
										<div class="user-img" style="background-image: url(images/person_1.jpg)">
										</div>
										<div class="ml-4">
											<p class="name"><?= $value->nama_pelanggan ?></p>
											<small><?= $value->time ?></small><br>
											<span class="position">Customer</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					<?php
					}
					?>
				</div>
			</div>
		</div>
	</div>
</section>