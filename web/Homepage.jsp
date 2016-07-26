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
  <title>SRA | Home</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="ionicons-2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
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
  <section class="content-header">
      <h1>
        Home
      </h1>
    </section>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    

    <!-- Main content -->
    <section class="content">

      <!-- Your Page Content Here -->
      <div class="row">
	 <div class="col-md-9" > 
	  <div class="box box-solid">
              <div class="box-header with-border">
    <h1 class="box-title">Area Harvested</h1>
    <div class="box-tools pull-right">
      <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
      <!-- In box-tools add this button if you intend to use the contacts pane -->
      <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
    </div>
  </div>
	  <div class="box-body with-border">
	  <script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script><div style='overflow:hidden;height:440px;width:700px;'><div id='gmap_canvas' style='height:440px;width:700px;'></div><div><small><a href="http://embedgooglemaps.com">									embed google maps							</a></small></div><div><small><a href="https://termsandcondiitionssample.com">terms and conditions sample</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type='text/javascript'>function init_map(){var myOptions = {zoom:10,center:new google.maps.LatLng(14.5654684,120.99316880000003),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(14.5654684,120.99316880000003)});infowindow = new google.maps.InfoWindow({content:'<strong>Title</strong><br>de la salle university manila<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
	  <br/>
	  <div class="row">
	  <div class="col-md-2">
	  <label>Estimated Sugar: </label><p>1000 lkg</p>
	  </div>
	
	  <div class="col-md-2">
	  <label>Actual Sugar: </label><p>900 lkg</p>
          </div>
	  </div>
	  
	   </div>
	   </div>
             </div>
       <div class="col-md-12" > 
	  <div class="box box-solid">
              <div class="box-header with-border">
    <h1 class="box-title">Area Harvested</h1>
    <div class="box-tools pull-right">
      <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
      <!-- In box-tools add this button if you intend to use the contacts pane -->
      <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
    </div>
  </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="lineChart" style="height: 250px; width: 511px;" width="511" height="250"></canvas>
              </div>
                </div>
              </div>
           </div>
           
            <!-- /.box-body -->
         
	   <br/>
           
           <div class="col-md-6">
          <!-- DONUT CHART -->
          <div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Donut Chart</h3>

              <div class="box-tools pull-right">
                <button class="btn btn-box-tool" type="button" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button class="btn btn-box-tool" type="button" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <canvas width="892" height="446" id="pieChart" style="width: 714px; height: 357px;"></canvas>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div><!-- donut chart end -->
         <div class="col-md-5">
            <div class="box box-info">
            <div class="box-header with-border ">
    <h1 class="box-title">Standing Crop</h1>
    <div class="box-tools pull-right">
      <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
      <!-- In box-tools add this button if you intend to use the contacts pane -->
      <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
    </div>
  </div><!-- /.box-header -->
        <table class="table table-bordered" >
                    <tbody>
            <tr>
		<th>Particulars</th>
		<th>Estimated Production</th>	
            </tr>
            <tr>	
                <td>Area</td>
                <td>800.00</td>
            </tr>
                    </tbody>
                </table>
            </div>
           </div>
         <!-- /.box-1body -->  
                <!-- closer of B -->
             <div class="col-md-5" > 
                <div class="box box-info">
            <div class="box-header with-border">
    <h1 class="box-title">Area Planted and Ratooned for Crop Year 2015-2016</h1>
    <div class="box-tools pull-right">
      <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
      <!-- In box-tools add this button if you intend to use the contacts pane -->
      <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
    </div>
  </div><!-- /.box-header -->
                <div class="box-body">
              
	  
           
            <div class="box-body no-padding">
                <table class="table table-bordered" >
                    <tbody>
            <tr>
		<th>Crop Class</th>
		<th>Previous</th>
                <th>This Week</th>
                <th>To Date</th>
            </tr>
            <tr>	
                <td>Plant Cane</td>
                <td>803.00</td>
                <td>86.00</td>
                <td>889.00</td>
            </tr>
                    </tbody>
                </table>
            </div>
           
         <!-- /.box-1body -->
		 
            </div><!-- /.box-body -->
            </div>
	  </div><!-- /.end of C -->
          
           <div class="col-md-10" > 
           <div class="box box-info">
            <div class="box-header with-border">
    <h1 class="box-title">Area Harvested</h1>
    <div class="box-tools pull-right">
      <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
      <!-- In box-tools add this button if you intend to use the contacts pane -->
      <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
    </div>
  </div>
            
                
	  
            <div class="box-body no-padding">
                <table class="table table-bordered" >
                    <tbody>
            <tr>
		<th>Particulars</th>
		<th>Estimated Production</th>
		<th>Previous</th>
		<th>This Week</th>
                <th>To Date</th>
                <th>Percent Completed</th>	
            </tr>
            <tr>	
                <td>Area</td>
                <td>5,000.00</td>
                <td>3,850.00</td>
                <td>350.00</td>
                <td>4,200.00</td>
                <td>84.00</td>
            </tr>
                    </tbody>
                </table>
            </div>
           
          <!-- /.box-1body -->
            <!-- closer of A-->
		  </div>
            </div><!-- /.box-body -->          
                <br>
                
      </div>
    </section>
	  <br/>
          
 </div>
 
    <!-- /.content -->
  </div>
    </body>

 
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.2.0 -->
<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>

<script src="plugins/chartjs/Chart.min.js"></script>
<script>
  $(function () {
  var lineChartCanvas = $("#lineChart").get(0).getContext("2d");
    var lineChart = new Chart(lineChartCanvas);
	var lineChartData = {
      labels: ["May 1", "May 8", "May 15", "May 21", "May 28"],
      datasets: [
        {
          label: "Sugarcane",
          fillColor: "rgba(210, 214, 222, 1)",
          strokeColor: "rgba(210, 214, 222, 1)",
          pointColor: "rgba(210, 214, 222, 1)",
          pointStrokeColor: "#c1c7d1",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(220,220,220,1)",
          data: [65, 59, 80, 81, 56, 55, 40]
        }
      ]
    };

	lineChart.Line(lineChartData);
        
          //-------------
    //- PIE CHART -
    //-------------
    // Get context with jQuery - using jQuery's .get() method.
    var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
    var pieChart = new Chart(pieChartCanvas);
    var PieData = [
      {
        value: 700,
        color: "#f56954",
        highlight: "#f56954",
        label: "Chrome"
      },
      {
        value: 500,
        color: "#00a65a",
        highlight: "#00a65a",
        label: "IE"
      },
      {
        value: 400,
        color: "#f39c12",
        highlight: "#f39c12",
        label: "FireFox"
      },
      {
        value: 600,
        color: "#00c0ef",
        highlight: "#00c0ef",
        label: "Safari"
      },
      {
        value: 300,
        color: "#3c8dbc",
        highlight: "#3c8dbc",
        label: "Opera"
      },
      {
        value: 100,
        color: "#d2d6de",
        highlight: "#d2d6de",
        label: "Navigator"
      }
    ];
    var pieOptions = {
      //Boolean - Whether we should show a stroke on each segment
      segmentShowStroke: true,
      //String - The colour of each segment stroke
      segmentStrokeColor: "#fff",
      //Number - The width of each segment stroke
      segmentStrokeWidth: 2,
      //Number - The percentage of the chart that we cut out of the middle
      percentageInnerCutout: 50, // This is 0 for Pie charts
      //Number - Amount of animation steps
      animationSteps: 100,
      //String - Animation easing effect
      animationEasing: "easeOutBounce",
      //Boolean - Whether we animate the rotation of the Doughnut
      animateRotate: true,
      //Boolean - Whether we animate scaling the Doughnut from the centre
      animateScale: false,
      //Boolean - whether to make the chart responsive to window resizing
      responsive: true,
      // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
      maintainAspectRatio: true,
      //String - A legend template
     };
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    pieChart.Doughnut(PieData, pieOptions);
  
  });
  </script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->

</html>
