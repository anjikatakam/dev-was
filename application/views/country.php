
<?php include("header.php"); ?>
   <!-- Data Tables -->
        
        
       <div id="wrapper">
	<div class="main-content">
		<div class="row small-spacing">
			<div class="col-12">
				<div class="box-content">
                <?php 
                
                if(@$_GET['sucess_message'] == 1){ ?>
                    <div class="alert alert-success" role="alert"> <strong>Well done!</strong> Deleted Sucessfully...!</div>
					<?php } 
                    if(@$_GET['failure_message']== 1) { ?>
                    <div class="alert alert-danger" role="alert"> <strong>Oh snap!</strong> Something went wrong, Please try again...! </div>
<?php } ?>
					<!-- /.box-title -->
					<div style="margin-bottom: 5px;">
                                           <h4 class="box-title">Country</h4>
					
                                           <a href="<?php echo base_url()?>masters/add_country" class="btn btn-icon btn-icon-left btn-success waves-effect waves-light" style="color: #FFF;font-weight: bold;text-align: center;"><i class="ico fa fa-plus"></i>New Country</a>

                    </div>
                    <br />
                    <form data-toggle="validator" method="get" action="">
                        <div class="form-group margin-bottom-20">
							<label for="inputName" class="control-label">Select Region</label>
							<select class="form-control" name="slug" required>
								<option value="">Select Region</option>
								<?php  
                                foreach($get_regions as $regions){
                                    echo "<option value='".$regions->slug."'>".$regions->region."</option>";
                                }
                                ?>
							</select>
						</div>
                        <div class="form-group">
							<button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
						</div>
					</form>
                    
                    
                    <!-- /.dropdown js__dropdown -->
					<table id="example" class="table table-striped table-bordered display" style="width:100%">
						<thead>
							<tr>
								<th>Sl.No.</th>
								<th>Region</th>
								<th>Country</th>
								<th>Options</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Sl.No.</th>
								<th>Region</th>
								<th>Country</th>
								<th>Options</th>
							</tr>
						</tfoot>
						<tbody>
                            
							<?php $i=1; foreach($get_countries as $countries){ ?>
                            <tr>
								<td style="width: 20px;"><?php echo $i; $i++; ?></td>
								<td><?php echo $region_details[0]->region?></td>
								<td><?php echo $countries->country ?></td>
								<td style="width: 60px;"><a href="<?php echo base_url()?>masters/edit_country/<?php echo $countries->slug ?>"><i class="far fa-edit"></i></a>
                                &nbsp;&nbsp;
                                <a href="<?php echo base_url()?>masters/country/delete/<?php echo $countries->slug ?>" onclick="return confirm('Are you sure you want Delete?')"><i class="far fa-trash-alt" style="color: red;"></i></a>
                                </td>
							</tr>
							<?php } ?>
						</tbody>
					</table>
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-12 -->
			

			
		</div>
		<!-- /.row small-spacing -->		 
    
    
    
	<?php include("footer.php"); ?>