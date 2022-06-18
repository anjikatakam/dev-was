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
                                           <h4 class="box-title">Users</h4>
					
                                           <a href="<?php echo base_url()?>users/add_user" class="btn btn-icon btn-icon-left btn-success waves-effect waves-light" style="color: #FFF;font-weight: bold;text-align: center;"><i class="ico fa fa-plus"></i>New User</a>

                    </div>
                    
                    <div class="dropdown js__drop_down">
						                    
                        <a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
						<ul class="sub-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else there</a></li>
							<li class="split"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
						<!-- /.sub-menu -->
 
					</div>
					<!-- /.dropdown js__dropdown -->
					<table id="example" class="table table-striped table-bordered display" style="width:100%">
						<thead>
							<tr>
								<th>Username</th>
								<th>Full Name</th>
								<th>Email</th>
								<th>Role</th>
								<th>Options</th>

							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Username</th>
								<th>Full Name</th>
								<th>Email</th>
								<th>Role</th>
								<th>Options</th>
							</tr>
						</tfoot>
						<tbody>
							
                            <?php foreach($get_users as $users){ ?>
                            <tr>
								<td><?php echo $users->username ?></td>
								<td><?php echo $users->firstName ?> <?php echo $users->lastName ?></td>
								<td><?php echo $users->email ?></td>
								<td><?php echo $users->role ?></td>
								
                                <td  style="width: 80px;"><a href="<?php echo base_url()?>users/edit_user/<?php echo $users->slug ?>"><i class="far fa-edit"></i></a>
                                &nbsp;&nbsp;
                                <a href="<?php echo base_url()?>users/change_password/<?php echo $users->slug ?>"><i class="fas fa-key"  style="color: orange;"></i></a>
                                &nbsp;&nbsp;
                                <a href="<?php echo base_url()?>users/?action=delete&slug=<?php echo $users->slug ?>" onclick="return confirm('Are you sure you want Delete?')"><i class="far fa-trash-alt" style="color: red;"></i></a>
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