
<?php include("header.php"); ?>


<div id="wrapper">
	<div class="main-content">
		<div class="row small-spacing">
			<div class="col-12">
				    <h4 class="box-title">Change Password - <?php echo $get_user_details[0]->lastName ?> <?php echo $get_user_details[0]->firstName?></h4>
					<div class="box-content">

                    <?php if(@$sucess_message != ''){ ?>
                    <div class="alert alert-success" role="alert"> <strong>Well done!</strong> <?php echo @$sucess_message; ?></div>
					<?php } 
                    if(@$error_message != '') { ?>
                    <div class="alert alert-danger" role="alert"> <strong>Oh snap!</strong> <?php echo @$error_message; ?> </div>
<?php } ?>
					<form data-toggle="validator" method="post" action="">
						
                        <div class="form-group">
							<label for="inputName" class="control-label">Password</label>
							<input type="password" class="form-control" id="inputName" placeholder="Enter password" name="password" data-error="Please enter Password" required>
						</div>
						
                        <div class="form-group">
							<label for="inputName" class="control-label">Confirm Password</label>
							<input type="password" class="form-control" id="inputName" placeholder="Confirm password" name="cpassword" data-error="Please enter Password" required/>
						</div>
						 
                        <div class="form-group">
							<button type="submit" class="btn btn-primary waves-effect waves-light">Change Password</button>
						</div>
					</form>
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-12 -->
		</div>
		<!-- /.row small-spacing -->    
	<?php include("footer.php"); ?>