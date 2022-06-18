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
                                           <h4 class="box-title">Projects</h4>
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
								<th>Project Name</th>
								<th>Project Value</th>
								<th>Priority</th>
								<th>Country</th>
								<th>Execution Start</th>
                                <th>Project Status</th>
                                <th>Bidding Stage</th>
								<th>Date last updated</th>
								<th>Options</th>

							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Project Name</th>
								<th>Project Value</th>
								<th>Priority</th>
								<th>Country</th>
								<th>Execution Start</th>
                                <th>Project Status</th>
                                <th>Bidding Stage</th>
								<th>Date last updated</th>
								<th>Options</th>								
							</tr>
						</tfoot>
						<tbody>
							
                            <?php foreach($get_projects as $pipeline_projects){ ?>
                            <tr>
								<td><?php echo $pipeline_projects->project_name ?></td>
								<td><?php echo number_format($pipeline_projects->project_value) ?></td>
								<td><?php echo $pipeline_projects->priority ?></td>
								<td><?php echo $pipeline_projects->country ?></td>
								<td><?php echo $pipeline_projects->e_year ?></td>
								<td><?php echo $pipeline_projects->project_status ?></td>
								<td><?php echo $pipeline_projects->bid_stage ?></td>
								<td><?php echo $pipeline_projects->updateDate ?></td>
                                <td  style="width: 140px;"><a href="<?php echo base_url()?>projects/project_details/<?php echo $pipeline_projects->slug ?>" title="View: <?php echo $pipeline_projects->project_name ?>"><i class="fas fa-eye" style="color: black;"></i></a>
                                &nbsp;
                                <a href="<?php echo base_url()?>projects/edit_project/<?php echo $pipeline_projects->slug ?>" title="Edit: <?php echo $pipeline_projects->project_name ?>"><i class="far fa-edit"></i></a>
                                &nbsp;
                                <a href="javascript:void(0);" class="openCommentModal" data-title="<?php echo $pipeline_projects->project_name ?>" data-id="<?php echo $pipeline_projects->project_id ?>"
								data-ptype="<?php echo $pipeline_projects->project_type ?>"><i class="far fa-comments"  style="color: orange;" ></i></a>
                                &nbsp;
                                <a href="#" title="Archive: <?php echo $pipeline_projects->project_name ?>" onclick="return confirm('Are you sure you want move to Archive?')"><i class="far fa-file-archive" style="color: red;"></i></a>
                                &nbsp;
                                <a href="#"><i class="fa fa-envelope" title="Actions: <?php echo $pipeline_projects->project_name ?>" style="color: brown;"></i></a>
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
<script type="text/javascript">
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
	if(comment==' '){
		alert("Please enter comment");
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