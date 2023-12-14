<div class="main-panel">
	<div class="content-wrapper">
		<div class="page-header">
			<h3 class="page-title">Data Pelanggan</h3>


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
		<div class="row">
			<div class="col-lg-12 grid-margin stretch-card">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">Informasi Pelanggan</h4>
						</p>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>Nama Pelanggan</th>
										<th>Alamat</th>
										<th>No Telepon</th>
										<th>Recency</th>
										<th>Frequency</th>
										<th>Monetary</th>
										<th>Level Member</th>
									</tr>
								</thead>
								<tbody>
									<?php
									foreach ($pelanggan as $key => $value) {
									?>
										<tr>
											<td><?= $value->nama_pelanggan ?></td>
											<td><?= $value->alamat ?></td>
											<td><?= $value->no_hp_pelanggan ?></td>
											<td><?= $value->recency ?></td>
											<td><?= $value->frequency ?></td>
											<td>Rp. <?= number_format($value->monetary)  ?></td>
											<td><?php
												if ($value->level_member == '1') {
												?>
													<span class="badge badge-success">Member</span>
												<?php
												} else {
												?>
													<span class="badge badge-warning">Non Member</span>
												<?php
												}
												?>
											</td>
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
	</div>