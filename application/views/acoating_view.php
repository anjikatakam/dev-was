
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
                                           <h3 class="box-title">Ac Coatings</h3>
					
                                           <a href="<?php echo base_url()?>masters/add_country" class="btn btn-icon btn-icon-left btn-success waves-effect waves-light" style="color: #FFF;font-weight: bold;text-align: center;"><i class="ico fa fa-plus"></i>Add New Ac Coating</a>

                    </div>
                    <br />
                    <!-- /.dropdown js__dropdown -->
					<table id="example" class="table table-striped table-bordered display" style="width:100%">
						<thead>
							<tr>
								<th>Sl.No.</th>
								<th>Ac Coating</th>
								<th>Options</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Sl.No.</th>
								<th>Ac Coating</th>
								<th>Options</th>
							</tr>
						</tfoot>
						<tbody>
                            
							<?php $i=1; foreach($acoating as $acoat){ ?>
                            <tr>
								<td style="width: 20px;"><?php echo $i; $i++; ?></td>
								<td><?php echo $acoat->ac_coating ?></td>
								<td style="width: 60px;"><a href="<?php echo base_url()?>masters/edit_country/<?php echo $acoating->id ?>"><i class="far fa-edit"></i></a>
                                &nbsp;&nbsp;
                                <a href="<?php echo base_url()?>masters/country/delete/<?php echo $acoating->id ?>" onclick="return confirm('Are you sure you want Delete?')"><i class="far fa-trash-alt" style="color: red;"></i></a>
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