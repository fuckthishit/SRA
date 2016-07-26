
<%@include file="security.jsp" %>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SRA | Projects</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- for bar graph ccs -->
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  -->
  <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
 
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <%@include file ="navbar.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Comparison (can be compared to without selecting a farmer|farm)
        <small>Pampanga Mill District</small> 
      </h1>
   
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Your Page Content Here -->
	  <div class="row">
	  <div class="col-md-2">
	  
	  </div>
	  <div class="col-md-1"><label>Municipality</label></div><div class="col-md-2"><select class="form-control">
											<option>San Fernando</option>
											<option>Angeles City</option></select></div>
	  <div class="col-md-1"><label>Farmer</label></div><div class="col-md-2"><select class="form-control">
											<option>Revidad</option></select></div>
	  <div class="col-md-1"><label>Farm</label></div><div class="col-md-2"><select class="form-control">
											<option>Farm 1</option>
											<option>Farm 2</option></select></div>
	  </div>
	  </br>
	  <div class="row">
	  <div class="col-md-2">
	  
	  </div>
	  <div class="col-md-1"><label>Municipality</label></div><div class="col-md-2"><select class="form-control">
											<option>San Fernando</option>
											<option>Angeles City</option></select></div>
	  <div class="col-md-1"><label>Farmer</label></div><div class="col-md-2"><select class="form-control">
											<option>Revidad</option></select></div>
	  <div class="col-md-1"><label>Farm</label></div><div class="col-md-2"><select class="form-control">
											<option>Farm 1</option><option>Farm 2</option></select></div>
	
	  
	 
	  
   <br>
   <div class="col-md-5">
          <!-- LINE CHART -->
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Location Map A</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
 <script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script><div style='overflow:hidden;height:340px;width:400px;'><div id='gmap_canvas' style='height:440px;width:700px;'></div><div><small><a href="http://embedgooglemaps.com">									embed google maps							</a></small></div><div><small><a href="https://termsandcondiitionssample.com">terms and conditions sample</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type='text/javascript'>function init_map(){var myOptions = {zoom:10,center:new google.maps.LatLng(14.5654684,120.99316880000003),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(14.5654684,120.99316880000003)});infowindow = new google.maps.InfoWindow({content:'<strong>Title</strong><br>de la salle university manila<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
</div>
<div class="col-md-5">
          <!-- LINE CHART -->
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Location Map B</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
 <script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script><div style='overflow:hidden;height:340px;width:400px;'><div id='gmap_canvas' style='height:440px;width:700px;'></div><div><small><a href="http://embedgooglemaps.com">									embed google maps							</a></small></div><div><small><a href="https://termsandcondiitionssample.com">terms and conditions sample</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type='text/javascript'>function init_map(){var myOptions = {zoom:10,center:new google.maps.LatLng(14.5654684,120.99316880000003),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(14.5654684,120.99316880000003)});infowindow = new google.maps.InfoWindow({content:'<strong>Title</strong><br>de la salle university manila<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
</div>
	<div class="col-md-12">
          <!-- LINE CHART -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Production add bar chart(blue-municipality|green-farm 1|red-farm 2)</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="lineChart1" style="height:250px"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
		  </div>
          <!-- /.box -->

          <!-- BAR CHART -->
        
	 <div class="col-md-12">
          <!-- LINE CHART -->
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Current Production</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="barChart" style="height: 230px; width: 510px;" width="510" height="230"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
</div>

<div class="col-md-6">
          <!-- LINE CHART -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">#1 Details</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body table-responsive">
            
              <table class="table table-hover">
                <tbody><tr>
                  <th>Farmer Name</th>
                  <th>Yield</th>
				  <th>Farm Size</th>
				  <th>% completed</th>
				 <th>Cane Variety</th>
				  <th>%PC</th>
				  <th>%RC</th>
				  <th>detailsbtn</th>
				</tr>
                <tr>
                  <td >John Doe</td>
				<td>1.23</td>
                  <td>35%</td>
				  <td>22</td>
				   <td>tpeh31</td>
				   <td>3%</td>
				  <td>77%</td>
				  <td>detailsbtn</td>
                </tr>
				
                <tr>
                  <td href="" >henry ford</td>
					<td>1.23</td>
                  <td>80%</td>
				   <td>22ha</td>
				   <td>TPEH43</td>
				   <td>3%</td>
				  <td>77%</td>
				  <td>detailsbtn</td>
                </tr>
                <tr>
                  
                <td href="" >Michael Johnathan</td>
				<td>1.23</td>
                  <td>80%</td>
				   <td>22ha</td>
				   <td>TPEH43</td>
				   <td>3%</td>
				  <td>77%</td>
				  <td>detailsbtn</td>
                </tr>
                <tr>
                <td href="" >Danny Frisk</td>
				<td>1.23</td>
                  <td>80%</td>
				   <td>22ha</td>
				   <td>TPEH43</td>
				   <td>3%</td>
				  <td>77%</td>
				  <td>detailsbtn</td>
                </tr>
              </tbody>
			  </table>
			 
           
            </div>
            <!-- /.box-body -->
          </div>
		  </div>
		  <div class="col-md-6">
          <!-- LINE CHART -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title"># 2 Details</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body table-responsive">
            
              <table class="table table-hover">
                <tbody><tr>
                  <th>Farmer Name</th>
                  <th>Yield</th>
				  <th>Farm Size</th>
				  <th>% completed</th>
				 <th>Cane Variety</th>
				  <th>%PC</th>
				  <th>%RC</th>
				  <th>Moredetailsbutton</th>
				</tr>
                <tr>
                  <td >John Doe</td>
				<td>1.23</td>
                  <td>35%</td>
				  <td>22</td>
				   <td>tpeh31</td>
				   <td>3%</td>
				  <td>77%</td>
				   <td>Moredetailsbutton</td>
                </tr>
				
                <tr>
                  <td href="" >henry ford</td>
					<td>1.23</td>
                  <td>80%</td>
				   <td>22ha</td>
				   <td>TPEH43</td>
				   <td>3%</td>
				  <td>77%</td>
				    <td>Moredetailsbutton</td>
                </tr>
                <tr>
                  
                <td href="" >Michael Johnathan</td>
				<td>1.23</td>
                  <td>80%</td>
				   <td>22ha</td>
				   <td>TPEH43</td>
				   <td>3%</td>
				  <td>77%</td>
				    <td>Moredetailsbutton</td>
                </tr>
                <tr>
                  <td href="" >Danny Frisk</td>
				<td>1.23</td>
                  <td>80%</td>
				   <td>22ha</td>
				   <td>TPEH43</td>
				   <td>3%</td>
				  <td>77%</td>
				    <td>Moredetailsbutton</td>
                </tr>
              </tbody>
			  </table>
			 
           
            </div>
            <!-- /.box-body -->
          </div>
		  </div>
<div class="col-md-6">
          <!-- LINE CHART -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Practices, Plans and Programs</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
             <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tbody><tr>
                  <th>Name</th>
                  <th>Status</th>
				  <th>Reason/Problems</th>
				   <th>Edit button</th>
				  <th>Add button</th>
                 
                </tr>
                <tr>
                  <td href="" >John Doe</td>
                  
                  <td><span class="label label-success">Approved</span></td>
                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
				   <th>Edit</th>
				  <td>Addbtn</td>
                </tr>
                <tr>
               
                  <td href="" >Alexander Pierce</td>
					<td><span class="label label-warning">Pending</span></td>
                   <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
				    <th>Edit</th>
				   <td>Addbtn</td>
                </tr>
                <tr>
                  
                  <td href="threshold.html" >Bob Doe</td>
                  <td><span class="label label-primary">Approved</span></td>
				  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
				   <th>Edit</th>
                 <td>Addbtn</td>
                </tr>
                <tr>
                  <td href="" >Mike Doe</td>
                  <td><span class="label label-danger">Denied</span></td>
                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
				   <th>Edit</th>
				    <td>Addbtn</td>
                </tr>
              </tbody></table>
			  <div class="box-footer clearfix">
              <a href="javascript:void(0)" class="btn btn-sm btn-info btn-flat pull-right">Create New Plans</a>
			  </div>
            </div>
            </div>
            <!-- /.box-body -->
          </div>
		  </div>
		  <div class="col-md-6">
          <!-- LINE CHART -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Practices, Plans and Programs</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
             <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tbody><tr>
                  <th>Name</th>
                  <th>Status</th>
				  <th>Reason/problems</th>
				   <th>Edit button</th>
				  <th>Add button</th>
                 
                </tr>
                <tr>
                  <td href="" >John Doe</td>
                  
                  <td><span class="label label-success">Approved</span></td>
                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
				   <th>Edit</th>
				  <td>Addbtn</td>
                </tr>
                <tr>
               
                  <td href="" >Alexander Pierce</td>
					<td><span class="label label-warning">Pending</span></td>
                   <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
				    <th>Edit</th>
				   <td>Addbtn</td>
                </tr>
                <tr>
                  
                  <td href="threshold.html" >Bob Doe</td>
                  <td><span class="label label-primary">Approved</span></td>
				  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
				   <th>Edit</th>
                 <td>Addbtn</td>
                </tr>
                <tr>
                  <td href="" >Mike Doe</td>
                  <td><span class="label label-danger">Denied</span></td>
                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
				   <th>Edit</th>
				    <td>Addbtn</td>
                </tr>
              </tbody></table>
			  <div class="box-footer clearfix">
              <a href="javascript:void(0)" class="btn btn-sm btn-info btn-flat pull-right">Create New Plans</a>
			  </div>
            </div>
            </div>
            <!-- /.box-body -->
          </div>
		  </div>
          <!-- BAR CHART -->
            </div>
		 </section> 
		  </div>
          <!-- /.box -->

        </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
    </div>
    <!-- Default to the left -->
	<br>
    <strong>Copyright &copy; 2016 <a href="#">SRA</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane active" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript::;">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript::;">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.2.0 -->
<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>

<!-- ChartJS 1.0.1 -->
<script src="plugins/chartjs/Chart.min.js"></script>



<script>
  $(function () {
  
  
  
 
    //-------------
    //- LINE CHART -
    //--------------
   
  
  var lineChartData = {
      labels: ["January", "February", "March", "April", "May", "June", "July","August", " September","October","November","December"],
      datasets: [
        {
          label: "Electronics",
          fillColor: "rgba(255,0,0,0.4)",
          strokeColor: "rgba(255,0,0,0.4)",
          pointColor: "rgba(255,0,0,0.7)",
          pointStrokeColor: "#c1c7d1",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(220,220,220,1)",
          data: [65, 59, 80, 81, 56, 55, 40 ,30, 30, 20, 10, 42]
        },
        {
          label: "Manual",
          fillColor: "rgba(0, 255, 0, 0.5)",
          strokeColor: "rgba(0, 255, 0, 0.5)",
          pointColor: "rgba(0, 255, 0, 0.5)",
          pointStrokeColor: "rgba(0, 255, 0, 1)",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(0, 255, 0, 1)",
          data: [16, 23, 19, 40, 64, 82, 56, 14, 73, 12, 34,46]
        },
		  {
          label: "Digital Goods",
          fillColor: "rgba(60,141,188,0.9)",
          strokeColor: "rgba(60,141,188,0.8)",
          pointColor: "#3b8bba",
          pointStrokeColor: "rgba(60,141,188,1)",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(60,141,188,1)",
          data: [28, 48, 40, 19, 86, 27, 90, 81, 56, 55, 40,30]
        }
      ]
    };
	var lineChartData1 = {
      labels: ["January", "February", "March", "April", "May", "June", "July","August", " September","October","November","December"],
      datasets: [
 
        {
          label: "Digital Goods",
          fillColor: "rgba(60,141,188,0.9)",
          strokeColor: "rgba(60,141,188,0.8)",
          pointColor: "#3b8bba",
          pointStrokeColor: "rgba(60,141,188,1)",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(60,141,188,1)",
          data: [28, 48, 40, 19, 86, 27, 90]
        }
      ]
    };
  var lineChartOptions = {
      //Boolean - If we should show the scale at all
      showScale: true,
      //Boolean - Whether grid lines are shown across the chart
      scaleShowGridLines: false,
      //String - Colour of the grid lines
      scaleGridLineColor: "rgba(0,0,0,.05)",
      //Number - Width of the grid lines
      scaleGridLineWidth: 1,
      //Boolean - Whether to show horizontal lines (except X axis)
      scaleShowHorizontalLines: true,
      //Boolean - Whether to show vertical lines (except Y axis)
      scaleShowVerticalLines: true,
      //Boolean - Whether the line is curved between points
      bezierCurve: true,
      //Number - Tension of the bezier curve between points
      bezierCurveTension: 0.3,
      //Boolean - Whether to show a dot for each point
      pointDot: false,
      //Number - Radius of each point dot in pixels
      pointDotRadius: 4,
      //Number - Pixel width of point dot stroke
      pointDotStrokeWidth: 1,
      //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
      pointHitDetectionRadius: 20,
      //Boolean - Whether to show a stroke for datasets
      datasetStroke: true,
      //Number - Pixel width of dataset stroke
      datasetStrokeWidth: 2,
      //Boolean - Whether to fill the dataset with a color
      datasetFill: true,
      //String - A legend template
      //Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
      maintainAspectRatio: true,
      //Boolean - whether to make the chart responsive to window resizing
      responsive: true
    };

	var lineChartCanvas = $("#lineChart1").get(0).getContext("2d");
    var lineChart = new Chart(lineChartCanvas);
    var lineChartOptions = lineChartOptions;
    lineChartOptions.datasetFill = false;
    lineChart.Line(lineChartData, lineChartOptions);
	
	 //-------------
    //- BAR CHART -
    //-------------
	 var barChartData = {
      labels: ["January", "February", "March", "April", "May", "June", "July"],
      datasets: [
        {
          label: "Electronics",
          fillColor: "rgba(210, 214, 222, 1)",
          strokeColor: "rgba(210, 214, 222, 1)",
          pointColor: "rgba(210, 214, 222, 1)",
          pointStrokeColor: "#c1c7d1",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(220,220,220,1)",
          data: [65, 59, 80, 81, 56, 55, 40]
        },
        {
          label: "Digital Goods",
          fillColor: "rgba(60,141,188,0.9)",
          strokeColor: "rgba(60,141,188,0.8)",
          pointColor: "#3b8bba",
          pointStrokeColor: "rgba(60,141,188,1)",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(60,141,188,1)",
          data: [28, 48, 40, 19, 86, 27, 90]
        }
      ]
    };
	
    var barChartCanvas = $("#barChart").get(0).getContext("2d");
    var barChart = new Chart(barChartCanvas);
   
    barChartData.datasets[1].fillColor = "#00a65a";
    barChartData.datasets[1].strokeColor = "#00a65a";
    barChartData.datasets[1].pointColor = "#00a65a";
    var barChartOptions = {
      //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
      scaleBeginAtZero: true,
      //Boolean - Whether grid lines are shown across the chart
      scaleShowGridLines: true,
      //String - Colour of the grid lines
      scaleGridLineColor: "rgba(0,0,0,.05)",
      //Number - Width of the grid lines
      scaleGridLineWidth: 1,
      //Boolean - Whether to show horizontal lines (except X axis)
      scaleShowHorizontalLines: true,
      //Boolean - Whether to show vertical lines (except Y axis)
      scaleShowVerticalLines: true,
      //Boolean - If there is a stroke on each bar
      barShowStroke: true,
      //Number - Pixel width of the bar stroke
      barStrokeWidth: 2,
      //Number - Spacing between each of the X value sets
      barValueSpacing: 5,
      //Number - Spacing between data sets within X values
      barDatasetSpacing: 1,
      //String - A legend template
      //Boolean - whether to make the chart responsive
      responsive: true,
      maintainAspectRatio: true
    };

    barChartOptions.datasetFill = false;
    barChart.Bar(barChartData, barChartOptions);
	
	
	
	
 });
  </script>


<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
</body>
</html>

