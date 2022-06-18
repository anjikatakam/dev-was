<div class="navigation">
			<ul class="menu js__accordion">
				<li class="<?php if($url[1] == 'dashboard'){echo "current";}?>">
					<a class="waves-effect" href="<?php echo base_url()?>admin"><i class="menu-icon mdi mdi-view-dashboard"></i><span>Dashboard</span></a>
				</li>

				
                <li class="<?php if($url[1] == 'users' or $url2[0] == 'users'){echo "current";}?>">
					<a class="waves-effect" href="<?php echo base_url()?>users"><i class="menu-icon mdi mdi-account-multiple"></i><span>Users</span></a>
				</li>
				
                
                <li class="<?php if($url[1] == 'masters' or $url2[0] == 'masters'){echo "current";}?>">
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon mdi mdi-database-plus"></i><span>Menu's</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="<?php echo base_url()?>masters/region">Region</a></li>
						<li><a href="<?php echo base_url()?>masters/country">Country</a></li>
						<li><a href="<?php echo base_url()?>masters/acoating">AC Coating</a></li>
						<li><a href="#">Buyer's</a></li>
						<li><a href="#">CWC</a></li>
						<li><a href="#">Insulation Coating</a></li>
						<li><a href="#">Internal Lining</a></li>
						<li><a href="#">Material</a></li>
						<li><a href="#">Period</a></li>
						<li><a href="#">Pipe Size</a></li>
						<li><a href="#">Preferred Facility</a></li>
						<li><a href="#">Priority</a></li>
						<li><a href="#">Project Status</a></li>
						<li><a href="#">Type</a></li>
						<li><a href="#">Year</a></li>
                        <!--
                        <li><a href="/masters/ac_coating">AC Coating</a></li>
						<li><a href="/masters/buyers">Buyer's</a></li>
						<li><a href="/masters/cwc">CWC</a></li>
						<li><a href="/masters/insulation_coating">Insulation Coating</a></li>
						<li><a href="/masters/internal_lining">Internal Lining</a></li>
						<li><a href="/masters/material">Material</a></li>
						<li><a href="/masters/period">Period</a></li>
						<li><a href="/masters/pipe_size">Pipe Size</a></li>
						<li><a href="/masters/preferred_facility">Preferred Facility</a></li>
						<li><a href="/masters/priority">Priority</a></li>
						<li><a href="/masters/project_status">Project Status</a></li>
						<li><a href="/masters/type">Type</a></li>
						<li><a href="/masters/year">Year</a></li> -->
					</ul>
					<!-- /.sub-menu js__content -->
				</li>
				<li class="<?php if($this->uri->segment(1)== 'projects' or $this->uri->segment(1)== 'Engineering'){echo "current";}?>">
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon mdi mdi-file"></i><span>Projects</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="<?php echo base_url()?>projects/add_project">Add Pipeline Projects</a></li>
						<li><a href="<?php echo base_url()?>Engineering/add_project">Add Engineering Projects</a></li>
						<li><a href="<?php echo base_url()?>projects/">List Projects</a></li>
					</ul>
					<!-- /.sub-menu js__content -->
				</li>
				
                <li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon mdi mdi-file-chart"></i><span>Reports</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="#">Reports by Facalities</a></li>
						<li><a href="#">Reports by Region</a></li>
					</ul>
					<!-- /.sub-menu js__content -->
				</li>
				
                <li>
					<a class="waves-effect" href="#"><i class="menu-icon mdi mdi-key"></i><span>Change Password</span></a>
				</li>
                
                
                <li>
					<a class="waves-effect" href="<?php echo base_url(); ?>"><i class="menu-icon mdi mdi-power"></i><span>Logout</span></a>
				</li>
                
                
				</ul>
			<!-- /.menu js__accordion -->
		</div>
		<!-- /.navigation -->
