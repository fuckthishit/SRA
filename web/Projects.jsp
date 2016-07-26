<%@include file="security.jsp" %>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Projects"%>
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
  <!-- Main Header -->
  <%@include file ="navbar.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Projects
        <small>All projects of SRA</small>
      </h1>
      <ol class="breadcrumb">
        <li class="active">Projects</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Your Page Content Here -->
	  <div class="row">
	  <div class="col-md-2">
	  <button class="btn btn-sm btn-info btn-flat pull-left" data-toggle="modal" data-target="#myModal">New Project</button>
	  </div>
	  <div class="col-md-1"><label>Barangay</label></div><div class="col-md-4"><select class="form-control"><option>Aklan</option></select></div>
	  </div>
	  <br/>
	  <div class="box">
	  <div class="box-body">
	  <table class="table table-hover">
	  <tbody>
	  <tr>
		<th>#</th>
		<th>Name</th>
		<th>Date</th>
		<th>Status</th>
	  </tr>
          <% 
          ArrayList<Projects> list = (ArrayList<Projects>) session.getAttribute("projectList");
          if (list!=null)
          {
              for (int i =0; i < list.size(); i++){
          
          %>
          <tr>
              <td><%= list.get(i).getProject_num() %></td>
              <td><a href="ViewProject?id=<%= list.get(i).getProject_num() %>"><%= list.get(i).getName() %></a></td>
          <td><%= list.get(i).getDate_created() %></td>
          <td>
              <% 
              if (list.get(i).getStatus().equals("A")){
              %>
              <span class="label label-success">Approved</span>
              <% } 
              else if (list.get(i).getStatus().equals("P")){
              %>
              <span class="label label-warning">Pending</span>
              <% }
              else if (list.get(i).getStatus().equals("D")){
              %>
              <span class="label label-danger">Denied</span>
              <% } 
              else if (list.get(i).getStatus().equals("O")){
              %>
              <span class="label label-primary">On Going</span>
              <% } %>
              
          </td>
          </tr>
          <% 
              }
          }
          %>
	  
	  </tbody>
	  </table>
	  <div class="box-footer clearfix">
              <ul class="pagination pagination-sm no-margin pull-right">
                <li><a href="#"><<</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">>></a></li>
              </ul>
            </div>
	  <div>
	  </div>
	  
	  
	  
	  <div class="modal modal-primary fade" id="myModal" action="CreateProject">
          <div class="modal-dialog">
            <div class="modal-content" action="CreateProject">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">New Project</h4>
              </div>
                <form action="CreateProject">
              <div class="modal-body">
                <div class="form-group">
                  <label>Name of Project</label>
                  <input type="text" name="Name" class="form-control">
				  
                </div>
				<label>Starting Date</label>
				<div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
				<input type="date" name="DateStart" class="form-control">
				</div>
				<label>Ending Date</label>
				<div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
				<input type="date" name="DateEnd" class="form-control">
				</div>
				<div class="form-group">
                  <label>Description</label>
                  <textarea class="form-control" name="Description" rows="3" placeholder="Enter ..."></textarea>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                <input type="submit" class="btn btn-outline" value="Create">
              </div>
          </form>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  
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
<script>
    $(document).ready(function()){
    $("#createProject").click(function()){
        var name = $("#Name").val();
        var startingdate = $("#DateStart").val();
        var description = $("#Description").val();
        if(name == null || startingdate == null || description = null){
            alert("Not enough information");
            return;
        }
        $.post('CreateProject',{"Name":name,"DateStart": startingdate,"Description": description},
        function(){
            alert("Successful");
        })
                .fail(function(){
                    alert("Failed"));
                });
        })
    });
</script>
<!-- jQuery 2.2.0 -->
<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
</body>
</html>
