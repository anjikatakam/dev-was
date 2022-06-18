<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">
   <!-- <meta name="google-signin-client_id" content="117095056043-uifhhr9a0rm0pd1f4o12rcdl343c10al.apps.googleusercontent.com"> -->
    
	<title><?php echo $title ?></title>
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/styles/style.min.css">
<link rel="stylesheet" href="<?php echo base_url() ?>assets/styles/custom.css">

	<!-- Waves Effect -->
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/plugin/waves/waves.min.css">
   <!--  <script src="https://apis.google.com/js/platform.js" async defer></script> -->

</head>

<body>

<div id="single-wrapper">
	<form action="" method="POST" class="frm-single" data-toggle="validator">
		<div class="inside">
			<div class="title"><img src="<?php echo base_url()?>assets/logo.png"</div>
			<!-- /.title -->
			<div class="frm-title">Login</div>
            <div class="frm-title" style="color: red;"><?php echo @$error_message; ?></div>
            
		    
            <div class="form-group">
							<!-- <label for="inputEmail" class="control-label">Username</label> -->
							<input type="text" class="form-control" id="username" name="username" placeholder="Username" data-error="Enter valid Username" required>
							<div class="help-block with-errors" style="color: red;"></div>
						</div>
			<!-- /.frm-input -->
			<div class="form-group">
							<!-- <label for="inputPassword" class="control-label">Password</label> -->
							<div class="row">
								<div class="form-group col-md-12">
									<input type="password" data-minlength="6" class="form-control" id="password" name="password" placeholder="Password" required>
									<div class="help-block">Minimum of 6 characters</div>
								</div>
								
							</div>
						</div>
			<!-- /.frm-input -->
			<!-- /.clearfix -->
			<button type="submit" class="frm-submit">Login<i class="fa fa-arrow-circle-right"></i></button>
			<div class="row small-spacing">
				<div class="col-md-12">
					<!-- /.txt-login-with -->
				</div>
				<!-- /.col-md-12 -->
				<!--
                <div class="col-md-6"><button type="button" class="btn btn-sm btn-icon btn-icon-left btn-social-with-text btn-facebook text-white waves-effect waves-light"><i class="ico fa fa-facebook"></i><span>Facebook</span></button></div>
				<!-- /.col-md-6 -->
                <!--
				<div class="col-md-6 g-signin2"><a href="<?php echo base_url() ?>GoogleAuth" class="btn btn-sm btn-icon btn-icon-left btn-social-with-text btn-google-plus text-white waves-effect waves-light"><i class="ico fa fa-google-plus"></i>Google+</a></div>
				<!-- /.col-md-6 -->
			</div>
			<!-- /.row -->
			<div class="frm-footer">Wasco Energy &#169; 2021.</div>
			<!-- /.footer -->
		</div>
		<!-- .inside -->
	</form>
	<!-- /.frm-single -->
</div><!--/#single-wrapper -->

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="assets/script/html5shiv.min.js"></script>
		<script src="assets/script/respond.min.js"></script>
	<![endif]-->
	<!-- 
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<?php echo base_url() ?>assets/scripts/jquery.min.js"></script>
	<script src="<?php echo base_url() ?>assets/scripts/modernizr.min.js"></script>
	<script src="<?php echo base_url() ?>assets/plugin/bootstrap/js/bootstrap.min.js"></script>
	<script src="<?php echo base_url() ?>assets/plugin/nprogress/nprogress.js"></script>
	<script src="<?php echo base_url() ?>assets/plugin/waves/waves.min.js"></script>

    <!-- Validator -->
	<script src="assets/plugin/validator/validator.min.js"></script>
    
	<script src="<?php echo base_url() ?>assets/scripts/main.min.js"></script>
<script src="<?php echo base_url() ?>assets/scripts/mycommon.js"></script>
</body>
</html>