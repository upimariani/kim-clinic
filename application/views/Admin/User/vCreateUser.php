<div class="main-panel">
	<div class="content-wrapper">
		<div class="page-header">
			<h3 class="page-title">Masukkan Data User</h3>
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">User</a></li>
				</ol>
			</nav>
		</div>
		<div class="row">
			<div class="col-md-6 grid-margin stretch-card">
				<div class="card">
					<div class="card-body">
						<form class="forms-sample" action="<?= base_url('Admin/cUser/create') ?>" method="POST">
							<div class="form-group">
								<label for="exampleInputUsername1">Nama User</label>
								<input type="text" name="nama" value="<?= set_value('nama') ?>" class="form-control" />
								<?= form_error('nama', '<small class="text-danger">', '</small>') ?>
							</div>
							<div class="form-group">
								<label for="exampleInputUsername1">Alamat</label>
								<input type="text" name="alamat" value="<?= set_value('alamat') ?>" class="form-control" />
								<?= form_error('alamat', '<small class="text-danger">', '</small>') ?>
							</div>
							<div class="form-group">
								<label for="exampleInputUsername1">No Telepon</label>
								<input type="number" name="no_hp" value="<?= set_value('no_hp') ?>" class="form-control" />
								<?= form_error('no_hp', '<small class="text-danger">', '</small>') ?>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Username</label>
								<input type="text" name="username" value="<?= set_value('username') ?>" class="form-control" />
								<?= form_error('username', '<small class="text-danger">', '</small>') ?>

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label>
								<input type="text" name="password" value="<?= set_value('password') ?>" class="form-control" />
								<?= form_error('password', '<small class="text-danger">', '</small>') ?>

							</div>
							<div class="form-group">
								<label for="exampleInputConfirmPassword1">Level User</label>
								<div class="input-group">
									<select class="form-control" name="level">
										<option value="">---Pilih Level User---</option>
										<option value="1">Admin</option>
										<option value="2">Manager</option>
									</select>


								</div>
								<?= form_error('level', '<small class="text-danger">', '</small>') ?>
							</div>
							<button type="submit" class="btn btn-primary mr-2"> Submit </button>
							<a href="<?= base_url('Admin/cUser') ?>" class="btn btn-light">Cancel</a>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>