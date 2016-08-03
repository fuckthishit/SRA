
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
  <link rel="stylesheet" href="plugins/timepicker/bootstrap-timepicker.min.css">
    <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
     <link rel="stylesheet" href="plugins/timepicker/bootstrap-timepicker.min.css">
      <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
      <link rel="stylesheet" href="plugins/bootstraptable/bootstrap-table.css">
       <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
      <link type="text/css" href="plugins/datatable/dataTables.checkboxes.css" rel="stylesheet" />
      

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
        Create New Project
        <small>Pampanga Mill District</small> 
      </h1>
   
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Your Page Content Here -->
	  <div class="row">
             <%String y=(String)session.getAttribute("jsonlist");
             
           
             %> 
              
              
              
              <div class="col-md-6">
	  <div class="box box-solid box-success">
	  <div class="box-header with-border">
	  <h3 class="box-title">Project Details</h3>
	  </div>
	  <br>
	  <div class="box-body">
              <div class="form-group">
                  <label for="projectname" class="control-label">Project Name:</label>
                 <input type="text" class="form-control" id="projectname" placeholder="Name...">
                </div>
              <div  class="form-group">
                <label class="control-label" for="datepicker" >Date Start:</label>
                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control pull-right datepicker" id="datepicker">
                </div>
                <!-- /.input group -->
              </div>
              <div  class="form-group">
                <label class="control-label" for="datepicker" >Date End:</label>
                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control pull-right datepicker" id="datepicker">
                </div>
                <!-- /.input group -->
              </div>
              <div class="form-group">
                  <label for="projectname" class="control-label">Expected Improvement</label>
              <input type="number" class="form-control" id="projectname" placeholder="Yield || % ????">
               </div>
               <div class="form-group">
                  <label>Description</label>
                  <textarea class="form-control" name="Description" rows="2"  placeholder="Enter ..."></textarea>
                </div>
	  <div class="form-group">
                  <label>Fertilizer</label>
                  <select class="form-control">
                    <option>Fertilizer 1</option>
                    <option>Fertilizer 2</option>
                    <option>Fertilizer 3</option>
                    <option>Fertilizer 4</option>
                    <option>Fertilizer 5</option>
                  </select>
                </div>
		<button class="btn btn-sm btn-info btn-flat pull-left">Submit</button>
	  </div>
	  </div>
	  </div>
              
              
              
              
              
              
	  <div class="col-md-3">
	  <div ><label>Select By:</label></div>
           <select class="form-control"><option>Municipality</option>
      <option>Barangay</option>
     <option>Farmer</option>
        <option>Farm</option></select></div>
	 
          
               <div class="col-md-6">
	  <div class="box box-solid box-info">
	  <div class="box-header with-border">
	  <h3 class="box-title">Table</h3>
	  </div>
	  <br>
	  <div class="box-body">
              <table id="table" data-toggle="table" data-search="true" data-click-to-select="true">
                  <thead>
                  <tr>
                  <th data-field="state" data-checkbox="true"></th>
                  <th data-field="farm_name">id</th>
                  <th data-field="owner">name</th>
                  <th data-field="barangay">price</th>
                  </tr>    
                  </thead>
                      </table>
              
             </div>
          </div>
                   </div>
               <form id="frm-example" action="CreateNewProject">
              <div class="col-md-8">
	  <div class="box box-solid box-info">
	  <div class="box-header with-border">
	  <h3 class="box-title">List of Farms</h3>
	  </div>
	  <br>
	  <div class="box-body">
              <table id="example" class="table  display table-hover" cellspacing="0" width="100%">
   <thead>
      <tr>
          <th><input name="select_all" value="1" id="example-select-all" type="checkbox" /></th>
         <th>Farm Name</th>
         <th>Owner</th>
         <th>Barangay</th>
         
      </tr>
   </thead>
   <tfoot>
      <tr>
         <th></th>
         <th>Farm Name</th>
         <th>Owner</th>
         <th>Barangay</th>
    
      </tr>
   </tfoot>
</table>
              
             </div>
          </div>
                   </div>
<div class="col-md-5">                   
<p><button class="btn btn-success" value="submit">Submit</button></p>

<p><b>Selected rows data:</b></p>
<pre id="example-console-rows"></pre>

<p><b>Form data as submitted to the server:</b></p>
<pre id="example-console-form"></pre>
</div>


                   </form>
	<!-- <div class="col-md-1"><label>Barangay</label></div>
         
          <div class="col-md-2"><select class="form-control" id="brgyname" name="brgyname">
					<option value="0">Select Brgy.</option> 
       
     </select></div>
  -->
   
	
          <!-- /.box -->
	
       
          <!-- BAR CHART -->
        
	 
          <!-- BAR CHART -->
		 </section> 
     </div>
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

<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.2.0 -->
<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<script src="dist/js/app.min.js"></script>

<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->




<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="plugins/datatable/dataTables.checkboxes.min.js"></script>

<!-- ChartJS 1.0.1 -->
<script src="plugins/chartjs/Chart.min.js"></script>
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="plugins/bootstraptable/bootstrap-table.js"></script>

    <script>
        $('#table').bootstrapTable({
             url: 'JSON/data.json'
});
        </script>
        <script>
    $(function () {
       $('.datepicker').datepicker({
      autoclose: true
    });
        
        
    });
    </script>
        <script>
            
            $(document).ready(function() {
        var rows_selected = [];
                  
   var table = $('#example').DataTable({
      'ajax': {
          'url':'CreateNewProjectTest'
      },
     'columnDefs': [{
         'targets': 0,
       
         'searchable':false,
         'orderable':false,
         'className': 'dt-body-center',
         'render': function (data,type,full,meta){
             return '<input type="checkbox" name="id" id="buttonClick" value="' 
                + $('<div/>').text(data).html() + '">';
         } 
      }],
      'select': {
         'style': 'multi'
      },
      'order': [[1, 'asc']],
       'rowCallback': function(row, data, dataIndex){
         // Get row ID
       var rowId = data[0];
       // alert(rowId);
         // If row ID is in the list of selected row IDs
         if($.inArray(rowId, rows_selected) !== -1){
            $(row).find('input[type="checkbox"]').prop('checked', true);
            $(row).addClass('selected');
         }
      }
      
      
   });
  
   // Handle form submission event 
   
   
      $('#frm-example').on('submit', function(){
          alert();
      var form = this;
       
      // Iterate over all selected checkboxes
      $.each(rows_selected, function(index, rowId){
        
        alert(rowId);
         // Create a hidden element 
         $(form).append(
             $('<input>')
                .attr('type', 'hidden')
                .attr('name', rows_selected)
                .val(rowId)
         );
      });
   });
   
    $('#example-select-all').on('click', function(){
      // Check/uncheck all checkboxes in the table
      var rows = table.rows({ 'search': 'applied' }).nodes();
      $('input[type="checkbox"]', rows).prop('checked', this.checked);
    
        alert(rows);
   });
   
    $('#buttonClick').on('click', function(){
      // Check/uncheck all checkboxes in the table
      
      alert(rowId);
    
   });
   
   
});

$(document).on("click", function () {
       $('[id="buttonClick"]:checked').each(function (e) {
          
        });
   });
           </script>
           
           <script>
               
               
               
               
               </script>
  
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
