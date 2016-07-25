
<%@page import="entity.Recommendations"%>
<%@page import="db.RecommendationDB"%>
<%@page import="entity.Farmer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.FarmersDB"%>
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
  <title>SRA | Farmer Recommendation</title>
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
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Farmer Recommendation
        <small>Pampanga</small>
      </h1>
      <ol class="breadcrumb">
        <li class="active">Projects</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Your Page Content Here -->
	  
	  <div class="row">
	  <div class="col-md-3">
	  <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Farms</h3>
            </div>
            <div class="box-body no-padding">
              <ul class="nav nav-pills nav-stacked" >
                  <% FarmersDB farmersDB = new FarmersDB();
                     ArrayList<Farmer> listoffarms = new ArrayList<Farmer>();
                     listoffarms = farmersDB.getFarmersDetails();
                     for(int i=0;i<listoffarms.size();i++) { %>
                     <li class="GetFarmName"><a href="#"><%= listoffarms.get(i).getFarm_name()%></a></li>
                                    <%}%>
              </ul>
            </div>
            <!-- /.box-1body -->
          </div>
		  </div>
		  <div class="col-md-9">
	  <div class="box box-solid">
	  <div class="box-header with-border">
             
 
	  <h3 class="box-title">Farm Details</h3>
	  </div>
	  <div class="box-body details" id="FarmDetails">
  	   <% Farmer selectedFarm = (Farmer) session.getAttribute("selectedFarm"); 
                 if(selectedFarm != null) { %>
                     
	  <div class="row">
	  <div class="col-md-5">
	  <b>Area</b>
	  <a class="pull-right">3 hectares</a>
	  <hr>
	   <b>Tons Cane Produced</b>
	  <a class="pull-right"><%= selectedFarm.getTons_cane() %></a>
	  <hr>
	   <b>Soil Type</b>
	  <a class="pull-right"></a>
	  </div>
	  <div class="col-md-2">
	  </div>
	  
	    <div class="col-md-5">
	   <b>Owner</b>
           <a class="pull-right"><%= selectedFarm.getName() %></a>
	  <hr>
	   <b>Avg. Produced</b>
	  <a class="pull-right"><%= selectedFarm.getArea_harveted() %></a>
	  <hr>
	   <b>Sugarcane Variety</b>
           <a class="pull-right"><%= selectedFarm.getSugarcane_variety() %></a>
	  </div>
	   
	  </div>
          </div>  
	  <br/>
          <br/>
	  <div class="box box-solid details" id="RecomDetails">
	  <div class="box-header with-border">
	  <h4>Recommendations</h4>
	  </div>
	  <div class="box-body" >
	  <table class="table table-bordered" >
	  <tbody>
              <% 
                 RecommendationDB recomDB = new RecommendationDB();
                 ArrayList<Recommendations> listofrec = new ArrayList<Recommendations>();
                 listofrec = recomDB.getRecommendationsbyUserName(selectedFarm.getUsername());
                 if(listofrec!= null && selectedFarm != null){
                     System.out.println(listofrec.size()+"");
                 for(int i=0;i<listofrec.size();i++) { %>
		<tr>
		<th>Recommendation</th>
		<th>Description</th>
		<th>Created By</th>
		<th>Date</th>
		<th colspan="2"></th>
	  </tr>
	  <tr>
		
              <td><%= listofrec.get(i).getRecommendation() %></td>
                <td><%= listofrec.get(i).getDescription() %></td>
                <td><%= listofrec.get(i).getCreated_by() %></td>
                <td><%= listofrec.get(i).getDate_created() %></td>
		<td><button class="btn btn-xs btn-danger">X</button></td>
		<td><button class="btn btn-xs btn-primary"><i class="fa fa-edit"></i></button></td>
	  </tr>
          <% }  } %>
	  </tbody>
	  </table>
	  <br/>
	  
	  <div class="row">
	  <div class="col-md-3">
	  </div>
	  <div class="col-md-3">
	  
	  <button class="btn btn-sm btn-info btn-flat pull-left col-md-10"  data-toggle="modal" data-target="#myModal">Add</button>
	  <div class="modal modal-primary fade" id="myModal">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">New Recommendation</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label>Recommendation</label>
                  <input type="text" class="form-control">
				  
                </div>
				<div class="form-group">
                  <label>Description</label>
                  <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-outline">Create</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
	  </div>
	  <div class="col-md-3">
		<button class="btn btn-sm btn-info btn-flat pull-left col-md-10">Approve</button>	
		</div>
		
		
	  <div class="col-md-3">
	  </div>
	  </div>
          </div>
          </div>
          <% }%>
	  
	  
	  
	       
	  </div>
	  
	  
          
	  <br/>
	  
	  <div class="box box-solid">
	  <div class="box-header with-border">
	  <h4>Suggested Recommendations</h4>
	  </div>
	  <div class="box-body">
	  <table class="table table-bordered">
	  <tbody>
		<tr>
		<th>Recommendation</th>
		<th>Description</th>
	  </tr>
	  <tr>
		<td>Add Fertilizer</td>
		<td>Add 15 ml of the type A</td>
	  </tr>
	  </tbody>
	  </table>
	  </div>
	  </div>
	  
</div>	

</div>
		  </section>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.2.0 -->
<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
                    
<script>
   $(document).ready(function (){
       $("li.GetFarmName").click(function (){
       
    
                      var FarmName = $(this).find("a").text();
                      
                      $.getJSON('ViewFarmerDetails',{"FarmName":FarmName,
                       function(resp){
                          $('.details').empty().load(document.URL +  ' .details').load(document.URL +  ' .details');
                         // $('#RecomDetails').empty().load(document.URL +  ' #RecomDetails').load(document.URL +  ' #RecomDetails');
                       }
        });
    });
       
       
   });
</script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
</body>
</html>
