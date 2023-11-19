<div class="main-panel">
	<div class="content-wrapper">
		<div class="page-header">
			<h3 class="page-title">Masukkan Data Produk</h3>
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Produk</a></li>
				</ol>
			</nav>
		</div>
		<div class="row">
			<div class="col-md-6 grid-margin stretch-card">
				<div class="card">
					<div class="card-body">
						<?php echo form_open_multipart('admin/cproduk/update/' . $produk->id_barang); ?>

						<div class="form-group">
							<label for="input-2">Nama Produk</label>
							<input type="text" name="nama" value="<?= $produk->nama_barang ?>" class="form-control" id="input-2" placeholder="Masukkan Nama Produk">
							<?= form_error('nama', '<small class="form-text text-danger">', '</small>'); ?>
						</div>
						<div class="form-group">
							<label for="input-3">Keterangan</label>
							<input type="text" name="keterangan" value="<?= $produk->deskripsi ?>" class="form-control" id="input-3" placeholder="Masukkan keterangan">
							<?= form_error('keterangan', '<small class="form-text text-danger">', '</small>'); ?>
						</div>
						<div class="form-group">
							<label for="input-4">Harga</label>
							<input type="number" name="harga" value="<?= $produk->harga ?>" class="form-control" id="input-4" placeholder="Masukkan Harga">
							<?= form_error('harga', '<small class="form-text text-danger">', '</small>'); ?>
						</div>
						<div class="form-group">
							<label for="input-4">Type Produk</label>
							<select class="form-control" name="type">
								<option value="">---Pilih Type Produk---</option>
								<option value="1" <?php if ($produk->type_barang == '1') {
														echo 'selected';
													} ?>>Produk Satuan</option>
								<option value="2" <?php if ($produk->type_barang == '2') {
														echo 'selected';
													} ?>>Produk Paket</option>
							</select>
							<?= form_error('type', '<small class="form-text text-danger">', '</small>'); ?>
						</div>
						<div class="form-group">
							<label for="input-4">Stok</label>
							<input type="number" value="<?= $produk->stok ?>" name="stok" class="form-control" id="input-4" placeholder="Masukkan stok">
							<?= form_error('stok', '<small class="form-text text-danger">', '</small>'); ?>
						</div>

						<div class="form-group">
							<label for="input-5">Gambar</label><br>
							<img style="width: 150px;" src="<?= base_url('asset/foto-produk/' . $produk->gambar) ?>">
							<input type="file" name="gambar" class="form-control" id="input-5">
						</div>
						<button type="submit" class="btn btn-primary mr-2"> Submit </button>
						<a href="<?= base_url('Admin/cUser') ?>" class="btn btn-light">Cancel</a>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>