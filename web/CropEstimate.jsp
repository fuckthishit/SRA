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
  <!-- for bar graph ccs -->w
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
  <style>
  @import url(http://fonts.googleapis.com/css?family=Roboto:400+700);
body {
  background: #30303A;
  font-family: Roboto;
}
#chart {
  width: 650px;
  height: 300px;
  margin: 30px auto 0;
  display: block;
}
#chart #numbers {
  width: 50px;
  height: 100%;
  margin: 0;
  padding: 0;
  display: inline-block;
  float: left;
}
#chart #numbers li {
  text-align: right;
  padding-right: 1em;
  list-style: none;
  height: 29px;
  border-bottom: 1px solid #444;
  position: relative;
  bottom: 30px;
}
#chart #numbers li:last-child {
  height: 30px;
}
#chart #numbers li span {
  color: #000;
  position: absolute;
  bottom: 0;
  right: 10px;
}
#chart #bars {
  display: inline-block;
  background: rgba(0, 0, 0, 0.2);
  width: 600px;
  height: 300px;
  padding: 0;
  margin: 0;
  box-shadow: 0 0 0 1px #444;
}
#chart #bars li {
  display: table-cell;
  width: 100px;
  height: 300px;
  margin: 0;
  color: #000;
  text-align: center;
  position: relative;
}
#chart #bars li .bar {
  display: block;
  width: 70px;
  margin-left: 15px;
  background: #49E;
  position: absolute;
  bottom: 0;
}
#chart #bars li .bar:hover {
  background: #5AE;
  cursor: pointer;
}
#chart #bars li .bar:hover:before {
  color: #000;
  content: attr(data-percentage) '%';
  position: relative;
  bottom: 20px;
}
#chart #bars li span {
  color: #000;
  width: 100%;
  position: absolute;
  bottom: -2em;
  left: 0;
  text-align: center;
}

  </style>
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
        Crop Estimate
        <small>Crop Estimate for (District)</small>
      </h1>
      <ol class="breadcrumb">
        <li class="active">Farms</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Your Page Content Here -->
	  <div class="row">
	  <div class="col-md-2">
	  
	  </div>
	  <div class="col-md-1"><label>District</label></div><div class="col-md-4"><select class="form-control"><option>Pampanga</option></select></div>
	  <div class="col-md-1"><label>Farmer</label></div><div class="col-md-4"><select class="form-control"><option>Revidad</option></select></div>
	  </div>
	  <br/>
	  <div class="box">
	  <div class="box-body">
	  <label class="col-md-2">District </label>
	   <table class="table table-hover">
	  <tbody>
              <tr>
                <th>Farmer</th>
		<th>Productivity</th>
		<th>Total Area Harvested</th>
		<th>Yield</th>
	  </tr>
	  <tr>
		<td><a>Jayson</a></td>
		<td>(TC)</td>
		<td>30%(HA)</td>
		<td>(TC/HA)</td>
	  </tr>
	  </tbody>
	  </table>
          <br>
          
	  <div id="chart" class="box box-solid">
              <div class="box-header with-border">
                  <h4>Graph</h4>
              </div>
              <br>
              <br>
              <br>
                 
  <ul id="numbers">
    <li><span>100%</span></li>
    <li><span>90%</span></li>
    <li><span>80%</span></li>
    <li><span>70%</span></li>
    <li><span>60%</span></li>
    <li><span>50%</span></li>
    <li><span>40%</span></li>
    <li><span>30%</span></li>
    <li><span>20%</span></li>
    <li><span>10%</span></li>
    <li><span>0%</span></li>
  </ul>
  
              
  <ul id="bars">
    <li><div data-percentage="50" class="bar"></div><span>Option 1</span></li>
    <li><div data-percentage="33" class="bar"></div><span>Option 2</span></li>
    <li><div data-percentage="54" class="bar"></div><span>Option 3</span></li>
    <li><div data-percentage="94" class="bar"></div><span>Option 4</span></li>
    <li><div data-percentage="44" class="bar"></div><span>Option 5</span></li>
    <li><div data-percentage="23" class="bar"></div><span>Option 6</span>
    </li>
  </ul>
</div>
	  <div>
	  </div
	  
    </section>
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
<script>$(function() {
  $("#bars li .bar").each(function(key, bar) {
    var percentage = $(this).data('percentage');

    $(this).animate({
      'height': percentage + '%'
    }, 1000);
  });
});</script>



<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
</body>
</html>
