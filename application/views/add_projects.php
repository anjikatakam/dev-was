<style>
.list-inline{
	margin-left:280px;
}
</style>
<?php include("header.php"); ?>
<div id="wrapper">
    <div class="main-content">
        <div class="row small-spacing">
            <div class="col-12">
                    <h4 class="box-title">Enter the  Project Details</h4>
                    <div class="box-content">
                    <?php if(@$sucess_message != ''){ ?>
                    <div class="alert alert-success" role="alert"> <strong>Well done!</strong> <?php echo @$sucess_message; ?></div>
                    <?php } 
                    if(@$error_message != '') { ?>
                    <div class="alert alert-danger" role="alert"> <strong>Oh snap!</strong> <?php echo @$error_message; ?> </div>
<?php } ?>
                   
                        <!-- /.box-title -->
                        <!-- /.dropdown js__dropdown -->
                        <form id="commentForm" action="" method="POST" name="newPipelineProject">
                            <div id="tabsleft" class="tabbable tabs-left">
                                
                               <!-- <div class="tab-content">-->
                                    <div class="tab-pane" id="tabsleft-tab1">
                                    <div style="border:2px solid #85929E;padding:50px;margin: 20px;">
                                    <div class="row">
                                    <div class="col-lg-4">
                                            <div class="form-group">
                                            <label for="projectfield">Project Name *</label>
                                            <div class="controls">
                                                <input type="text" id="namefield" name="project_name" placeholder="Project Name" class="required form-control">
                                            </div>
                                            </div>
                                        </div>  
										<div class="col-lg-4">
                                        <div class="form-group">
                                <label for="statusfield">Project Status *</label>
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
                                       <div class="col-lg-4">
                                        <div class="form-group">
                                        <label for="priorityfield">Priority *</label>
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
                                    </div>
                                <!-- Row -->
                                <div class="row">
                                <div class="col-lg-12">
                                <div class="form-group">
                                <label for="countryfield">Project description*</label>
                                       <div class="controls">
                                         <textarea name="description"id="description" rows="5" cols="180"class="required form-control"></textarea>
                                         </div>
                                     </div>
                                     </div>
                                </div>
                                    
                                    <div class="row">
                                        
                                        <div class="col-lg-4">
                                        <div class="form-group">
                                            <label for="countryfield">Country *</label>
                                            <div class="controls">
                                <select class="required form-control" name="country" id="countryfield">
                                <option value="">Select Country</option>
                                <?php 
                                    foreach($get_country as $country){
                                        echo "<option value='".$country->country."' id='".$country->regionid."'>".$country->country."</option>";
                                    }
                                ?>
                                </select>
                        
                                            </div>
                                        </div>
                                        </div>
                                        <div class="col-lg-4">
                                        <div class="form-group">
                                        <label for="regionfield">Region *</label>
                                            <div class="controls">
                                <select class="required form-control" name="region" id="regionfield">
                                <option value="">Select Region</option>
                                <?php 
                                   /* foreach($get_regions as $region){
                                        echo "<option value='".$region->region."'>".$region->region."</option>";
                                    }*/
                                ?>
                                </select>
                        
                                            </div>
                                        </div>
                                        </div>  
										<div class="col-lg-4">
                                        <div class="form-group">
                                            <label for="operatorfield">Operator *</label>
                                            <div class="controls">
                                            <input type="text" id="operatorfield" name="operator" placeholder="Operator" class="required form-control">
                                            </div>
                                        </div>
                                        </div>
                                        </div>
                                <!-- Row -->
                                        
                                
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
                                                <select class="form-control" name="buyer" id="buyerfield">
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
                                     </div>
                                        <!-- Row -->
                                <!-- Pipe Details -->
                                    
                                <div id="dynamic_field" style="border:2px solid #85929E;padding:50px;margin:20px;">
                                <div id="field_add_more">
                                <div class="row">
                                    <div class="col-md-10">
                                        <h4 class="box-title">Pipe Details</h4>
                                    </div>
                                    <div class="col-md-2" style="float: right;">
                                        <button type="button" name="add" id="add" class="btn btn-primary">Add</button>
                                    </div>
                                </div>                               
								<div class="row">
                                    <div class="col-lg-2">
                                        <div class="form-group">
                                        <label for="pipesizefield">Pipe Size (inch)</label>
                                            <div class="controls">
                                        <select class="form-control" name="pipe_coating_details[0][pipe_size]" id="pipesizefield">
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
                                        
                                        <div class="col-lg-2">
                                        <div class="form-group">
                                            <label for="lengthfield">Total Length (km)</label>
                                            <div class="controls">
                                        <input type="number" id="lengthfield" name="pipe_coating_details[0][length]" placeholder="Length in KMs" class="form-control">
                                            </div>
                                        </div>
                                        </div>
                                        
                                        <div class="col-lg-2">
                                        <div class="form-group">
                                            <label for="pipetypefield">Type of Pipe</label>
                                            <div class="controls">
                                        <select class="form-control" name="pipe_coating_details[0][pipe_type]" id="pipetypefield">
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
                                        
                                        <div class="col-lg-2">
                                        <div class="form-group">
                                            <label for="pipematerialfield">Pipe Material</label>
                                            <div class="controls">
                                        <select class="form-control" name="pipe_coating_details[0][pipe_material]" id="pipematerialfield">
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
										<div class="col-lg-3">
                                        <div class="form-group">
                                            <label for="lengthfield">
											Wall thickness(microns)</label>
                                            <div class="controls">
                                        <input type="number" id="lengthfield" name="pipe_coating_details[0][wall_thickness]" placeholder="Thickness" class="form-control">
                                            </div>
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
                                        <select class="form-control" name="pipe_coating_details[0][coating_internal_lining]" id="liningfield">
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
                                            <label for="lengthfield">
											Coating thickness(microns)</label>
                                            <div class="controls">
                                        <input type="number" id="lengthfield1" name="pipe_coating_details[0][coating_internal_thickness]" placeholder="Thickness" class="form-control">
                                            </div>
                                        </div>
                                        </div>
                                        
                                        <div class="col-lg-3">
                                        <div class="form-group">
                                            <label for="acfield">Anti Corrision</label>
                                            <div class="controls">
                                        <select class="form-control" name="pipe_coating_details[0][coating_anti_corrision]" id="acfield">
                                                <option value="">Select Anti Corrision</option>
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
                                            <label for="lengthfield">
											Coating thickness(microns)</label>
                                            <div class="controls">
                                        <input type="number" id="lengthfield2" name="pipe_coating_details[0][coating_anti_thickness]" placeholder="Thickness" class="form-control">
                                            </div>
                                        </div>
                                        </div>
                                        <div class="col-lg-3">
                                        <div class="form-group">
                                            <label for="insulationfield">Insulation</label>
                                            <div class="controls">
                                        <select class="form-control" name="pipe_coating_details[0][coating_insulation]" id="insulationfield">
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
                                            <label for="lengthfield">
											Coating thickness(microns)</label>
                                            <div class="controls">
                                        <input type="number" id="lengthfield3" name="pipe_coating_details[0][coating_insulation_thickness]" placeholder="Thickness" class="form-control">
                                            </div>
                                        </div>
                                        </div>
                                        <div class="col-lg-3">
                                        <div class="form-group">
                                            <label for="pipeconcretefield">Concrete</label>
                                            <div class="controls">
                                        <select class="form-control" name="pipe_coating_details[0][coating_concrete]" id="pipeconcretefield">
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
										<div class="col-lg-3">
                                        <div class="form-group">
                                            <label for="lengthfield">
											Coating thickness(microns)</label>
                                            <div class="controls">
                                        <input type="number" id="lengthfield4" name="pipe_coating_details[0][coating_concrete_thickness]" placeholder="Thickness" class="form-control">
                                            </div>
                                        </div>
                                        </div>
                                        </div>
                                        <!-- Button -->
                                   </div>
                                <!-- Row -->
                                    
                                    <!-- <div class="form-group">
                                      <div class="col-md-4">
                                        <button type="button" name="add" id="add" class="btn btn-primary">Add</button>
                                      </div>
                                    </div> -->
                                    
                                    </div>
                                <!-- Row -->
                                <br /> 
								<!--</div>-->
								 <div style="border:2px solid #85929E;padding:50px;margin: 20px;">
                                <h4 class="box-title">Contract Award Details *</h4>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                        <label for="yearfield">Start date</label>
                                            <div class="controls">
                                        <input class="required form-control" name="contract_year" id="yearfield"/>
                                             
                                            </div>
                                        </div>
                                        </div>
                                     <div class="col-lg-4">
                                        <div class="form-group">
                                        <label for="exyearfield">End date
                                            <div class="controls">
                                        <input class="required form-control" name="execuation_year" id="exyearfield"/>
                                            </div>
                                        </div>
                                        </div>  
                                    
                                    
                                        
                                        
                                        <div class="col-lg-4">
                                        <div class="form-group">
                                            <label for="durationfield">Duration (Months) *</label>
                                            <div class="controls">
                                        <input type="number" id="durationfield" name="execuation_duration" placeholder="Months" class="required form-control">
                                        </div>
                                        </div>
                                        </div>										
                                        
                                        
                                        
                                        </div>
                                    
                                
                                <!-- Row -->
                                
                                <br />   
                               </div>
								 <div style="border:2px solid #85929E;padding:50px;margin:20px;">
                                <h4 class="box-title">Budget & Facilities</h4>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                        <label for="valuefield">Project Value ($) *</label>
                                            <div class="controls">
                                        <input type="text" id="valuefield" name="project_value" placeholder="Project Value" class="required form-control" maxlength="25">
                                            </div>
                                        </div>
                                        </div>  
                                        
                                        <div class="col-lg-6">
                                        <div class="form-group">
                                            <label for="bidstagefield">Bid Stage *</label>
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
                                        <label for="facilitiesfield">Execution Facility(s) *</label>
                                            <div class="controls">
                                        <select class="required form-control" name="facilities" id="facilitiesfield"  multiple="multiple">
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
                                            <label for="budgetholderfield">Budget Holder *</label>
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
                                      </div>
                                    <div style="border:2px solid #85929E;padding:50px;margin:20px;">
                                    <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
										<h4 class="box-title">Comments</h4>
                                            <div class="controls">
                                        <textarea class="reuqired form-control" name="notes" id="commentsfield"></textarea>
                                            </div>
                                        </div>
                                        </div>  
                                        
                                        </div>
                                <!-- Row -->
                
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
                                    <!-- Tab 1-->
									</div>
                                    
                                    <ul class="pager wizard">
                                        <li class="next"><button type="submit" class="btn btn-primary">Create Project</button></li> 
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
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
 $("#yearfield").datepicker({
	  showOn: 'button',
       buttonImage: 'http://jqueryui.com/resources/demos/datepicker/images/calendar.gif',
       buttonImageOnly: true,
       changeMonth: true,
       changeYear: true,
       buttonText: "Select date",
       dateFormat: 'dd-mm-yy'
 });
 $("#exyearfield").datepicker();
 $('#valuefield').on('input', function (event) { 
	  var number=this.value;
     //this.value = this.value.replace(/[^0-9,]/g, '');
	   console.log(number.length);
	 var chgval=number.replace(/(\d\d)(?=(\d\d)+$)/g, "$1,");
	 //console.log(chgval);
	 $("#valuefield").val(chgval);
 });
$("#countryfield").change(function(){
     $('#regionfield').html("");
    //var rid=$("#countryfield").attr("id");
    var rid=$("#countryfield option:selected").attr("id");
    //alert(rid);
     if(rid){
         $.ajax({
             type:"POST",
             url:"<?php echo base_url();?>Projects/getRegion",
             data:{rid:rid},
             success:function(res){
                 $('#regionfield').append("<option value='"+res+"'>"+res+"</option>");
             }
         })
     }
})
  $(document).ready(function(){

    var i = 1;
    var j = 1;
    
    var html='';
    $("#add").click(function(){
      i++;
      j++;
      $('#dynamic_field').append('<div id="field_add_more'+i+'"><br /><br /><h4 class="box-title">Pipe Details '+j+'</h4><div class="row"><div class="col-lg-2"><div class="form-group"><label for="pipesizefield">Pipe Size (inch)</label><div class="controls"><select class="form-control" name="pipe_coating_details['+i+'][pipe_size]" id="pipesizefield"><option value="">Select Size</option><?php foreach($get_pipesize as $pipesize){echo '<option value='.$pipesize->pipesize.'>'.$pipesize->pipesize.'</option>';}?></select></div></div></div><div class="col-lg-2"><div class="form-group"><label for="lengthfield">Total Length (km)</label><div class="controls"><input type="number" id="lengthfield" name="pipe_coating_details['+i+'][length]" placeholder="Length in KMs" class="form-control"></div></div></div><div class="col-lg-2"><div class="form-group"><label for="pipetypefield">Type of Pipe</label><div class="controls"><select class="form-control" name="pipe_coating_details['+i+'][pipe_type]" id="pipetypefield"><option value="">Select Type</option><?php foreach($get_pipe_type as $pipe_type){echo '<option value="'.$pipe_type->type.'">'.$pipe_type->type.'</option>';}?></select></div></div></div><div class="col-lg-2"><div class="form-group"><label for="pipematerialfield">Pipe Material</label><div class="controls"><select class="form-control" name="pipe_coating_details['+i+'][pipe_material]" id="pipematerialfield"><option value="">Select Material</option><?php foreach($get_pipe_material as $pipe_material){ echo '<option value="'.$pipe_material->material.'">'.$pipe_material->material.'</option>'; }?></select></div></div></div><div class="col-lg-3"><div class="form-group"><label for="lengthfield">Wall thickness (mm)</label><div class="controls"><input type="number" id="thicknessfiled" name="pipe_coating_details['+i+'][wall_thickness]" placeholder="Thickness in mm" class="form-control"></div></div></div></div><!-- Row --><br /><h4 class="box-title">Coating Details</h4><div class="row"><div class="col-lg-3"><div class="form-group"><label for="liningfield">Internal Lining</label><div class="controls"><select class="form-control" name="pipe_coating_details['+i+'][coating_internal_lining]" id="liningfield"><option value="">Select Internal Lining</option><?php foreach($get_internal_lining as $internal_lining){ echo '<option value="'.$internal_lining->internal_lining.'">'.$internal_lining->internal_lining.'</option>'; }?></select></div></div></div><div class="col-lg-3"><div class="form-group"><label for="lengthfield">Coating thickness(mm)</label><div class="controls"><input type="number" id="lengthfield1" name="pipe_coating_details['+i+'][coating_internal_thickness]" placeholder="Thickness in mm" class="form-control"></div></div></div><div class="col-lg-3"><div class="form-group"><label for="acfield">Anti Corrision</label><div class="controls"><select class="form-control" name="pipe_coating_details['+i+'][coating_anti_corrision]" id="acfield"><option value="">Select Anti Corrision</option><?php foreach($get_ac_coating as $ac_coating){ echo '<option value="'.$ac_coating->ac_coating.'">'.$ac_coating->ac_coating.'</option>';}?></select></div></div></div><div class="col-lg-3"><div class="form-group"><label for="lengthfield">Coating thickness(mm)</label><div class="controls"><input type="number" id="lengthfield2" name="pipe_coating_details['+i+'][coating_anti_thickness]" placeholder="Thickness in mm" class="form-control"></div></div></div><div class="col-lg-3"><div class="form-group"><label for="insulationfield">Insulation</label><div class="controls"><select class="form-control" name="pipe_coating_details['+i+'][coating_insulation]" id="insulationfield"><option value="">Select Insulation</option><?php foreach($get_insulation as $insulation){ echo '<option value="'.$insulation->insulation.'">'.$insulation->insulation.'</option>'; }?></select></div></div></div><div class="col-lg-3"><div class="form-group"><label for="lengthfield">Coating thickness(mm)</label><div class="controls"><input type="number" id="lengthfield3" name="pipe_coating_details['+i+'][coating_insulation_thickness]" placeholder="Thickness in mm" class="form-control"></div></div></div><div class="col-lg-3"><div class="form-group"><label for="pipeconcretefield">Concrete</label><div class="controls"><select class="form-control" name="pipe_coating_details['+i+'][coating_concrete]" id="pipeconcretefield"><option value="">Select Concrete</option><?php foreach($get_cwc as $cwc){ echo '<option value="'.$cwc->cwc.'">'.$cwc->cwc.'</option>'; }?></select></div></div></div><div class="col-lg-3"><div class="form-group"><label for="lengthfield">Coating thickness(mm)</label><div class="controls"><input type="number" id="lengthfield4" name="pipe_coating_details['+i+'][coating_concrete_thickness]" placeholder="Thickness in mm" class="form-control"></div></div></div><!-- Button --></div><!-- Row --></div> <div class="col-lg-3" style="border-bottom:1px solif #CCC;"></div>');
    });

    $(document).on('click', '.btn_remove', function(){  
      var button_id = $(this).attr("id");   
      $('#field_add_more'+button_id+'').remove();  
    });
  });
</script>
 