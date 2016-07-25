<%@page import="java.util.ArrayList"%>
<%@page import="entity.Farmer"%>
<%@include file="security.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SRA | Farmer Assistance</title>
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
  
  <style>
      #map {
        height: 200px;
      }</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <%@include file ="navbar.jsp" %>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Farmer Information
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Farms</a></li>
        <li class="active">Farm ABC</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
                <% Farmer farmer = (Farmer) session.getAttribute("farmer");
                if (farmer !=null) {
                %>
              <h3 class="profile-username text-center"><%= farmer.getName() %></h3>

              <p class="text-muted text-center"><%= farmer.getUsername()%></p>

              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>Phone Number</b> <a class="pull-right"><%= farmer.getCell_num() %></a>
                </li>
                <li class="list-group-item">
                  <b>Gender</b> <a class="pull-right">
                      <% if (farmer.getGender() == 0) {%>
                      Male
                      <% }
                       else { %>
                      Female
                  <% } %>
                  </a>
                </li>
                <li class="list-group-item">
                  <b>Education</b> <a class="pull-right">
                  
                   <% if (farmer.getEducation() == 0) {%>
                      Elementary
                      <% }
                       else if (farmer.getEducation() ==1){ %>
                      HS-Undergrad
                  <% }
                       else if (farmer.getEducation() ==2){ %>
                      HS-Grad
                 <% }
                       else if (farmer.getEducation() ==3){ %>
                     College-Undergrad
                  <% }
                       else if (farmer.getEducation() ==4){ %>
                      College-Grad
                  <% }
                       else if (farmer.getEducation() ==5){ %>
                      Vocational
                 <% }
                       else if (farmer.getEducation() ==6){ %>
                      N/A
                  <% } %>
                  </a>
                </li>
				 <li class="list-group-item">
                  <b>Civil Status</b> <a class="pull-right">
                      
                      <% if (farmer.getCivil_status()== 0) {%>
                      N/A
                      <% }
                       else if (farmer.getCivil_status() ==1){ %>
                      Married
                  <% }
                       else if (farmer.getCivil_status() ==2){ %>
                      Separated
                 <% }
                       else if (farmer.getCivil_status() ==3){ %>
                     Widowed
                  
                  <% } %></a>
                </li>
                <li class="list-group-item">
                  <b>Address</b> <a class="pull-right"><%= farmer.getAddress() %></a>
                </li>
              </ul>
              
              <% } %>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
<div class="box box-primary">
            
            <!-- /.box-header -->
            <div class="box-body no-padding">
                <div class="box-header with-border">
              <h3 class="box-title">Farms</h3>
            </div>
              <ul class="nav nav-pills nav-stacked">

                <% ArrayList<Farmer> farms = (ArrayList<Farmer>)session.getAttribute("farms"); 
                if (farms!=null){
                    for (int i =0; i < farms.size(); i++)
                    {
                        %>
                        <li class="GetFarmInfo farms"><a href="#"><%= farms.get(i) %></a> </li>
             <%        
                    }
   } 
             %>
              </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- About Me Box -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Farm Name</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body" id="FarmInfo">
<% Farmer farmsd = (Farmer)session.getAttribute("farmsd"); 
                if (farmsd!=null){
                    %>                               
              <strong><i class="fa fa-map-marker margin-r-5"></i> Location</strong>
              <p class="text-muted"><%= farmsd.getAddress() %></p>
              <hr>
              <strong>Area</strong>
              <p><%= farmsd.getArea_harveted() %></p>
               <hr>
             <strong>Tons Cane Produced</strong>
              <p><%= farmsd.getTons_cane() %></p>
               <hr>
              <strong>Avg. Produced</strong>
              <p><%= farmsd.getLkg() %></p>             
              <hr>
              <strong><i class="fa fa-file-text-o margin-r-5"></i> Notes</strong>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>
              <% }%>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
            
        <!-- /.col -->
        <div class="col-md-4">
            <div class="box box-info">
            <div class="box-header with-border ">
   <h3 class="box-title">Farm Map</h3>
    <div class="box-tools pull-right">
      <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
      <!-- In box-tools add this button if you intend to use the contacts pane -->
      <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
    </div>
  </div><!-- /.box-header -->
	  <div class="box-body">
	 
          <div id="map"></div>
          <hr>
	  </div>
	  </div>
          <!-- /.nav-tabs-custom -->
          
        </div>
        
        
        <!-- /.col -->
        <div class="col-md-4">
          <div class="box">
	  <div class="box-body">
	  <h3 class="box-title">Farm Site Pic</h3>
          <div>
               <img src="dist/img/user2-160x160.jpg" style="height: 250 px ; width: 300 px">
          </div>
          <hr>

	  </div>
	  </div>
          <!-- /.nav-tabs-custom -->
        </div>
        
         <div class="col-md-9">
          <!-- LINE CHART -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">#Details</h3>

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
                  <td>John Doe</td>
				<td>1.23</td>
                  <td>35%</td>
				  <td> 
                                      <div class="progress-group">
                                         <span class="progress-number"><b>90 %</b></span>
                                         <div class="progress sm">
                                     <div class="progress-bar progress-bar-green" style="width: 80%"></div>
                                        </div>
                                        </div> <!-- closer of progress bars -->  
                                  </td>
				   <td>tpeh31</td>
				   <td>3%</td>
				  <td>77%</td>
				  <td>detailsbtn</td>
                </tr>
				
                <tr>
                  <td href="">henry ford</td>
					<td>1.23</td>
                  <td>80%</td>
                  <td>
                      <div class="progress-group">
                          <span class="progress-number"><b>20 %</b></span>

                                         <div class="progress sm">
                                     <div class="progress-bar progress-bar-danger" style="width: 20%"></div>
                                        </div>
                                        </div> <!-- closer of progress bars -->  
                  </td>
				   <td>TPEH43</td>
				   <td>3%</td>
				  <td>77%</td>
				  <td>detailsbtn</td>
                </tr>
                <tr>
                  
                <td href="">Michael Johnathan</td>
				<td>1.23</td>
                  <td>80%</td>
				   <td><div class="progress-group">
                                           <span class="progress-number"><b>40 %</b></span>

                                         <div class="progress sm">
                                     <div class="progress-bar progress-bar-warning" style="width: 40%"></div>
                                        </div>
                                        </div> <!-- closer of progress bars -->  </td>
				   <td>TPEH43</td>
				   <td>3%</td>
				  <td>77%</td>
				  <td>detailsbtn</td>
                </tr>
                <tr>
                <td href="">Danny Frisk</td>
				<td>1.23</td>
                  <td>80%</td>
                  <td>
                      <div class="progress-group">
                          <span class="progress-number"><b>80 %</b></span>

                                         <div class="progress sm">
                                     <div class="progress-bar progress-bar-green" style="width: 80%"></div>
                                        </div>
                                        </div> <!-- closer of progress bars -->  
                  </td>
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
         <!-- /.box-1body -->  
                <!-- closer of farm details -->
        <!-- /.col -->
      </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

 
</div>
<!-- ./wrapper -->
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<script>
    $(document).ready(function (){
       $("li.GetFarmInfo").click(function (){
       
    
                      var FarmName = $(this).find("a").text();
                      
                      $.getJSON('ViewFarmInfo',{"FarmName":FarmName,
                       function(resp){
                          $('#FarmInfo').empty().load(document.URL +  ' #FarmInfo').load(document.URL +  ' #FarmInfo');
                       }
        });
    });
       
       
   });
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBLocM7SW5TFCiHY1Fn3o5ImYysz8gLkgo"></script>
<script>
         var triangleCoords;
         var bermudaTriangle;
         var latCenter;
         var lngCenter;
     $(document).ready(function () {
         
         
         $("li.farms").click(function () {
             
             $.getJSON('GetFarmDetails', {'farm_name':$(this).find("a").text()},
             
             function(resp){
                      $.each(resp, function (i, Farm) {
                          if (i === 'boundaries'){
              triangleCoords = JSON.parse(Farm);
         bermudaTriangle = new google.maps.Polygon({
          paths: triangleCoords,
          strokeColor: '#FF0000',
          strokeOpacity: 0.8,
          strokeWeight: 2,
          fillColor: '#FF0000',
          fillOpacity: 0.35
        });
    }        
    if (i ==='latCenter'){
        latCenter = Farm;
    }
    if (i ==='lngCenter'){
        lngCenter = Farm;
    }
          });
          
          initMap();
                      
                 
             }
                     );
             
        });
     
    });
    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: {lat: latCenter, lng: lngCenter},
          mapTypeId: google.maps.MapTypeId.TERRAIN
        });

        // Define the LatLng coordinates for the polygon's path.
        
         

        // Construct the polygon.
        bermudaTriangle.setMap(map);
      }
   
    
</script>
</body>
</html>
