<?php include("header.php"); ?>


<div id="wrapper">
	<div class="main-content">
		<div class="row small-spacing">
			<div class="col-12">
				    <h4 class="box-title">Create Project</h4>
					<div class="box-content">
                    <?php if(@$sucess_message != ''){ ?>
                    <div class="alert alert-success" role="alert"> <strong>Well done!</strong> <?php echo @$sucess_message; ?></div>
					<?php } 
                    if(@$error_message != '') { ?>
                    <div class="alert alert-danger" role="alert"> <strong>Oh snap!</strong> <?php echo @$error_message; ?> </div>
<?php } ?>
                    <h4 class="box-title">Enter the project details</h4>
						<!-- /.box-title -->
						<div class="dropdown js__drop_down">
							<a href="#" class="dropdown-icon fas fa-ellipsis-v js__drop_down_button"></a>
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
						<form id="commentForm" action="" method="POST" name="newPipelineProject">
							<div id="tabsleft" class="tabbable tabs-left">
								<ul>
									<li class="nav-item"><a class="nav-link" href="#tabsleft-tab1" data-toggle="tab">Project Details</a></li>
									<li class="nav-item"><a class="nav-link" href="#tabsleft-tab2" data-toggle="tab">Pipe & Coating Details</a></li>
									<li class="nav-item"><a class="nav-link" href="#tabsleft-tab3" data-toggle="tab">Comments</a></li>
		                            <li class="nav-item"><a class="nav-link show active" href="#tabsleft-tab4" data-toggle="tab">Actions</a></li>
				
								</ul>
								<div class="tab-content">
									<div class="tab-pane" id="tabsleft-tab1">
                                    
                                    <div class="row">
									<div class="col-lg-12">
                                            <div class="form-group">
											<label for="projectfield">Project Name</label>
											<div class="controls">
												<input type="text" id="namefield" name="project_name" placeholder="Project Name" class="required form-control">
											</div>
									       	</div>
										</div>	
                                        
                                    </div>
                                <!-- Row -->
                                    
                                    <div class="row">
									<div class="col-lg-6">
                                        <div class="form-group">
										<label for="regionfield">Region</label>
											<div class="controls">
								<select class="required form-control" name="region" id="regionfield">
								<option value="">Select Region</option>
								<?php 
                                    foreach($get_regions as $region){
                                        echo "<option value='".$region->region."'>".$region->region."</option>";
                                    }
                                ?>
		                        </select>
						
											</div>
										</div>
										</div>	
                                        
                                        <div class="col-lg-6 ">
                                        <div class="form-group">
											<label for="countryfield">Country</label>
											<div class="controls">
								<select class="required form-control" name="country" id="countryfield">
								<option value="">Select Country</option>
								<?php 
                                    foreach($get_country as $country){
                                        echo "<option value='".$country->country."'>".$country->country."</option>";
                                    }
                                ?>
		                        </select>
						
											</div>
										</div>
                                        </div>
                                        </div>
                                <!-- Row -->
                                        
								<div class="row">
									<div class="col-lg-4">
                                        <div class="form-group">
										<label for="priorityfield">Priority</label>
											<div class="controls">
								<select class="required form-control" name="priority" id="priorityfield">
								<option value="">Select Priority</option>
								<?php 
                                    foreach($get_priority as $priority){
                                        echo "<option value='".$priority->priority."'>".$priority->priority."</option>";
                                    }
                                ?>
		                        </select>
						
											</div>
										</div>
										</div>	
                                        
                                        <div class="col-lg-4">
                                        <div class="form-group">
											<label for="operatorfield">Operator</label>
											<div class="controls">
								            <input type="text" id="operatorfield" name="operator" placeholder="Operator" class="required form-control">
											</div>
										</div>
                                        </div>
                                        
                                        <div class="col-lg-4">
                                        <div class="form-group">
								<label for="statusfield">Project Status</label>
											<div class="controls">
								<select class="required form-control" name="project_status" id="statusfield">
								<option value="">Select Project Status</option>
								<?php 
                                    foreach($get_project_status as $project_status){
                                        echo "<option value='".$project_status->project_status."'>".$project_status->project_status."</option>";
                                    }
                                ?>
		                        </select>
						
											</div>
										</div>
										</div>	
                                    
                                        </div>
                                <!-- Row -->
                                
                                
                                <div class="row">
									<div class="col-lg-6">
                                        <div class="form-group">
										<label for="epcifield">EPCI/Installer</label>
											<div class="controls">
								        <input type="text" id="epcifield" name="epci_installer" placeholder="EPCI/Installer" class="form-control">
								
                                			</div>
										</div>
										</div>	
                                        
                                        <div class="col-lg-6">
                                        <div class="form-group">
											<label for="supplierfield">Pipe Supplier</label>
											<div class="controls">
								            <input type="text" id="supplierfield" name="pipe_supplier" placeholder="Pipe Supplier" class="form-control">
											</div>
										</div>
                                        </div>
                                        
                                        </div>
                                <!-- Row -->
                                
                                
                                <div class="row">
									<div class="col-lg-6">
                                        <div class="form-group">
										<label for="tradingfield">Trading House</label>
											<div class="controls">
								        <input type="text" id="tradingfield" name="trading_house" placeholder="Trading House" class="form-control">
								
                                			</div>
										</div>
										</div>	
                                        
                                        <div class="col-lg-6">
                                        <div class="form-group">
											<label for="buyerfield">Buyer</label>
											<div class="controls">
                								<select class="required form-control" name="buyer" id="buyerfield">
                								<option value="">Select Buyer</option>
                            					<?php 
                                                    foreach($get_buyer as $buyer){
                                                        echo "<option value='".$buyer->buyer."'>".$buyer->buyer."</option>";
                                                    }
                                                ?>
                            		                                                       </select>
											</div>
										</div>
                                        </div>
                                        
                                        </div>
                                <!-- Row -->
                                <br />                                    
                                <h4 class="box-title">Contract Award Details</h4>
                                <div class="row">
									<div class="col-lg-6">
                                        <div class="form-group">
										<label for="yearfield">Year</label>
											<div class="controls">
								        <select class="required form-control" name="contract_year" id="yearfield">
                								<option value="">Select Year</option>
                            					<?php 
                                                    foreach($get_year as $year){
                                                        echo "<option value='".$year->year."'>".$year->year."</option>";
                                                    }
                                                ?>
                                                </select>
                                			</div>
										</div>
										</div>	
                                        
                                        <div class="col-lg-6">
                                        <div class="form-group">
											<label for="periodfield">Period</label>
											<div class="controls">
								            	<select class="required form-control" name="contract_period" id="periodfield">
                								<option value="">Select Period</option>
                								  <?php 
                                                    foreach($get_period as $period){
                                                        echo "<option value='".$period->period."'>".$period->period."</option>";
                                                    }
                                                ?>
                                            </select>
                                            </div>
										</div>
                                        </div>
                                        
                                        </div>
                                <!-- Row -->
                                
                                <br />                                    
                                <h4 class="box-title">Execution Period</h4>
                                <div class="row">
									<div class="col-lg-4">
                                        <div class="form-group">
										<label for="exyearfield">Year</label>
											<div class="controls">
								        <select class="required form-control" name="execuation_year" id="exyearfield">
                								<option value="">Select Year</option>
                								<?php 
                                                    foreach($get_year as $year){
                                                        echo "<option value='".$year->year."'>".$year->year."</option>";
                                                    }
                                                ?>
                                                </select>
                                			</div>
										</div>
										</div>	
                                        
                                        <div class="col-lg-4">
                                        <div class="form-group">
											<label for="experiodfield">Period</label>
											<div class="controls">
								            	<select class="required form-control" name="execuation_period" id="experiodfield">
                								<option value="">Select Period</option>
                								<?php 
                                                    foreach($get_period as $period){
                                                        echo "<option value='".$period->period."'>".$period->period."</option>";
                                                    }
                                                ?>
                                                </select>
                                            </div>
										</div>
                                        </div>
                                        
                                        
                                        <div class="col-lg-4">
                                        <div class="form-group">
											<label for="durationfield">Duration (Months)</label>
											<div class="controls">
								        <input type="number" id="durationfield" name="execuation_duration" placeholder="Months" class="required form-control">
								        </div>
										</div>
                                        </div>
                                        
                                        </div>
                                <!-- Row -->
                                
                                <br />                                    
                                <h4 class="box-title">Budget & Facilities</h4>
                                <div class="row">
									<div class="col-lg-6">
                                        <div class="form-group">
										<label for="valuefield">Project Value (US $millions)</label>
											<div class="controls">
								        <input type="number" id="valuefield" name="project_value" placeholder="Project Value" class="required form-control">
								        	</div>
										</div>
										</div>	
                                        
                                        <div class="col-lg-6">
                                        <div class="form-group">
											<label for="bidstagefield">Bid Stage</label>
											<div class="controls">
								            	<select class="required form-control" name="bid_stage" id="bidstagefield">
                								<option value="">Select Bid Stage</option>
                								<?php 
                                                    foreach($get_bidding_stage as $bidding_stage){
                                                        echo "<option value='".$bidding_stage->bidding_stage."'>".$bidding_stage->bidding_stage."</option>";
                                                    }
                                                ?>
                                                
                                                </select>
                                            </div>
										</div>
                                        </div>
                                        
                                        </div>
                                <!-- Row -->
                                
                                <div class="row">
									<div class="col-lg-6">
                                        <div class="form-group">
										<label for="facilitiesfield">Execution Facility(s)</label>
											<div class="controls">
								        <select class="required form-control" name="facilities" id="facilitiesfield">
                								<option value="">Select Facility(s)</option>
                								<?php 
                                                    foreach($get_preferred_facility as $preferred_facility){
                                                        echo "<option value='".$preferred_facility->preferred_facility."'>".$preferred_facility->preferred_facility."</option>";
                                                    }
                                                ?>
                                                </select>
                                                
                                                	</div>
										</div>
										</div>	
                                        
                                        <div class="col-lg-6">
                                        <div class="form-group">
											<label for="budgetholderfield">Budget Holder</label>
											<div class="controls">
								            	<select class="required form-control" name="budget_holder" id="budgetholderfield">
                								<option value="">Select Budget Holder</option>
                								<?php 
                                                    foreach($get_preferred_facility as $preferred_facility){
                                                        echo "<option value='".$preferred_facility->preferred_facility."'>".$preferred_facility->preferred_facility."</option>";
                                                    }
                                                ?>
                                                </select>
                                            </div>
										</div>
                                        </div>
                                        
                                        </div>
                                <!-- Row -->
                                
                                    
                                    </div>
                                    <!-- Tab 1-->
                                    
                                    <script type="text/javascript">
                                        $(document).ready(function () {
    //@naresh action dynamic childs
    var next = 0;
    $("#add-more").click(function(e){
        e.preventDefault();
        var addto = "#field" + next;
        var addRemove = "#field" + (next);
        next = next + 1;
        var newIn = ' <div id="field'+ next +'" name="field'+ next +'"><!-- Text input--><div class="form-group"> <label class="col-md-4 control-label" for="action_id">Action Id</label> <div class="col-md-5"> <input id="action_id" name="action_id" type="text" placeholder="" class="form-control input-md"> </div></div><br><br> <!-- Text input--><div class="form-group"> <label class="col-md-4 control-label" for="action_name">Action Name</label> <div class="col-md-5"> <input id="action_name" name="action_name" type="text" placeholder="" class="form-control input-md"> </div></div><br><br><!-- File Button --> <div class="form-group"> <label class="col-md-4 control-label" for="action_json">Action JSON File</label> <div class="col-md-4"> <input id="action_json" name="action_json" class="input-file" type="file"> </div></div></div>';
        var newInput = $(newIn);
        var removeBtn = '<button id="remove' + (next - 1) + '" class="btn btn-danger remove-me" >Remove</button></div></div><div id="field">';
        var removeButton = $(removeBtn);
        $(addto).after(newInput);
        $(addRemove).after(removeButton);
        $("#field" + next).attr('data-source',$(addto).attr('data-source'));
        $("#count").val(next);  
        
            $('.remove-me').click(function(e){
                e.preventDefault();
                var fieldNum = this.id.charAt(this.id.length-1);
                var fieldID = "#field" + fieldNum;
                $(this).remove();
                $(fieldID).remove();
            });
    });

}); 
                                        </script>
                                    <!-- Pipe Details -->
									<div class="tab-pane" id="tabsleft-tab2">
                                                    <div id="field">
                                                    <div id="field0">

								<h4 class="box-title">Pipe Details</h4>
                                <div class="row">
									<div class="col-lg-3">
                                        <div class="form-group">
										<label for="pipesizefield">Pipe Size (inch)</label>
											<div class="controls">
								        <select class="form-control" name="pipe_size" id="pipesizefield">
                								<option value="">Select Size</option>
                								<?php 
                                                    foreach($get_pipesize as $pipesize){
                                                        echo "<option value='".$pipesize->pipesize."'>".$pipesize->pipesize."</option>";
                                                    }
                                                ?>
                                        
                                                </select>
                                        	</div>
										</div>
										</div>	
                                        
                                        <div class="col-lg-3">
                                        <div class="form-group">
											<label for="lengthfield">Total Length (km)</label>
											<div class="controls">
								        <input type="number" id="lengthfield" name="length" placeholder="Length in KMs" class="form-control">
                                            </div>
										</div>
                                        </div>
                                        
                                        <div class="col-lg-3">
                                        <div class="form-group">
											<label for="pipetypefield">Type of Pipe</label>
											<div class="controls">
								        <select class="form-control" name="pipe_type" id="pipetypefield">
                								<option value="">Select Type</option>
                                                <?php 
                                                    foreach($get_pipe_type as $pipe_type){
                                                        echo "<option value='".$pipe_type->type."'>".$pipe_type->type."</option>";
                                                    }
                                                ?>
                                        
                                                </select>
                                            </div>
										</div>
                                        </div>
                                        
                                        <div class="col-lg-3">
                                        <div class="form-group">
											<label for="pipematerialfield">Pipe Material</label>
											<div class="controls">
								        <select class="form-control" name="pipe_material" id="pipematerialfield">
                								<option value="">Select Material</option>
                								<?php 
                                                    foreach($get_pipe_material as $pipe_material){
                                                        echo "<option value='".$pipe_material->material."'>".$pipe_material->material."</option>";
                                                    }
                                                ?>
                                        
                                                </select>
                                            </div>
										</div>
                                        </div>
                                        
                                        </div>
                                <!-- Row -->
                                <br />
                                <h4 class="box-title">Coating Details</h4>
                                <div class="row">
									<div class="col-lg-3">
                                        <div class="form-group">
										<label for="liningfield">Internal Lining</label>
											<div class="controls">
								        <select class="form-control" name="coating_internal_lining" id="liningfield">
                								<option value="">Select Internal Lining</option>
                								<?php 
                                                    foreach($get_internal_lining as $internal_lining){
                                                        echo "<option value='".$internal_lining->internal_lining."'>".$internal_lining->internal_lining."</option>";
                                                    }
                                                ?>
                                        
                                                </select>
                                        	</div>
										</div>
										</div>	
                                        
                                        <div class="col-lg-3">
                                        <div class="form-group">
											<label for="acfield">Anti Corrision</label>
											<div class="controls">
								        <select class="form-control" name="coating_anti_corrision" id="acfield">
                								<option value="">Select Anto Corrision</option>
                								<?php 
                                                    foreach($get_ac_coating as $ac_coating){
                                                        echo "<option value='".$ac_coating->ac_coating."'>".$ac_coating->ac_coating."</option>";
                                                    }
                                                ?>
                                        </select>
                                            </div>
										</div>
                                        </div>
                                        
                                        <div class="col-lg-3">
                                        <div class="form-group">
											<label for="insulationfield">Insulation</label>
											<div class="controls">
								        <select class="form-control" name="coating_insulation" id="insulationfield">
                								<option value="">Select Insulation</option>
                                                 <?php 
                                                     foreach($get_insulation as $insulation){
                                                        echo "<option value='".$insulation->insulation."'>".$insulation->insulation."</option>";
                                                    }
                                                ?>
           
           
                                                </select>
                                            </div>
										</div>
                                        </div>
                                        
                                        <div class="col-lg-3">
                                        <div class="form-group">
											<label for="pipeconcretefield">Concrete</label>
											<div class="controls">
								        <select class="form-control" name="coating_concrete" id="pipeconcretefield">
                								<option value="">Select Concrete</option>
                                                                         <?php 
                                                     foreach($get_cwc as $cwc){
                                                        echo "<option value='".$cwc->cwc."'>".$cwc->cwc."</option>";
                                                    }
                                                ?>
           
                                        
                                        </select>
                                            </div>
										</div>
                                        </div>
                                        <!-- Button -->
<div class="form-group">
  <div class="col-md-4">
    <button id="add-more" name="add-more" class="btn btn-primary">Add More</button>
  </div>
</div>
                                        
                                        </div></div>
                                        </div>
                                <!-- Row -->
									</div>
									<div class="tab-pane" id="tabsleft-tab3">
                                <div class="row">
									<div class="col-lg-12">
                                        <div class="form-group">
										<label for="commentsfield">Comments</label>
											<div class="controls">
								        <textarea class="reuqired form-control" name="notes" id="commentsfield"></textarea>
                                        	</div>
										</div>
										</div>	
                                        
                                        </div>
                                <!-- Row -->
				
                                        
                                        
									</div>
									
                              <div class="tab-pane" id="tabsleft-tab4">
								 <div class="row">
									<div class="col-lg-12">
                                        <div class="form-group">
										<label for="actionsfield">Actions</label>
											<div class="controls">
								        <input type="text" class="form-control" name="actions" id="actionsfield">
                                        	</div>
										</div>
										</div>	
                                    
                                    <div class="col-lg-12">
                                        <div class="form-group">
										<label for="actionupdatefield">Actions Update</label>
											<div class="controls">
								        <textarea class="form-control" name="action_update" id="actionupdatefield"></textarea>
                                        	</div>
										</div>
										</div>	
                                        
                                        </div>
                                <!-- Row -->

									</div>
									
                                    <ul class="pager wizard">
										<li class="previous first"><a href="javascript:;">First</a></li>
										<li class="previous"><a href="javascript:;">Previous</a></li>
										<li class="next last"><a href="javascript:;">Last</a></li>
										<li class="next"><a href="javascript:;">Next</a></li>
										<li class="next finish"><button type="submit" class="btn btn-rounded btn-bordered waves-effect waves-light">Finish</button></li> 
									</ul>
								</div>
							</div>
						</form>

				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-12 -->
		</div>
		<!-- /.row small-spacing -->    


<?php include("footer.php"); ?>
