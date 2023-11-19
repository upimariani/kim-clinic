<section class="hero-wrap hero-wrap-2" style="background-image: url('<?= base_url('asset/energen-master/') ?>images/bg_2.jpg');" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
				<h1 class="mb-3 bread">Detail Pesanan Pelanggan</h1>
				<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Pesanan</span></p>
			</div>
		</div>
	</div>
</section>
<section class="ftco-section contact-section">
	<div class="container">
		<div class="card">
			<div class="card-header">
				<h3>Detail Pesanan </h3>
				<?php
				if ($this->session->userdata('success')) {
				?>
					<div class="alert alert-success alert-dismissible" role="alert">
						<?= $this->session->userdata('success') ?>
					</div>
				<?php
				}
				?>
				<table class="table">
					<tr>
						<td>Nama Penerima</td>
						<td>: <?= $detail['transaksi']->nama_pelanggan ?></td>
					</tr>
					<tr>
						<td>Alamat Pengiriman</td>
						<td>: <?= $detail['transaksi']->alamat_pengiriman ?></td>
					</tr>
				</table>
			</div>
			<div class="card-body">
				<div class="row">
					<div class="col-lg-12">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Nama Produk</th>
									<th scope="col">Harga</th>
									<th scope="col">Quantity</th>
									<th scope="col">Subtotal</th>
								</tr>
							</thead>
							<tbody>
								<?php
								$no = 1;
								foreach ($detail['detail_produk'] as $key => $value) {
								?>
									<tr>
										<th scope="row"><?= $no++ ?></th>
										<td><?= $value->nama_barang ?></td>
										<td>Rp. <?= number_format($value->harga)  ?></td>
										<td><?= $value->qty ?> x</td>
										<td><strong>Rp. <?= number_format($value->harga * $value->qty)  ?></strong></td>
									</tr>
								<?php
								}
								?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="card-footer">
				<div class="row">
					<div class="col-lg-6">
						<?php
						if ($detail['transaksi']->stat_transaksi == '0') {
						?>
							<?php echo form_open_multipart('Pelanggan/cPesananSaya/bayar/' . $detail['transaksi']->id_transaksi); ?>
							<div class="card-body">
								<h3>Pembayaran Pesanan</h3>
								<p>Atas Nama <strong>Kim Clinic</strong></p>
								<p>320909-023234-01-032</p>
								<input type="file" name="gambar" class="form-control" required>
								<button type="submit" class="btn btn-primary mt-3">Upload</button>
							</div>
							</form>
						<?php
						} else {
						?>
							<h3>Pembayaran Pesanan</h3>
							<img style="width: 250px;" src="<?= base_url('asset/pembayaran/' . $detail['transaksi']->bukti_pembayaran) ?>">
						<?php
						}
						?>
						<br>
						<?php
						if ($detail['transaksi']->stat_transaksi == '3') {
						?>
							<a class="btn btn-primary mt-3" href="<?= base_url('Pelanggan/cPesananSaya/pesanan_diterima/' . $detail['transaksi']->id_transaksi) ?>">Pesanan Sudah Diterima</a>
						<?php
						}
						?>
					</div>
					<div class="col-lg-6">
						<table class="table">
							<tr>
								<td>Ongkir</td>
								<td>: Rp. <?= number_format($detail['transaksi']->ongkir)  ?></td>
							</tr>
							<tr>
								<td>Subtotal</td>
								<td>: Rp. <?= number_format($detail['transaksi']->tot_transaksi)  ?></td>
							</tr>
							<tr>
								<td>Total Pembayaran</td>
								<td>: Rp. <?= number_format($detail['transaksi']->tot_transaksi + $detail['transaksi']->ongkir)  ?></td>
							</tr>
						</table>
						<?php
						if ($detail['transaksi']->stat_transaksi == '4') {
						?>
							<?php echo form_open_multipart('Pelanggan/cPesananSaya/kritik_saran/' . $detail['transaksi']->id_transaksi); ?>
							<div class="card">
								<div class="card-body">
									<h3>Review</h3>
									<p>Silahkan isi Review dibawah ini... </p>
									<textarea class="form-control" name="kritik_saran" rows="5" required></textarea>
									<button type="submit" class="btn btn-primary mt-3">Kirim</button>
								</div>
							</div>

							</form>
						<?php
						}
						?>
					</div>
				</div>

			</div>
		</div>
	</div>
</section>