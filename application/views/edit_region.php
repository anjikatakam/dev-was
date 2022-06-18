
<?php include("header.php"); ?>


<div id="wrapper">
	<div class="main-content">
		<div class="row small-spacing">
			<div class="col-12">
				    <h4 class="box-title">Update Region</h4>
					<div class="box-content">

                    <?php if(@$sucess_message != ''){ ?>
                    <div class="alert alert-success" role="alert"> <strong>Well done!</strong> <?php echo @$sucess_message; ?></div>
					<?php } 
                    if(@$failure_message != '') { ?>
                    <div class="alert alert-danger" role="alert"> <strong>Oh snap!</strong> <?php echo @$failure_message; ?> </div>
<?php } ?>
					<form data-toggle="validator" method="post" action="">
						<div class="form-group">
							<label for="inputName" class="control-label">Region</label>
							<input type="text" class="form-control" id="inputName" value="<?php echo $get_region_by[0]->region?>" name="region" data-error="Enter Region" required>
						</div>

                        </div>
						
                        
                        <div class="form-group">
							<button type="submit" class="btn btn-primary waves-effect waves-light">Update Region</button>
						</div>
					</form>
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-12 -->
		</div>
		<!-- /.row small-spacing -->    
	<?php include("footer.php"); ?>