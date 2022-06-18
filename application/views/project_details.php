<?php include("header.php"); ?>


<div id="wrapper">
	<div class="main-content">
		<div class="row small-spacing">
			<div class="col-12">
				    <div class="box-content">
                    <?php if(@$sucess_message != ''){ ?>
                    <div class="alert alert-success" role="alert"> <strong>Well done!</strong> <?php echo @$sucess_message; ?></div>
					<?php } 
                    if(@$error_message != '') { ?>
                    <div class="alert alert-danger" role="alert"> <strong>Oh snap!</strong> <?php echo @$error_message; ?> </div>
<?php } ?>
                    <h4 class="box-title">Project Details</h4>
						<div class="col-xl-12 col-12">
				<div class="box-content">
			
                	<h4 class="box-title" style="text-align: center;"><?php echo $get_project_details[0]->project_name ?></h4>
					
                    <table class="table table-striped margin-bottom-10 table-purchases" style="border: 1px solid #CCC;">
						<thead>
							<tr>
								<th style="text-align: center;">Description</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><?php echo $get_project_details[0]->description ?><br /><br /></td>

							</tr>
							
						</tbody>
					</table>
					<!-- /.table -->
				
                    <table class="table table-striped margin-bottom-10 table-purchases" style="border: 1px solid #CCC;">
						<thead>
							<tr>
								<th>Priority</th>
								<th>Country</th>
								<th>Region</th>
								<th>Value ($)</th>
								<th>Project Status</th>
                                <th>Bid Stage</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><?php echo $get_project_details[0]->priority ?></td>
								<td><?php echo $get_project_details[0]->country ?></td>
								<td><?php echo $get_project_details[0]->region ?></td>
								<td class="text-success"><?php
								
									echo number_format($get_project_details[0]->project_value) ?></td>
								<td class="text-success"><?php echo $get_project_details[0]->project_status ?></td>
								<td class="text-success"><?php echo $get_project_details[0]->bid_stage ?></td>

							</tr>
							
						</tbody>
					</table>
					<!-- /.table -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-6 col-12 -->

            <div class="col-xl-12 col-12">
				<div class="box-content">
					<h4 class="box-title" style="text-align: center;">Contract Award & Execution Period</h4>
					<table class="table table-striped margin-bottom-10 table-purchases" style="border: 1px solid #CCC;">
						<thead>
							<tr>
								<th style="text-align: center;">Contract Award</th>
								<th style="text-align: center;">Execution Period</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
                                <table class="table table-striped margin-bottom-10 table-purchases" style="border: 1px solid #CCC;">
						<thead>
							<tr>
								<th>Year</th>
								<th>Period</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><?php echo $get_project_details[0]->year ?></td>
								<td><?php echo $get_project_details[0]->period ?></td>
							</tr>
							
						</tbody>
					</table>                
                                </td>
								<td>
                                <table class="table table-striped margin-bottom-10 table-purchases" style="border: 1px solid #CCC;">
						<thead>
							<tr>
								<th>Year</th>
								<th>Period</th>
                                <th>Duration(Months)</th>
							</tr>
						</thead>
						<tbody>
							<tr>
                            <td><?php echo $get_project_details[0]->e_year ?></td>
								<td><?php echo $get_project_details[0]->e_period ?></td>
                                <td><?php echo $get_project_details[0]->duration_month ?></td>
                                
								
							</tr>
							
						</tbody>
					</table>                
                                </td>
							</tr>
							
						</tbody>
					</table>
					<!-- /.table -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-6 col-12 -->

<div class="col-xl-12 col-12">
				<div class="box-content">
			
                	<h4 class="box-title" style="text-align: center;">Operator/Buyer Information</h4>
					<table class="table table-striped margin-bottom-10 table-purchases" style="border: 1px solid #CCC;">
						<thead>
							<tr>
								<th>Operator</th>
								<th>EPCI/Installer</th>
								<th>Pipe Supplier</th>
								<th>Trading House</th>
                                <th>Buyer</th>
                                <th>Execution Facility</th>
                                <th>Budget Holder</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><?php echo $get_project_details[0]->operator ?></td>
								<td><?php echo $get_project_details[0]->epci_installer ?></td>
								<td><?php echo $get_project_details[0]->pipe_supplier ?></td>
								<td><?php echo $get_project_details[0]->trading_house ?></td>
								<td><?php echo $get_project_details[0]->buyer ?></td>
                                <td><?php echo $get_project_details[0]->execution_facility ?></td>
                                <td><?php echo $get_project_details[0]->budget_holder ?></td>
							</tr>
							
						</tbody>
					</table>
					<!-- /.table -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-6 col-12 -->



                <div class="col-xl-12 col-12">
				<div class="box-content">
			
                	<h4 class="box-title" style="text-align: center;">Pipe & Coating Details</h4>
					<table class="table table-striped margin-bottom-10 table-purchases" style="border: 1px solid #CCC;">
						<thead>
							<tr>
								<th colspan="4" style="text-align: center;">Pipe Details</th>
								<th colspan="4" style="text-align: center;">Coating Details</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><strong>Pipe Size(inch)</strong></td>
								<td><strong>Total Lengt(km)</strong></td>
                                <td><strong>Pipe Type</strong></td>
                                <td><strong>Pipe Material</strong></td>
                                <td><strong>Internal Lining</strong></td>
                                <td><strong>Anti-Corrision</strong></td>
                                <td><strong>Insulation</strong></td>
                                <td><strong>Concrete</strong></td>
							</tr>
							
                            <?php
                                foreach($get_project_pipes_coating as $pipe_coating_details){
                            ?>
                            
                            <tr>
								<td><?php echo $pipe_coating_details->pipe_size?></td>
								<td><?php echo $pipe_coating_details->length?></td>
                                <td><?php echo $pipe_coating_details->pipe_type?></td>
                                <td><?php echo $pipe_coating_details->pipe_material?></td>
                                <td><?php echo $pipe_coating_details->coating_internal_lining?></td>
                                <td><?php echo $pipe_coating_details->coating_anti_corrision?></td>
                                <td><?php echo $pipe_coating_details->coating_insulation ?></td>
                                <td><?php echo $pipe_coating_details->coating_concrete; ?></td>
							</tr>
							
                            <?php
                            }
                            ?>
						</tbody>
					</table>
					<!-- /.table -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-6 col-12 -->

            
            
                <div class="col-xl-12 col-12">
				<div class="box-content">
			
                	<h4 class="box-title" style="text-align: center;">Comments</h4>
					<table class="table table-striped margin-bottom-10 table-purchases" style="border: 1px solid #CCC;">
						<thead>
							<tr>
								<th>Sl.No</th>
								<th>Comment</th>
                                <th>Date</th>

							</tr>
						</thead>
						<tbody>
							<?php
                                $i=1;
                                foreach($get_project_comments as $comments){
                            ?>
                            
                            <tr>
								<td style="width:100px"><?php echo $i?></td>
								<td style="width:70%;"><?php echo $comments->notes?></td>
                                <td><?php echo date("dS M Y A", strtotime($comments->regDate)); $i++;?></td>
							</tr>
							
                            <?php
                            }
                            ?>
						</tbody>
					</table>
					<!-- /.table -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-6 col-12 -->

            <div class="col-xl-12 col-12">
				<div class="box-content">
			
                	<h4 class="box-title" style="text-align: center;">Actions</h4>
					<table class="table table-striped margin-bottom-10 table-purchases" style="border: 1px solid #CCC;">
						<thead>
							<tr>
								<th>Sl.No</th>
								<th>Action</th>
                                <th>Action Update</th>
                                <th>Date</th>

							</tr>
						</thead>
						<tbody>
							<?php
                                $i=1;
                                foreach($get_project_actions as $actions){
                            ?>
                            
                            <tr>
								<td style="width:100px"><?php echo $i?></td>
								<td style="width:70%;"><?php echo $actions->actions?></td>
                                <td style="width:70%;"><?php echo $actions->action_update?></td>
                                <td><?php echo date("dS M Y A", strtotime($comments->regDate)); $i++;?></td>
							</tr>
							
                            <?php
                            }
                            ?>
						</tbody>
					</table>
					<!-- /.table -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-6 col-12 -->
			
			<!--View comments section -------->
			
			 <div class="col-xl-12 col-12">
				<div class="box-content">
			
                	<h4 class="box-title" style="text-align: center;">Project Comments</h4>
					<table class="table table-striped margin-bottom-10 table-purchases" style="border: 1px solid #CCC;">
						<thead>
							<tr>
								<th>SNO</th>
								<th>Comment</th>
								<th>Author</th>
                                <th>Created date</th>
                               

							</tr>
						</thead>
						<tbody>
							<?php
                                $i=1;
                                foreach($get_comments as $comments){
                            ?>
                            
                            <tr>
								<td style="width:100px"><?php echo $i?></td>
								<td style="width:40%;"><?php echo $comments->comment;?></td>
                                <td><?php echo $this->session->userdata("logged_in")['username']; ?></td>
                                <td><?php echo date("dS M Y H:i:s", strtotime($comments->created_date)); $i++;?></td>
							</tr>
							
                            <?php
                            }
                            ?>
						</tbody>
					</table>
					<!-- /.table -->
				</div>
				<!-- /.box-content -->
			</div>

            

				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-12 -->
		<!-- /.row small-spacing -->    


<?php include("footer.php"); ?>
