
<?php include("header.php"); ?>


<div id="wrapper">
	<div class="main-content">
		<div class="row small-spacing">
			<div class="col-12">
				    <h4 class="box-title">Create New Country</h4>
					<div class="box-content">

                    <?php if(@$sucess_message != ''){ ?>
                    <div class="alert alert-success" role="alert"> <strong>Well done!</strong> <?php echo @$sucess_message; ?></div>
					<?php } 
                    if(@$failure_message != '') { ?>
                    <div class="alert alert-danger" role="alert"> <strong>Oh snap!</strong> <?php echo @$failure_message; ?> </div>
<?php } ?>
					<form data-toggle="validator" method="post" action="">
						<div class="form-group margin-bottom-20">
							<label for="inputName" class="control-label">Select Region</label>
							<select class="form-control" name="id" required>
								<option value="">Select Region</option>
								<?php  
                                foreach($get_regions as $regions){
                                    echo "<option value='".$regions->id."'>".$regions->region."</option>";
                                }
                                ?>
							</select>
						</div>
                        
                        <div class="form-group">
							<label for="inputName" class="control-label">Country</label>
							<input type="text" class="form-control" id="inputName" placeholder="Enter Country" name="country" required>
						</div>
						
                        <div class="form-group">
							<button type="submit" class="btn btn-primary waves-effect waves-light">Add Country</button>
						</div>
					</form>
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-12 -->
		</div>
		<!-- /.row small-spacing -->    
	<?php include("footer.php"); ?>