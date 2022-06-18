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
<h4 class="box-title">Edit Project Details</h4>
<div class="box-content">
<?php if(@$sucess_message != ''){ ?>
<div class="alert alert-success" role="alert"> <strong>Well done!</strong> <?php echo @$sucess_message; ?></div>
<?php } elseif (!empty($this->session->flashdata('sucess_message'))) {?>
<div class="alert alert-success" role="alert"> <strong>Well done!</strong> <?php echo $this->session->flashdata('sucess_message'); ?></div>
<?php } ?>

<?php
if(@$error_message != '') { ?>
<div class="alert alert-danger" role="alert"> <strong>Oh snap!</strong> <?php echo @$error_message; ?> </div>
<?php } elseif(!empty($this->session->userdata('error_message'))){ ?>
<div class="alert alert-danger" role="alert"> <strong>Oh snap!</strong> <?php echo $this->session->userdata('error_message'); ?> </div>
<?php } ?>

<!-- /.box-title -->

<!-- /.dropdown js__dropdown -->
<form id="commentForm" action="" method="POST" name="newPipelineProject">
<div id="tabsleft" class="tabbable tabs-left">

<div class="tab-content" style="border: 0px !important">
<div>
<div style="border:2px solid #85929E;padding:50px;margin: 20px;">
<div class="row">
<div class="col-lg-12">
<div class="form-group">
<label for="projectfield">Project Name</label>
<div class="controls">
<input type="text" id="namefield" name="project_name" value="<?php echo $get_project_details[0]->project_name; ?>" placeholder="Project Name" class="required form-control">
</div>
</div>
</div>  

</div>
<!-- Row -->

<div class="row">
<div class="col-lg-12">
<div class="form-group">
<label for="description">Project description *</label>
<div class="controls">
<textarea name="description"id="description" rows="5" cols="180"class="required form-control"><?php echo $get_project_details[0]->description; ?></textarea>
</div>
</div>
</div>
</div>

<div class="row">
<div class="col-lg-6 ">
<div class="form-group">
<label for="countryfield">Country</label>
<div class="controls">
<select class="required form-control" name="country" id="countryfield">
<option value="">Select Country</option>
<?php 
foreach($get_country as $country){
if($get_project_details[0]->country == $country->country){
echo "<option value='".$country->country."' id='".$country->regionid."' selected='selected'>".$country->country."</option>";
}else{
echo "<option value='".$country->country."' id='".$country->regionid."'>".$country->country."</option>";
}

}
?>
</select>

</div>
</div>
</div>
<div class="col-lg-6">
<div class="form-group">
<label for="regionfield">Region</label>
<div class="controls">
<select class="required form-control" name="region" id="regionfield">
<option value="">Select Region</option>
<?php 
foreach($get_regions as $region){
if($get_project_details[0]->region == $region->region){ 
echo "<option value='".$region->region."' selected='selected'>".$region->region."</option>";
}else{
echo "<option value='".$region->region."'>".$region->region."</option>"; 
}    

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
if($get_project_details[0]->priority == $priority->priority){
echo "<option value='".$priority->priority."' selected='selected'>".$priority->priority."</option>";    
}else{
echo "<option value='".$priority->priority."'>".$priority->priority."</option>";
}

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
<input type="text" id="operatorfield" name="operator" placeholder="Operator" value="<?php echo $get_project_details[0]->operator; ?>" class="required form-control">
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
if($get_project_details[0]->project_status == $project_status->project_status){
echo "<option value='".$project_status->project_status."' selected='selected'>".$project_status->project_status."</option>";    
}else{
echo "<option value='".$project_status->project_status."'>".$project_status->project_status."</option>";
}

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
<input type="text" id="epcifield" name="epci_installer" placeholder="EPCI/Installer"  value="<?php echo $get_project_details[0]->epci_installer; ?>" class="form-control">

</div>
</div>
</div>  

<div class="col-lg-6">
<div class="form-group">
<label for="supplierfield">Pipe Supplier</label>
<div class="controls">
<input type="text" id="supplierfield" name="pipe_supplier"  value="<?php echo $get_project_details[0]->pipe_supplier; ?>" placeholder="Pipe Supplier" class="form-control">
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
<input type="text" id="tradingfield" name="trading_house"  value="<?php echo $get_project_details[0]->trading_house; ?>" placeholder="Trading House" class="form-control">

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
if($get_project_details[0]->buyer == $buyer->buyer){
echo "<option value='".$buyer->buyer."' selected='selected'>".$buyer->buyer."</option>";    
}else{
echo "<option value='".$buyer->buyer."'>".$buyer->buyer."</option>";
}


}
?>
 </select>
</div>
</div>
</div>

</div>
<!-- Row -->

</div>
<div style="border:2px solid #85929E;padding:50px;margin: 20px;">
<?php
$i=1;
$j = 0;
foreach($get_pipe_details as $pipe_details){
	//echo "<pre>";print_r($pipe_details);
echo "<input type='hidden' name='pipeid[]' value='".$pipe_details->id."'/>";
?>
<input type="hidden" name="pipe_coating_details[<?php echo $j; ?>][id]" value="<?php echo $pipe_details->id; ?>"/>
<br />
<h4 class="box-title">Pipe Details - <?php echo $i;?></h4>
<div class="row">
<div class="col-lg-2">
<div class="form-group">
<label for="pipesizefield">Pipe Size (inch)</label>
<div class="controls">
<select class="form-control" name="pipe_coating_details[<?php echo $j; ?>][pipe_size]" id="pipesizefield">
<option value="">Select Size</option>
<?php
$i++;
foreach($get_pipesize as $pipesize){
	if($pipe_details->pipe_size == $pipesize->pipesize){
		echo "<option value='".$pipesize->pipesize."' selected='selected'>".$pipesize->pipesize."</option>";
	}else{
		echo "<option value='".$pipesize->pipesize."'>".$pipesize->pipesize."</option>";
	}

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
<input type="number" id="lengthfield" name="pipe_coating_details[<?php echo $j; ?>][length]" value="<?php echo $pipe_details->length?>" placeholder="Length in KMs" class="form-control">
</div>
</div>
</div>

<div class="col-lg-3">
<div class="form-group">
<label for="pipetypefield">Type of Pipe</label>
<div class="controls">
<select class="form-control" name="pipe_coating_details[<?php echo $j; ?>][pipe_type]" id="pipetypefield">
<option value="">Select Type</option>
<?php
foreach($get_pipe_type as $pipe_type){
	if($pipe_details->pipe_type == $pipe_type->type){
		echo "<option value='".$pipe_type->type."' selected='selected'>".$pipe_type->type."</option>";
	}else{
		echo "<option value='".$pipe_type->type."'>".$pipe_type->type."</option>";
	}

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
<select class="form-control" name="pipe_coating_details[<?php echo $j; ?>][pipe_material]" id="pipematerialfield">
<option value="">Select Material</option>
<?php
foreach($get_pipe_material as $pipe_material){
	if($pipe_details->pipe_material == $pipe_material->material){
		echo "<option value='".$pipe_material->material."' selected='selected'>".$pipe_material->material."</option>";
	}else{
		echo "<option value='".$pipe_material->material."'>".$pipe_material->material."</option>";
	}

}
?>

</select>
</div>
</div>
</div>
<div class="col-lg-2">
		<div class="form-group">
			<label for="lengthfield">
			Wall thickness(microns)</label>
			<div class="controls">
		<input type="number" value="<?php echo $pipe_details->wall_thickness;?>" id="lengthfield" name="pipe_coating_details[<?php echo $j;?>][wall_thickness]" placeholder="Thickness" class="form-control">
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
<select class="form-control" name="pipe_coating_details[<?php echo $j; ?>][coating_internal_lining]" id="liningfield">
<option value="">Select Internal Lining</option>
<?php
foreach($get_internal_lining as $internal_lining){
	if($pipe_details->coating_internal_lining == $internal_lining->internal_lining){
		echo "<option value='".$internal_lining->internal_lining."' selected='selected'>".$internal_lining->internal_lining."</option>";
	}else{
		echo "<option value='".$internal_lining->internal_lining."'>".$internal_lining->internal_lining."</option>";
	}

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
<input type="number" id="lengthfield1" name="pipe_coating_details[<?php echo $j;?>][coating_internal_thickness]" placeholder="Thickness" class="form-control" value="<?php echo $pipe_details->coating_internal_thickness;?>">
	</div>
</div>
</div>



<div class="col-lg-3">
<div class="form-group">
<label for="acfield">Anti Corrision</label>
<div class="controls">
<select class="form-control" name="pipe_coating_details[<?php echo $j; ?>][coating_anti_corrision]" id="acfield">
<option value="">Select Anto Corrision</option>
<?php
foreach($get_ac_coating as $ac_coating){
	if($pipe_details->coating_anti_corrision == $ac_coating->ac_coating){
		echo "<option value='".$ac_coating->ac_coating."' selected='selected'>".$ac_coating->ac_coating."</option>";
	}else{
		echo "<option value='".$ac_coating->ac_coating."'>".$ac_coating->ac_coating."</option>";
	}


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
<input type="number" id="lengthfield2" name="pipe_coating_details[<?php echo $j;?>][coating_anti_thickness]" placeholder="Thickness" class="form-control" value="<?php echo $pipe_details->coating_anti_thickness;?>">
	</div>
</div>
</div>

<div class="col-lg-3">
<div class="form-group">
<label for="insulationfield">Insulation</label>
<div class="controls">
<select class="form-control" name="pipe_coating_details[<?php echo $j; ?>][coating_insulation]" id="insulationfield">
<option value="">Select Insulation</option>
<?php
foreach($get_insulation as $insulation){

	if($pipe_details->coating_insulation == $insulation->insulation){
		echo "<option value='".$insulation->insulation."' selected='selected'>".$insulation->insulation."</option>";
	}else{
		echo "<option value='".$insulation->insulation."'>".$insulation->insulation."</option>";
	}


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
<input type="number" id="lengthfield3" name="pipe_coating_details[<?php echo $j;?>][coating_insulation_thickness]" placeholder="Thickness" class="form-control" value="<?php echo $pipe_details->coating_insulation_thickness;?>">
	</div>
</div>
</div>

<div class="col-lg-3">
<div class="form-group">
<label for="pipeconcretefield">Concrete</label>
<div class="controls">
<select class="form-control" name="pipe_coating_details[<?php echo $j; ?>][coating_concrete]" id="pipeconcretefield">
<option value="">Select Concrete</option>
<?php
foreach($get_cwc as $cwc){
	if($pipe_details->coating_concrete == $cwc->cwc){
		echo "<option value='".$cwc->cwc."' selected='selected'>".$cwc->cwc."</option>";
	}else{
		echo "<option value='".$cwc->cwc."'>".$cwc->cwc."</option>";

	}
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
<input type="number" id="lengthfield4" name="pipe_coating_details[<?php echo $j;?>][coating_concrete_thickness]" placeholder="Thickness" class="form-control" value="<?php echo $pipe_details->coating_concrete_thickness;?>">
	</div>
</div>
</div>

</div>
<!-- Row -->
<div class="col-lg-12" style="border-bottom: 1px solid #CCC;"></div>
<?php $j++; } ?>
</div>
<div style="border:2px solid #85929E;padding:50px;margin: 20px;">
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
if($get_project_details[0]->year == $year->year){
echo "<option value='".$year->year."' selected='selected'>".$year->year."</option>";    
}else{
echo "<option value='".$year->year."'>".$year->year."</option>";    
}


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
if($get_project_details[0]->period == $period->period){
echo "<option value='".$period->period."' selected='selected'>".$period->period."</option>";                                                        }else{
echo "<option value='".$period->period."'>".$period->period."</option>";
}

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
if($get_project_details[0]->e_year == $year->year){
echo "<option value='".$year->year."' selected='selected'>".$year->year."</option>";    
}else{
echo "<option value='".$year->year."'>".$year->year."</option>";    
}

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
if($get_project_details[0]->e_period == $period->period){
echo "<option value='".$period->period."' selected='selected'>".$period->period."</option>";                                                        }else{
echo "<option value='".$period->period."'>".$period->period."</option>";                                                        }

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
<input type="number" id="durationfield" name="execuation_duration" value="<?php echo $get_project_details[0]->duration_month?>" placeholder="Months" class="required form-control">
</div>
</div>
</div>

</div>
<!-- Row -->

</div>
<div style="border:2px solid #85929E;padding:50px;margin:20px;">
<h4 class="box-title">Budget & Facilities</h4>
<div class="row">
<div class="col-lg-6">
<div class="form-group">
<label for="valuefield">Project Value</label>
<div class="controls">
<input type="number" id="valuefield" name="project_value"  value="<?php echo $get_project_details[0]->project_value; ?>" placeholder="Project Value" class="required form-control">
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
if($get_project_details[0]->bid_stage == $bidding_stage->bidding_stage){
echo "<option value='".$bidding_stage->bidding_stage."' selected='selected'>".$bidding_stage->bidding_stage."</option>";    
}else{
echo "<option value='".$bidding_stage->bidding_stage."'>".$bidding_stage->bidding_stage."</option>";                                
}

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
if($get_project_details[0]->execution_facility == $preferred_facility->preferred_facility){
echo "<option value='".$preferred_facility->preferred_facility."' selected='selected'>".$preferred_facility->preferred_facility."</option>";    
}else{
echo "<option value='".$preferred_facility->preferred_facility."'>".$preferred_facility->preferred_facility."</option>";       
}

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
if($get_project_details[0]->budget_holder == $preferred_facility->preferred_facility){
echo "<option value='".$preferred_facility->preferred_facility."' selected='selected'>".$preferred_facility->preferred_facility."</option>";    
}else{
echo "<option value='".$preferred_facility->preferred_facility."'>".$preferred_facility->preferred_facility."</option>";       
}

}
?>
</select>
</div>
</div>
</div>

</div>
</div>
</div>
<div style="border:2px solid #85929E;padding:50px;margin:20px;">
<h4 class="box-title">Comments</h4>

<div class="row">
<div class="col-lg-12">
<div class="form-group">

<div class="controls">
<input type="hidden" name="note_id" value="<?php echo !empty($get_project_comments) ? $get_project_comments[0]->id : ''; ?>">
<textarea class="form-control" name="notes" id="commentsfield"><?php echo !empty($get_project_comments) ? $get_project_comments[0]->notes : ''; ?></textarea>
</div>
</div>
</div>  

</div>

<div class="row">
<div class="col-lg-12">
<div class="form-group">
<label for="actionsfield">Actions</label>
<div class="controls">
<input type="hidden" name="action_id" value="<?php echo !empty($get_project_actions) ? $get_project_actions[0]->id : ''; ?>">
<input type="text" class="form-control" name="actions" id="actionsfield" value="<?php echo !empty($get_project_actions) ? $get_project_actions[0]->actions : ''; ?>">
</div>
</div>
</div>  

<div class="col-lg-12">
<div class="form-group">
<label for="actionupdatefield">Actions Update</label>
<div class="controls">
<textarea class="form-control" name="action_update" id="actionupdatefield"><?php echo !empty($get_project_actions) ? $get_project_actions[0]->action_update : ''; ?></textarea>
</div>
</div>
</div>  

</div>
<!-- Row -->


</div>

<div style="border:2px solid #85929E;padding:50px;margin:20px;">
<h4 class="box-title">Project Comments</h4>
 <a href="javascript:void(0);" class="openCommentModal" data-title="<?php echo $pipeline_projects->project_name ?>" data-id="<?php echo $pipeline_projects->project_id ?>"
								data-ptype="<?php echo $pipeline_projects->project_type ?>"><i class="far fa-comments"  style="color: orange;" ></i> Add Comment</a>
<div class="row">
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
</div>  

</div>
<!-- Row -->


</div>
</div>
<!-- Tab 1-->


<button type="submit" class="btn btn-primary waves-effect waves-light" style="margin-left:500px;">Update</button> 

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

<div class="modal fade" id="commentModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Comment - <span class="ptitle"></span></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
	  <form method="post" action="">
      <div class="modal-body">
	    <input type="hidden" name="pid" id="pid"/>
		<input type="hidden" name="ptype" id="ptype"/>
         <textarea cols="70" rows="5" name="comment" id='comment' required> </textarea>
      </div>
      <div class="modal-footer">
	  <button type="button" class="btn btn-primary btn-sm" id="commentSbmt">Submit</button>
        <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Close</button>
        
      </div>
	  </form>
    </div>
  </div>
</div>
<script>
$("#countryfield").change(function(){
$('#regionfield').html("");
var rid=$("#countryfield option:selected").attr("id");
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
$(".openCommentModal").click(function(){
	var pname=$(this).data("title");
	var pid=$(this).data("id");
	var ptype=$(this).data("ptype");
	$("#pid").val(pid);
	$("#ptype").val(ptype);
	$(".ptitle").html(pname);
	$("#commentModal").modal("show");

})
$("#commentSbmt").click(function(){
	var pid=$("#pid").val();
	var ptype=$("#ptype").val();
	var comment=$("#comment").val();
	if(pid=='' ||  ptype==''|| comment==''){
		alert("Error occured please try again");
		return false;
	} 
	else {
		$.ajax({
			type:"post",
			url:"<?php echo base_url();?>Projects/addComment",
			data: {pid:pid,ptype:ptype,comment:comment},
			success:function(res){
                      if(res==1){
						  alert("Your comment submitted successfully..");
						  $("#comment").val("");
						  return false;
					  }
					  else {
						  alert("Your comment submission failed try again..")
					  }
			}
		})
	}

})
</script>
