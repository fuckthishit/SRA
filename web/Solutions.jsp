
<%@page import="db.RecommendationDB"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Projects"%>
<%@page import="entity.Problems"%>
<%@include file="security.jsp"%>

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
        Solutions (ADD SECTION THAT SHOWS FARMER/FARMS LIST THAT ENCOUNTER THE PROBLEM?)
        <small>Pampanga Mill District</small> 
      </h1>
   
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Your Page Content Here -->
	  <div class="row">
	  <div class="col-md-2">
	  
	  </div>
              <%Problems problem=(Problems) session.getAttribute("problem");
              
              
              
              %>
              <form action="ViewProblem">
	  <div class="col-md-1"><label>Problems</label></div><div class="col-md-4"><select class="form-control" id="id" name="id" onchange="this.form.submit()">
											
	
	  <% ArrayList<Problems> problems =  new RecommendationDB().viewProblemList();
                                        if (problems != null){
                                            for (int i = 0; i < problems.size(); i++) {
          if(problem.getProblemId()==problems.get(i).getProblemId()){
               %>
                   <option  value="<%= problems.get(i).getProblemId()%>"  selected><%= problems.get(i).getName()%></option>
                                            
          <% }else{ %>
                   <option value="<%= problems.get(i).getProblemId()%>" ><%= problems.get(i).getName()%></option>
                  <%                           
                  }
                                            }
          %>
                                            
                                            
                                            <% } %>
	 </select>
	  </div>
         </form>
   <br>
   <%
   
   if(problem!=null){
       %>
   
   <div class="col-md-6 ">
       <br>
          <!-- LINE CHART -->
          <div class="box box-success">
            <div class="box-header with-border probiz">
                <h3 class="box-title hidden" id="problemid"> <%=problem.getProblemId()%> </h3>
                 <h3 class="box-title"> <b> <%=problem.getName() %></b> </h3>
    </div>
            <div class="box-body">
          <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tbody><tr>
                  <th>Status</th>
                  <th>Yield</th>    
                  <th>Description</th>
                </tr>
                <tr>
                    <% 
              if (problem.getStatus().equals("A")){
              %>
            <td>  <span class="label label-success">Approved</span></td>
              <% } 
              else if (problem.getStatus().equals("P")){
              %>
               <td>  <span class="label label-warning">Pending</span></td>
             
              <% } 
               else if (problem.getStatus().equals("O")){
              %>
               <td>  <span class="label label-primary">On Going</span></td>
                <% }
              else {
              %>
               <td>  <span class="label label-danger">Denied</span></td>
               
              <% } %>
                    <td> <%=problem.getYield() %></td>
                    <td> <%=problem.getDescription() %></td>
			
                </tr>
               
              </tbody></table>
            </div>
           
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
</div>
   
   
   
   
   
   <%
       
   }
   
   %>
   
	<div class="col-md-12">
          <!-- LINE CHART -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Accepted Solution</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
                
             <div class="box-body table-responsive no-padding">
              <table class="table table-hover" id="ASolTable">
                  
                  <tbody ><tr>
                         <th>ID</th>
                  <th>Name</th>
                  <th>Status</th>
				  <th>Description</th>
				 
				  <th>remove button</th>
                 
                </tr>
                <%
   ArrayList<Projects> accProj=(ArrayList<Projects>) session.getAttribute("acceptedProjects");
   if(accProj!=null){
       for(int c=0; c<accProj.size();c++){
           
       %>
                
       <tr>
           <td  id="pogi"><%=accProj.get(c).getProject_num() %></td>
                  <td><a href="ViewProject?id=<%= accProj.get(c).getProject_num()%>"><%=accProj.get(c).getName() %></a></td>
                   <% 
              if (accProj.get(c).getStatus().equalsIgnoreCase("a")){
              %>
            <td>  <span class="label label-success">Approved</span></td>
              <% } 
              else if (accProj.get(c).getStatus().equalsIgnoreCase("P")){
              %>
               <td>  <span class="label label-warning">Pending</span></td>
             
              <% } 
               else if (accProj.get(c).getStatus().equalsIgnoreCase("O")){
              %>
               <td>  <span class="label label-primary">On Going</span></td>
                <% }
              else {
              %>
               <td>  <span class="label label-danger">Denied</span></td>
               
              <% } %>
                  <td><%=accProj.get(c).getDescription() %></td>
				 
                  <td><input class="btn btn-danger btn-sm pull-left" readonly="" onclick="deleteOtherRow(this,'<%=accProj.get(c).getProject_num()%>',0)" value="Delete"></td>
                
       </tr>     
                
                
                
                
                <%
       }
   }
       %>
                
               
              </tbody></table>
            </div>
            </div>
            <!-- /.box-body -->
          </div>
		  </div>
          <!-- /.box -->
	
          <div class="col-md-12">
          <!-- LINE CHART -->
          
          <div class="box box-info ">
            <div class="box-header with-border">
              <h3 class="box-title">Practices, Plans and Programs</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
             <div class="box-body table-responsive no-padding acsol">
              <table class="table table-hover" >
                <tbody id="SolTable"><tr>
                        <th>ID</th>
                  <th>Name</th>
                  <th>Status</th>
				  <th>Description</th>
				  
				  <th></th>
                 
                </tr>
                    <%
   ArrayList<Projects> allProj=(ArrayList<Projects>) session.getAttribute("allProjects");
   if(allProj!=null){
       
    
       for(int d=0; d<allProj.size();d++){
        
        %>
            <tr>
                <td><a href=""><%=allProj.get(d).getProject_num()%></a></td>
                  <td><a href="ViewProject?id=<%=allProj.get(d).getProject_num()%>"><%=allProj.get(d).getName()%></a></td>
                  
                  
                       <% 
              if (allProj.get(d).getStatus().equals("A")){
              %>
            <td>  <span class="label label-success">Approved</span></td>
              <% } 
              else if (allProj.get(d).getStatus().equals("P")){
              %>
               <td>  <span class="label label-warning">Pending</span></td>
             
              <% } 
               else if (allProj.get(d).getStatus().equals("O")){
              %>
               <td>  <span class="label label-primary">On Going</span></td>
                <% }
              else {
              %>
               <td>  <span class="label label-danger">Denied</span></td>
               
              <% } %>
              
              <td><%=allProj.get(d).getDescription()%></td>
				
                <td><input class="btn btn-success btn-sm pull-left" readonly="" onclick="deleteOtherRow(this,'<%=allProj.get(d).getProject_num()%>',1)" value="Add"></td>
                 
                </tr>
                
          
          
          
          <%
       }
       
       }
       
       
       
   
       %>
                
              </tbody></table>
			  <div class="box-footer clearfix">
              <a href="javascript:void(0)" class="btn btn-sm btn-info btn-flat">Create New Plans</a>
			  </div>
            </div>
            </div>
            <!-- /.box-body -->
          </div>
		  </div>
          <!-- BAR CHART -->
        
	 
          <!-- BAR CHART -->
		 </section> 
     </div>
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
    // ALMOST MADE THIS CODE WORK ~~~~~~~~~~~~~~
    function deleteRow(row,id,name,status,desc,type)
{var c=type;
 
    var i=row.parentNode.parentNode.rowIndex;
    alert(i+name+" "+status+" "+desc+" "+type);
      var idprob = $(".probiz").find("#problemid").text();
      var x;
      if(type==0){ x=document.getElementById('SolTable');}
          else{  x=document.getElementById('ASolTable');}
       
         var new_row=x.rows[1].cloneNode(true);
           new_row.cells[0].innerHTML=i;
           new_row.cells[1].innerHTML="<td><a href='ViewProject?id="+i+">"+ name +"</a></td>";
           
              if (status=="A"){
          
          new_row.cells[2].innerHTML="<td>  <span class='label label-success'>On Going</span></td>";
            } 
              else if (status=="P"){
       
            new_row.cells[2].innerHTML="<td>  <span class='label label-warning'>On Going</span></td>";
             
         
            } else if (status=="O"){
           
                 new_row.cells[2].innerHTML="<td>  <span class='label label-primary'>On Going</span></td>";
             }
              else {
             alert("problem with getting status");
              new_row.cells[2].innerHTML="<td><span class='label label-danger'>Denied</span></td>";
               
              } 
        
           new_row.cells[3].innerHTML=desc;
      
      
      
      if(c == 0){  
        
            new_row.cells[4].innerHTML="<td><input class='btn btn-success btn-sm' readonly=''onclick='deleteRow(this,"+id+","+name+","+status+","+desc+","+ 0+")'value='Add'></td>";
       
           $.getJSON('ViewAcceptedSolution',{"rowid":id, "probid":idprob });
            x.appendChild(new_row);
             document.getElementById('ASolTable').deleteRow(i);
         
      }else if(c == 1){
           new_row.cells[4].innerHTML="<td><input class='btn btn-danger btn-sm pull-left' readonly='' onclick='deleteRow(this,"+id+","+name+","+status+","+desc+","+ 0+")' value='Delete'></td>";
           
         $.getJSON('ViewAllSolution',{"rowid":id, "probid":idprob});
         x.appendChild(new_row);
        document.getElementById('SolTable').deleteRow(i); 
  
      }
      
   
}

</script>
<script>
    function showProb(id){
        alert("id"+ id);
          var b= window.location="ViewProblem?id="+id;
         b.reload();
     
        
    }
    
</script>

<script>
    
    function deleteOtherRow(row,id,type)
{
  var c=type;
    var i=row.parentNode.parentNode.rowIndex;
       alert("row"+row+"type"+ type);
      var idprob = $(".probiz").find("#problemid").text();
      if(c == 0){  
           $.getJSON('ViewAcceptedSolution',{"rowid":id, "probid":idprob });
    document.getElementById('ASolTable').deleteRow(i);
      }else if(c == 1){
         $.getJSON('ViewAllSolution',{"rowid":id, "probid":idprob});
        document.getElementById('SolTable').deleteRow(i); 
          
      }
         window.location.reload(3);
  
}
 
</script>



<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
</body>
</html>
