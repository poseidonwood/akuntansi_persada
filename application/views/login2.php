<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title> Sistem Akuntansi dan Penjualan | SiAP </title>
	<meta http-equiv="Content-Security-Policy" content="frame-ancestors 'none'">
	<link rel="icon" type="image/png" sizes="96x96" href="<?php echo base_url(); ?>assets/img/favicon.png">
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>css/util.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/login/'); ?>css/main.css">
	<!--===============================================================================================-->
</head>

<body>

	<div class="limiter">
		<div class="container-login100" style="background-image: url('<?= base_url('assets/login/'); ?>images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Account Login
				</span>
				<!-- <form class="login100-form validate-form p-b-33 p-t-5"> -->
				<?php
				$attributes = array('id' => 'Customer_form', 'method' => 'post', 'class' => 'form-horizontal');
				?>
				<div class="wrap-input100 validate-input" data-validate="Enter username">
					<?php
					$data = array('class' => 'form-control input-lg', 'id' => 'user_email', 'type' => 'email', 'name' => 'user_email', 'value' => '', 'placeholder' => 'Alamat Email', 'reqiured' => '', 'AUTOCOMPLETE' => 'OFF');
					echo form_input($data);
					?> <span class="focus-input100" data-placeholder="&#xe82a;"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Enter password">
					<?php
					$data = array('class' => 'form-control input-lg', 'id' => 'user_password', 'type' => 'password', 'name' => 'user_password', 'value' => '', 'placeholder' => 'Kata Sandi', 'reqiured' => '', 'AUTOCOMPLETE' => 'OFF');
					echo form_input($data);
					?>
					<span class="focus-input100" data-placeholder="&#xe80f;"></span>
				</div>

				<div class="container-login100-form-btn m-t-32">
					<?php
					$data = array('class' => 'btn btn-primary btn-block btn-outline-secondary', 'name' => 'btn_submit_signin', 'value' => $page_title_model_button_Signin);

					echo form_submit($data);
					?>
				</div>
				<?php echo form_close(); ?>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="<?= base_url('assets/login/'); ?>vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/login/'); ?>vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/login/'); ?>vendor/bootstrap/js/popper.js"></script>
	<script src="<?= base_url('assets/login/'); ?>vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/login/'); ?>vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/login/'); ?>vendor/daterangepicker/moment.min.js"></script>
	<script src="<?= base_url('assets/login/'); ?>vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/login/'); ?>vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="<?= base_url('assets/login/'); ?>js/main.js"></script>

</body>

</html>