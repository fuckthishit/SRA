
<header class="main-header">

    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><img src="res/sra-logo.png" width="50px"></img></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg">SRA	</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          
          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs"><%= user.getFirst_name() +" "+ user.getLast_name() %></span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  <%= user.getFirst_name() +" "+ user.getLast_name() %>
                  <small><%= user.getGroup() %></small>
                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-right">
                  <a href="Logout" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><%= user.getFirst_name() +" "+ user.getLast_name() %>
          </p>
              <small><%= user.getGroup() %></small>
        </div>
      </div>
        
        
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">
        <!-- Optionally, you can add icons to the links -->
        <li><a href="Homepage.jsp"><span>Home</span></a></li>
        <li><a href="GetFarmersList"><span>Farmer Assistance</span> </a></li>
        <li><a href="Farmer Details.jsp"><span>Farm Information</span></a></li>
        <li><a href="Farmer Recommendation.jsp"><span>Farmer Recommendation</span> </a></li>
         <li><a href="Weather Trends and Forecast.jsp"><span>Weather Trends and Forecast</span> </a></li>
        <li><a href="Disaster Survey.jsp"><span>Disaster Survey</span> </a></li>
        <li><a href="GetProjects"><span>Projects</span> </a></li>
        <li><a href="Simulation.jsp"><span>Simulation</span> </a></li>
        <li><a href="CropEstimate.jsp"><span>Crop Estimation</span> </a></li>
        <li><a href="Update Variables.jsp"><span>Update Variables</span> </a></li>
        <li><a href="ViewFarmerDropdown"><span>Comparison</span> </a></li>
       <!-- <li><a href="Solutions.jsp"><span>Solutions</span> </a></li>-->
        <li><a href="ViewThresholds"><span>Thresholds</span> </a></li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>
