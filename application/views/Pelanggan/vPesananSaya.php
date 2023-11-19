<section class="hero-wrap hero-wrap-2" style="background-image: url('<?= base_url('asset/energen-master/') ?>images/bg_2.jpg');" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
				<h1 class="mb-3 bread">Pesanan Pelanggan</h1>
				<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Pesanan</span></p>
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
					<div class="col-lg-12">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Tanggal Transaksi</th>
									<th scope="col">Total Transaksi</th>
									<th scope="col">Status Order</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<?php
								$no = 1;
								foreach ($pesanan_saya as $key => $value) {
								?>
									<tr>
										<th scope="row"><?= $no++ ?></th>
										<td><?= $value->tgl_transaksi ?></td>
										<td>Rp. <?= number_format($value->tot_transaksi + $value->ongkir)  ?></td>
										<td><?php
											if ($value->stat_transaksi == '0') {
											?>
												<span class="badge badge-danger">Belum Bayar</span>
											<?php
											} else if ($value->stat_transaksi == '1') {
											?>
												<span class="badge badge-warning">Menunggu Konfirmasi</span>
											<?php
											} else if ($value->stat_transaksi == '2') {
											?>
												<span class="badge badge-info">Pesanan Diproses</span>
											<?php
											} else if ($value->stat_transaksi == '3') {
											?>
												<span class="badge badge-primary">Pesanan Dikirim</span>
											<?php
											} else if ($value->stat_transaksi == '4') {
											?>
												<span class="badge badge-success">Pesanan Selesai</span>
											<?php
											}
											?>
										</td>
										<td><a href="<?= base_url('Pelanggan/cPesananSaya/detail_transaksi/' . $value->id_transaksi)  ?>" class="btn btn-warning">Detail Transaksi</a></td>
									</tr>
								<?php
								}
								?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>