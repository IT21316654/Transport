<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html lang="en" dir="ltr">

  <head>
  <title>Admin Add New Transport</title>
    <meta charset="UTF-8">
    <!--<title> Responsiive Admin Dashboard | CodingLab </title>-->
    <link rel="stylesheet" href="css/dashboard.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<link rel="stylesheet" href="css/universal_style.css">
   </head>
<body>
  <div class="sidebar">
    <div class="logo-details">
     
      <span class="logo_name" ></span>
    </div>
      <ul class="nav-links">
       
        <li>
          <a href="#">
            <span class="links_name"></span>
          </a>
        </li>
        <li>
          <a href="login.jsp">
            <span class="links_name"></span>
          </a>
        </li>
        <li>
            <span class="links_name"></span>
          </a>
        </li>
        <li>
          <a href="transport.home.jsp" >
            <span class="links_name"></span>
          </a>
        </li>
        <li>
            <span class="links_name"></span>
          </a>
        </li>
        <li>
          <a href="#">
            <span class="links_name"></span>
          </a>
        </li>
        <li>
          <a href="#">
            <span class="links_name"></span>
          </a>
        </li>
         <li>
            <span class="links_name"> </span>
          </a>
        </li>
        <li>
          <a href="#">
            <span class="links_name"></span>
          </a>
        </li>
        <li>
          <a href="#">
            <span class="links_name"></span>
          </a>
        </li>
		
        <li class="log_out">
          <a href="index.jsp">
            <span class="links_name"></span>
          </a>
        </li>
      </ul>
  </div>
  <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Dashboard</span>
      </div>
      <div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
      </div>
      <div class="profile-details">
        <img src="images/profile.png" alt="">
        <span class="admin_name">Hello!! Admin</span>
        
      </div>
    </nav>
    <br><br> <br><br>
<div class="container" style="max-width: 600px; max-height:630px; box-shadow: 5px 10px 18px #888888;">
		
		<br>
		
		<div>
			<form action="VehicleController" method="get">
			
			<input type="hidden" name="COMMAND" value="ADD">
				
			
				<div class="form-group">
					<label for="inputNumber">Vehicle Name: </label>
					<input type="text" id="inputName" name="vehicleName" placeholder="Vehicle Name" class="form-control" required="required">	
				</div>
				<div class="form-group">
					<label for="inputNumber">Vehicle Number: </label>
					<input type="text" id="inputNumber" name="vehicleNumber" placeholder="Vehicle Number" class="form-control" required="required">	
				</div>
				
				
				<div class="form-group">
					<label for="inputFacilities">Facilities: </label>
					<input type="text" id="Facilities" name="facilities" placeholder="Enter Vehicle Facilities" class="form-control" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputEmail">Cost Per Day: </label>
					<input type="text" id="Cost" name="cost" placeholder="Enter Cost" class="form-control" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputType">Vehicle Type: </label>
					<input type="text" id="inputype" name="vehicleType" placeholder="Enter Vehicle Type" class="form-control" required="required">
				</div>
				
				
		
				
					<br>
				
				
				<div class="row">
					<div class="col text-center">
						<input type="submit" value="Add" class="btn btn-success btn-block">
					</div>
				</div>
					
			</form>
			
			<br>
			<div style="text-align:center; margin-bottom: 20px;">
				
				<button  class="btn btn-link" type="submit"><a href="transport-home.jsp">Back to Home</a></button>
			</div>
			
			<br>
		</div>
		
	</div>
 
 
  

  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>

</body>
</html>

