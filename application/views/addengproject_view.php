<style>
.list-inline{
	margin-left:280px;
}
.nav-tabs {
     border-bottom: 0px solid;
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
                   
			<form id="engprojectForm" action="<?php echo base_url();?>Engineering/sbmt_eng_project" method="POST" name="engprojectForm">
				<div id="tabsleft" class="tabbable tabs-left">
			<div class="tab-pane" id="tabsleft-tab1">
				<div style="border:2px solid #85929E;padding:50px;margin: 20px;">
				 <div class="row">  
				 <div class="col-lg-4">
				   <div class="form-group">
					<label for="statusfield">Project Name *</label>
					<div class="controls">
					  <input type="text" name="project_name" id="project_name" class="required form-control" placeholder="Projec name"/>
			            </div>
					   </div>
					 </div>
						<div class="col-lg-4">
						<div class="form-group">
							<label for="projectfield">Project description *</label>
							<div class="controls">
								<input type="text" id="project_desc" name="project_desc" placeholder="Project number" class="required form-control">
							 </div>
						</div>
					  </div>
				   <div class="col-lg-4">
					  <div class="form-group">
					  <label for="priorityfield">Priority *</label>
					 <div class="controls">
						<select class="required form-control" name="priority" id="priority">
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
			  <div class="row">
				<div class="col-lg-4">
						<div class="form-group">
							<label for="projectfield">Bid No *</label>
							<div class="controls">
								<input type="text" id="bid_no" name="bid_no" placeholder="Bid no" class="required form-control">
							 </div>
						</div>
				   </div> 
				   
				   <div class="col-lg-4">
						<div class="form-group">
							<label for="projectfield">Product *</label>
							<div class="controls">
							<select class="required form-control" name="product" id="product">
						 <option value="">Select Product</option>
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
							<label for="projectfield">Country *</label>
						<div class="controls">
						 <select class="required form-control" name="country" id="country">
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
			   </div>
               <div class="row">			   
				  <div class="col-lg-4">
						<div class="form-group">
							<label for="projectfield">Region</label>
						<div class="controls">
						  <input type="text" name="region" id="region"
						  class="required form-control" placeholder="Region"/>
					 </div>
				    </div>
				  </div> 
				  
				  <div class="col-lg-4">
						<div class="form-group">
							<label for="projectfield">Operator / Owner</label>
						<div class="controls">
						  <input type="text" name="operator" id="operator"
						  class="required form-control" placeholder="Operator / Owner">
					 </div>
				    </div>
				  </div>

                 <div class="col-lg-4">
					<div class="form-group">
						<label for="projectfield">Project Status *</label>
						<div class="controls">
						 <select class="required form-control" name="project_status" id="project_status">
						 <option value="">Select project status</option>
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
			  <div class="row">
                 <div class="col-lg-4">
					<div class="form-group">
						<label for="projectfield">Bidding stage *</label>
						<div class="controls">
						 <select class="required form-control" name="bidding_stage" id="bidding_stage">
						 <option value="">Select bidding stage</option>
						<?php 
							 foreach($get_bidding_stage as $bidding_stage){
                               echo "<option value='".$bidding_stage->bidding_stage."'>".$bidding_stage->bidding_stage."</option>";
                             }
						?>
						</select>
					 </div>
				    </div>
				  </div> 
                 
				   <div class="col-lg-4">
						<div class="form-group">
							<label for="projectfield">EPIC</label>
						<div class="controls">
						  <input type="text" name="epic" id="epic"
						  class="required form-control" placeholder="EPIC">
					 </div>
				    </div>
				  </div>
				  <div class="col-lg-4">
						<div class="form-group">
							<label for="projectfield">OEM</label>
						<div class="controls">
						  <input type="text" name="oem" id="oem"
						  class="required form-control" placeholder="OEM">
					 </div>
				    </div>
				  </div>
			    </div>
				<div class="row">
				   <div class="col-lg-4">
					<div class="form-group">
						<label for="projectfield">Sales lead *</label>
						<div class="controls">
						 <select class="required form-control" name="sales_lead" id="sales_lead">
						 <option value="">Select sales lead</option>
						<?php 
							foreach($sales_lead as $sales){
								echo "<option value='".$sales->sales_lead."'>".$sales->sales_lead."</option>";
							}
						?>
						</select>
					 </div>
				    </div>
				  </div> 
				  
				  <div class="col-lg-4">
					<div class="form-group">
						<label for="projectfield">Contract Award(Year) *</label>
						<div class="controls">
						 <select class="required form-control" name="contract_award_year" id="contract_award_year">
						 <option value="">Select contract award year</option>
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
							<label for="projectfield">QTR</label>
						<div class="controls">
						  <input type="text" name="qtr" id="qtr"
						  class="required form-control" placeholder="QTR"/>
					 </div>
				    </div>
				  </div>
			  </div>
              <div class="row">			  
				  <div class="col-lg-4">
						<div class="form-group">
							<label for="projectfield">Schedule</label>
						<div class="controls">
						  <input type="text" name="schedule" id="schedule"
						  class="required form-control" placeholder="Schedule"/>
					 </div>
				    </div>
				  </div>
					
					<div class="col-lg-4">
						<div class="form-group">
							<label for="projectfield">Price</label>
						<div class="controls">
						  <input type="text" name="price" id="price"
						  class=" form-control" placeholder="Price"/>
					 </div>
				    </div>
				  </div>
				  
				  <div class="col-lg-4">
						<div class="form-group">
							<label for="projectfield">Genaral Comments</label>
						<div class="controls">
						  <input type="text" name="comment" id="comment"
						  class=" form-control" placeholder="comment"/>
					 </div>
				    </div>
				  </div>
				</div>
                <div class="row">				
				  <div class="col-lg-4">
						<div class="form-group">
							<label for="projectfield">Actions</label>
						<div class="controls">
						  <input type="text" name="action" id="action"
						  class=" form-control" placeholder="Actions"/>
					 </div>
				    </div>
				  </div>
				  
				  
				  <div class="col-lg-4">
						<div class="form-group">
						<label for="projectfield">Actions Update</label>
						<div class="controls">
						  <input type="text" name="action_update" id="action_update"
						  class=" form-control" placeholder="Action update"/>
					 </div>
				    </div>
				  </div>
				  
				</div>
					
					
				   
			<ul class="pager wizard"style="border-bottom:0px;">
			<li class="next">
				<button type="submit" class="btn btn-primary" style="margin-left:300px;">Create Project</button>
			</li> 
			</ul>
					
		 </div>
	     </div>
			
		 </div>
	    </div>
       </form>
      </div>
     </div>
   </div>
 </div>   


<?php include("footer.php"); ?>
<script type="text/javascript">
// $('#valuefield').on('input', function (event) { 
    // this.value = this.value.replace(/[^0-9,]/g, '');
// });
$("#country").change(function(){
     $('#region').html("");
    //var rid=$("#countryfield").attr("id");
    var rid=$("#country option:selected").attr("id");
    //alert(rid);
     if(rid){
         $.ajax({
             type:"POST",
             url:"<?php echo base_url();?>Projects/getRegion",
             data:{rid:rid},
             success:function(res){
				 //alert(res);
                 $('#region').val(res);
             }
         })
     }
})
</script>
 