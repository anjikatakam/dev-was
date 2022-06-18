
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title><?php echo $title ?></title>

	<!-- Main Styles -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/styles/style.min.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/styles/custom.css">
	
	<!-- Material Design Icon -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/fonts/material-design/css/materialdesignicons.css">

	<!-- mCustomScrollbar -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.min.css">

	<!-- Waves Effect -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugin/waves/waves.min.css">

	<!-- Sweet Alert -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugin/sweet-alert/sweetalert.css">
	
	<!-- Percent Circle -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugin/percircle/css/percircle.css">

	<!-- Chartist Chart -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugin/chart/chartist/chartist.min.css">
    
    <!-- Form Wizard -->
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/plugin/form-wizard/prettify.css">


	<link rel="stylesheet" href="<?php echo base_url()?>assets/plugin/datatables/media/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" href="<?php echo base_url()?>assets/plugin/datatables/extensions/Responsive/css/responsive.bootstrap.min.css">
     <link rel="icon" href="<?php echo base_url(); ?>assets/favicon.ico" /> 


</head>

<body>
<div class="main-menu">
	<header class="header" >
		<a href="/" class="logo"><img src="<?php echo base_url()?>assets/logo.png"  style="height: 40px;"/></a>
		<button type="button" class="button-close fa fa-times js__menu_close"></button>
	</header>
	<!-- /.header -->
	<div class="content">
   
<?php
$url=explode("/", $_SERVER['REQUEST_URI']);
$url2=explode("?", $url[2]);

?>
        <?php
            @$loginIn=$this->session->userdata['logged_in'];
            
            if($loginIn['level'] == 'admin'){
                include("admin_left_nav.php");
            }
        ?>
		
        
        	</div>
	<!-- /.content -->
</div>
<!-- /.main-menu -->

<div class="fixed-navbar">
	<div class="float-left">
		<button type="button" class="menu-mobile-button fas fa-bars js__menu_mobile"></button>
		<h1 class="page-title"><?Php echo ucfirst(str_replace("_", " ", $url[1]));?> - <?Php echo ucfirst(str_replace("_", " ", $url2[0]));?></h1>
		<!-- /.page-title -->
	</div>
	<!-- /.float-left -->
	<div class="float-right">
		
		<a href="#" class="ico-item fa fa-envelope notice-alarm js__toggle_open" data-target="#message-popup"></a>
		<a href="#" class="ico-item pulse"><span class="ico-item fa fa-bell notice-alarm js__toggle_open" data-target="#notification-popup"></span></a>
		
        <div class="ico-item">
			<?php if(($userDetails[0]['type'] == 'male' or $userDetails[0]['type'] == 'female') and $userDetails[0]['level'] == 'admin'){
			 echo '<img src="assets/images/avatars/admin.png" alt="" class="ico-img">';
			}elseif($userDetails[0]['type'] == 'male' and $userDetails[0]['level'] == 'author'){
			 echo '<img src="assets/images/avatars/male_author.png" alt="" class="ico-img">';
			}elseif($userDetails[0]['type'] == 'female' and $userDetails[0]['level'] == 'author'){
			 echo '<img src="assets/images/avatars/female_author.png" alt="" class="ico-img">';
			}elseif($userDetails[0]['type'] == 'male' and $userDetails[0]['level'] == 'rewiewer'){
			 echo '<img src="assets/images/avatars/male_reviewer.png" alt="" class="ico-img">';
			}elseif($userDetails[0]['type'] == 'female' and $userDetails[0]['level'] == 'rewiewer'){
			 echo '<img src="assets/images/avatars/female_reviewer.png" alt="" class="ico-img">';
			}elseif($userDetails[0]['type'] == 'male' and $userDetails[0]['level'] == 'editor'){
			 echo '<img src="assets/images/avatars/male_editor.png" alt="" class="ico-img">';
			}elseif($userDetails[0]['type'] == 'female' and $userDetails[0]['level'] == 'editor'){
			 echo '<img src="assets/images/avatars/female_editor.png" alt="" class="ico-img">';
			}elseif($userDetails[0]['type'] == 'male' and $userDetails[0]['level'] == 'manager'){
			 echo '<img src="assets/images/avatars/male_manager.png" alt="" class="ico-img">';
			}elseif($userDetails[0]['type'] == 'female' and $userDetails[0]['level'] == 'manager'){
			 echo '<img src="assets/images/avatars/female_manager.png" alt="" class="ico-img">';
			}else{
			 echo '<img src="assets/images/avatars/admin.png" alt="" class="ico-img">';
			} ?>
            <ul class="sub-ico-item">
				<li><a href="<?php echo base_url(); ?>settings">Profile</a></li>
				<li><a href="<?php echo base_url(); ?>dashboard/logout">Log Out</a></li>
			</ul>
			<!-- /.sub-ico-item -->
		</div>
		<!-- /.ico-item -->
	</div>
	<!-- /.float-right -->
</div>
<!-- /.fixed-navbar -->

<div id="notification-popup" class="notice-popup js__toggle" data-space="50">
	<h2 class="popup-title">Your Notifications</h2>
	<!-- /.popup-title -->
	<div class="content">
		<ul class="notice-list">
			
		</ul>
		<!-- /.notice-list -->
		<a href="#" class="notice-read-more">See more messages <i class="fa fa-angle-down"></i></a>
	</div>
	<!-- /.content -->
</div>
<!-- /#notification-popup -->

<div id="message-popup" class="notice-popup js__toggle" data-space="50">
	<h2 class="popup-title">Recent Messages<a href="#" class="float-right text-danger">New message</a></h2>
	<!-- /.popup-title -->
	<div class="content">
		<ul class="notice-list">
		
		</ul>
		<!-- /.notice-list -->
		<a href="#" class="notice-read-more">See more messages <i class="fa fa-angle-down"></i></a>
	</div>
	<!-- /.content -->
</div>
<!-- /#message-popup -->

