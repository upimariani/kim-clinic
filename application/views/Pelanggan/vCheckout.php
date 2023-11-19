<section class="hero-wrap hero-wrap-2" style="background-image: url('<?= base_url('asset/energen-master/') ?>images/bg_2.jpg');" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
				<h1 class="mb-3 bread">Checkout Pelanggan</h1>
				<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Checkout</span></p>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section contact-section">
	<div class="container">

		<div class="card">
			<div class="card-header">
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
			<div class="card-body">
				<div class="row">
					<div class="col-md-4 order-md-2 mb-4">
						<form action="<?= base_url('Pelanggan/cCheckout/checkout') ?>" method="POST">
							<input type="hidden" name="estimasi">
							<input type="hidden" name="ongkir">

							<input type="hidden" name="total_bayar">
							<h4 class="d-flex justify-content-between align-items-center mb-3">
								<span class="text-muted">Your cart</span>
								<?php
								$qty = 0;
								foreach ($this->cart->contents() as $key => $value) {
									$qty += $value['qty'];
								}
								?>
								<span class="badge badge-secondary badge-pill"><?= $qty ?></span>
							</h4>
							<ul class="list-group mb-3">
								<?php
								foreach ($this->cart->contents() as $key => $value) {
								?>
									<li class="list-group-item d-flex justify-content-between lh-condensed">
										<div>
											<h6 class="my-0"><?= $value['name'] ?></h6>
											<small class="text-muted"><?= $value['qty'] ?> x</small>
											<span class="text-muted">Rp. <?= number_format($value['price'] * $value['qty'])  ?></span>
										</div>
										<a href="<?= base_url('Pelanggan/cCheckout/hapus/' . $value['rowid']) ?>">X</a>
									</li>
								<?php
								}
								?>
								<li class="list-group-item justify-content-between bg-light">
									<div class="text-success">
										<h6 class="my-0">Total Produk</h6>
									</div>
									<span class="text-success">Rp. <?= number_format($this->cart->total()) ?></span>
								</li>
								<li class="list-group-item justify-content-between bg-light">
									<div class="text-success">
										<h6 class="my-0">Ongkir</h6>
									</div>
									<span class="text-success" id="ongkir"></span>
								</li>
								<li class="list-group-item justify-content-between bg-light">
									<div class="text-success">
										<h6 class="my-0">Total Pembayaran</h6>
									</div>
									<span class="text-success" id="total_bayar"></span>
								</li>
							</ul>
					</div>
					<div class="col-md-8 order-md-1">
						<h4 class="mb-3">Billing address</h4>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="firstName">Nama Pelanggan</label>
								<input type="text" value="<?= $this->session->userdata('nama_pelanggan') ?>" class="form-control" id="firstName" readonly>
								<div class="invalid-feedback">
									Valid first name is required.
								</div>
							</div>
							<div class="col-md-6 mb-3">
								<label for="lastName">Alamat Detail</label>
								<input type="text" name="alamat" value="<?= $this->session->userdata('alamat') ?>" class="form-control" id="lastName" readonly>
								<div class="invalid-feedback">
									Valid last name is required.
								</div>
							</div>
						</div>



						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="country">Provinsi</label>
								<select class="custom-select d-block w-100" name="provinsi" id="country" required>

								</select>
								<div class="invalid-feedback">
									Please select a valid country.
								</div>
							</div>
							<div class="col-md-6 mb-3">
								<label for="state">Kota/Kabupaten</label>
								<select name="kota" class="custom-select d-block w-100" id="state" required>

								</select>
								<div class="invalid-feedback">
									Please provide a valid state.
								</div>
							</div>
							<div class="col-md-6 mb-3">
								<label for="country">Expedisi</label>
								<select name="expedisi" class="custom-select d-block w-100" id="country" required>

								</select>
								<div class="invalid-feedback">
									Please select a valid country.
								</div>
							</div>
							<div class="col-md-6 mb-3">
								<label for="state">Estimasi</label>
								<select name="paket" class="custom-select d-block w-100" id="state" required>

								</select>
								<div class="invalid-feedback">
									Please provide a valid state.
								</div>
							</div>
						</div>

						<hr class="mb-4">
						<button type="submit" class="btn btn-primary btn-lg btn-block" type="submit">Continue to checkout</button>
						</form>
					</div>
				</div>

			</div>
		</div>


	</div>
</section>
<footer class="ftco-footer ftco-section">
	<div class="container">
		<div class="row d-flex">
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Energen</h2>
					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
					<ul class="ftco-footer-social list-unstyled float-lft mt-3">
						<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
						<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
						<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4 ml-md-4">
					<h2 class="ftco-heading-2">Popular Links</h2>
					<ul class="list-unstyled">
						<li><a href="#">Aromatheraphy</a></li>
						<li><a href="#">Skin Care</a></li>
						<li><a href="#">Herbal Spa</a></li>
						<li><a href="#">Body Massage</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Quick Links</h2>
					<ul class="list-unstyled">
						<li><a href="#">About</a></li>
						<li><a href="#">Our Spa</a></li>
						<li><a href="#">Treatments</a></li>
						<li><a href="#">Specialists</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Have a Questions?</h2>
					<div class="block-23 mb-3">
						<ul>
							<li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
							<li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
							<li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center">

				<p class="mb-0">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;<script>
						document.write(new Date().getFullYear());
					</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</div>
	</div>
</footer>



<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
		<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
		<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
	</svg></div>


<script src="<?= base_url('asset/energen-master/') ?>js/jquery.min.js"></script>
<script src="<?= base_url('asset/energen-master/') ?>js/jquery-migrate-3.0.1.min.js"></script>
<script src="<?= base_url('asset/energen-master/') ?>js/popper.min.js"></script>
<script src="<?= base_url('asset/energen-master/') ?>js/bootstrap.min.js"></script>
<script src="<?= base_url('asset/energen-master/') ?>js/jquery.easing.1.3.js"></script>
<script src="<?= base_url('asset/energen-master/') ?>js/jquery.waypoints.min.js"></script>
<script src="<?= base_url('asset/energen-master/') ?>js/jquery.stellar.min.js"></script>
<script src="<?= base_url('asset/energen-master/') ?>js/owl.carousel.min.js"></script>
<script src="<?= base_url('asset/energen-master/') ?>js/jquery.magnific-popup.min.js"></script>
<script src="<?= base_url('asset/energen-master/') ?>js/aos.js"></script>
<script src="<?= base_url('asset/energen-master/') ?>js/jquery.animateNumber.min.js"></script>
<script src="<?= base_url('asset/energen-master/') ?>js/bootstrap-datepicker.js"></script>
<script src="<?= base_url('asset/energen-master/') ?>js/jquery.timepicker.min.js"></script>
<script src="<?= base_url('asset/energen-master/') ?>js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="<?= base_url('asset/energen-master/') ?>js/google-map.js"></script>
<script src="<?= base_url('asset/energen-master/') ?>js/main.js"></script>
<script>
	$(document).ready(function() {
		$.ajax({
			type: "POST",
			url: "http://localhost/kim-clinic/pelanggan/ongkir/provinsi",
			success: function(hasil_provinsi) {
				console.log(hasil_provinsi);
				$("select[name=provinsi]").html(hasil_provinsi);
			}
		});

		$("select[name=provinsi]").on("change", function() {
			var id_provinsi_terpilih = $("option:selected", this).attr("id_provinsi");
			$.ajax({
				type: "POST",
				url: "http://localhost/kim-clinic/pelanggan/ongkir/kota",
				data: 'id_provinsi=' + id_provinsi_terpilih,
				success: function(hasil_kota) {
					$("select[name=kota]").html(hasil_kota);
				}
			});
		});

		$("select[name=kota]").on("change", function() {
			$.ajax({
				type: "POST",
				url: "http://localhost/kim-clinic/pelanggan/ongkir/expedisi",
				success: function(hasil_expedisi) {
					$("select[name=expedisi]").html(hasil_expedisi);
				}
			});
		});


		$("select[name=expedisi]").on("change", function() {
			//mendapatkan expedisi terpilih
			var expedisi_terpilih = $("select[name=expedisi]").val()

			//mendapatkan id kota tujuan terpilih
			var id_kota_tujuan_terpilih = $("option:selected", "select[name=kota]").attr('id_kota');

			//alert(total_berat);
			$.ajax({
				type: "POST",
				url: "http://localhost/kim-clinic/pelanggan/ongkir/paket",
				data: 'expedisi=' + expedisi_terpilih + '&id_kota=' + id_kota_tujuan_terpilih + '&berat=1000',
				success: function(hasil_paket) {
					$("select[name=paket]").html(hasil_paket);
				}
			});
		});


		$("select[name=paket]").on("change", function() {
			//menampilkan ongkir
			var dataongkir = $("option:selected", this).attr('ongkir');
			var reverse = dataongkir.toString().split('').reverse().join(''),
				ribuan_ongkir = reverse.match(/\d{1,3}/g);
			ribuan_ongkir = ribuan_ongkir.join(',').split('').reverse().join('');
			//alert(dataongkir);
			$("#ongkir").html("Rp. " + ribuan_ongkir)
			//menghitung total bayar
			var ongkir = $("option:selected", this).attr('ongkir');
			var total_bayar = parseInt(ongkir) + parseInt(<?= $this->cart->total() ?>);



			var reverse2 = total_bayar.toString().split('').reverse().join(''),
				ribuan_total = reverse2.match(/\d{1,3}/g);
			ribuan_total = ribuan_total.join(',').split('').reverse().join('');
			$("#total_bayar").html("Rp. " + ribuan_total);

			//estimasi dan ongkir
			var estimasi = $("option:selected", this).attr('estimasi');
			$("input[name=estimasi]").val(estimasi);
			$("input[name=ongkir]").val(dataongkir);
			$("input[name=total_bayar]").val(total_bayar);
			$("input[name=istimewa]").val(istimewa);
		});
	});
</script>
</body>

</html>