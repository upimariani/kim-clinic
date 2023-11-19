<!DOCTYPE html>
<html lang="en">

<head>
	<title>KIM - CLINIC</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&display=swap" rel="stylesheet">

	<link href="https://fonts.googleapis.com/css?family=Prata&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="<?= base_url('asset/energen-master/') ?>css/open-iconic-bootstrap.min.css">
	<link rel="stylesheet" href="<?= base_url('asset/energen-master/') ?>css/animate.css">

	<link rel="stylesheet" href="<?= base_url('asset/energen-master/') ?>css/owl.carousel.min.css">
	<link rel="stylesheet" href="<?= base_url('asset/energen-master/') ?>css/owl.theme.default.min.css">
	<link rel="stylesheet" href="<?= base_url('asset/energen-master/') ?>css/magnific-popup.css">

	<link rel="stylesheet" href="<?= base_url('asset/energen-master/') ?>css/aos.css">

	<link rel="stylesheet" href="<?= base_url('asset/energen-master/') ?>css/ionicons.min.css">

	<link rel="stylesheet" href="<?= base_url('asset/energen-master/') ?>css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="<?= base_url('asset/energen-master/') ?>css/jquery.timepicker.css">


	<link rel="stylesheet" href="<?= base_url('asset/energen-master/') ?>css/flaticon.css">
	<link rel="stylesheet" href="<?= base_url('asset/energen-master/') ?>css/icomoon.css">
	<link rel="stylesheet" href="<?= base_url('asset/energen-master/') ?>css/style.css">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="#"><span class="flaticon-lotus"></span>KIM CLINIC</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="<?= base_url('Pelanggan/cHome') ?>" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="<?= base_url('Pelanggan/cPesananSaya') ?>" class="nav-link">Pesanan Saya</a></li>
					<li class="nav-item"><a href="<?= base_url('Pelanggan/cLogin/logout') ?>" class="nav-link">Logout</a></li>
					<li class="nav-item"><a href="<?= base_url('Pelanggan/cLogin/logout') ?>" class="nav-link">Selamat Datang, <?= $this->session->userdata('nama_pelanggan') ?><span class="badge badge-success"><?php if ($this->session->userdata('level') == '1') {
																																																						echo 'Istimewa';
																																																					} ?></span></a></li>
					<?php
					$qty = 0;
					foreach ($this->cart->contents() as $key => $value) {
						$qty += $value['qty'];
					}
					?>
					<li class="nav-item"><a href="<?= base_url('Pelanggan/cCheckout') ?>" class="nav-link">Cart <span class="badge badge-success"><?= $qty ?></span></a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->