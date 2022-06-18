
<?php include("header.php"); ?>
<div id="wrapper">
	<div class="main-content">
		<div class="row small-spacing">
			<div class="col-12">
				    <h4 class="box-title">Update New User</h4>
					<div class="box-content">

                    <?php if(@$sucess_message != ''){ ?>
                    <div class="alert alert-success" role="alert"> <strong>Well done!</strong> <?php echo @$sucess_message; ?></div>
					<?php } 
                    if(@$failure_message != '') { ?>
                    <div class="alert alert-danger" role="alert"> <strong>Oh snap!</strong> <?php echo @$failure_message; ?> </div>
<?php } ?>
					<form data-toggle="validator" method="post" action="">
						<div class="form-group margin-bottom-20">
							<label for="inputName" class="control-label">Select Role</label>
							<select class="form-control" name="role" required>
								<option value="">Select Role</option>
								<?php  
                                foreach($get_roles as $roles){
                                    if($get_user_details[0]->role == $roles->role_slug){
                                        echo "<option value='".$roles->role_slug."' selected='selected'>".$roles->role_name."</option>";
                                    }else{
                                        echo "<option value='".$roles->role_slug."'>".$roles->role_name."</option>";
                                    }
                                    
                                }
                                ?>
							</select>
						</div>
                        
                        <div class="form-group">
							<label for="inputName" class="control-label">Username</label>
							<input type="text" class="form-control" id="inputName" name="username" value="<?php echo $get_user_details[0]->username ?>" disabled="disabled"/>
						</div>
                        
                        <div class="form-group">
							<label for="inputName" class="control-label">First Name</label>
							<input type="text" class="form-control" id="inputName" placeholder="Enter Fisrt Name" name="firstName" data-error="Please enter First Name" value="<?php echo $get_user_details[0]->firstName ?>" required>
						</div>
                        
                        <div class="form-group">
							<label for="inputName" class="control-label">Last Name</label>
							<input type="text" class="form-control" id="inputName" placeholder="Enter Last Name" name="lastName" data-error="Please enter Last Name" value="<?php echo $get_user_details[0]->lastName ?>" required>
						</div>
						
						<div class="form-group">
							<label for="inputName" class="control-label">Email</label>
							<input type="email" class="form-control" id="inputName" placeholder="Enter email" name="email" data-error="Please enter valid email" value="<?php echo $get_user_details[0]->email ?>" required>
						</div>
						
                        <div class="form-group">
							<button type="submit" class="btn btn-primary waves-effect waves-light">Add User</button>
						</div>
					</form>
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-12 -->
		</div>
		<!-- /.row small-spacing -->    
	<?php include("footer.php"); ?>