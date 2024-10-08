<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View Transport</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<link rel="stylesheet" href="css/universal_style.css">
   <link rel="stylesheet" href="css/dashboard.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     
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
	
	<div class="container" style="text-align:center; padding-top: 10px;">
	
		<div class="row">
			<div class="col-sm-6">
				<form action="VehicleController" method="get" class="form-horizontal" style="padding: 10px 0 10px 0;">
					<div class="input-group">
						<input type="hidden" class="form-control" name="COMMAND" value="SEARCH"/>			    
						<input type="text" class="form-control" placeholder="Search" name="theSearchName">
						<div class="input-group-append">
							<c:url var="searchLink" value="VehicleController">
								<c:param name="COMMAND" value="SEARCH"/>
							</c:url>
							<button type="submit" class="btn btn-success" value="Search"><a href="${searchLink}" style="color: #ffffff; text-decoration: none;">Go</a></button> 
						</div>
					</div>
				</form>	
			</div>
			
			<div class="col-sm-6" style="padding: 10px 15px 10px 15px;">
				<c:url var="checkLink" value="VehicleController">
					<c:param name="COMMAND" value="CHECK"/>
				</c:url>
				<a href="${checkLink}" class="btn btn-success btn-block">Book Transport</a>
			</div>
		</div>  
	  	
	    <br>
		
		<div class="table-responsive">
			<table id="tab-01" class="table table-striped table-hover">
				<thead style="background-color: #007bff; color:#ffffff;">
					<tr>
						<th>Vehicle Name</th>			
						<th>Vehicle Number</th>
						<th>Facilities</th>
						
						<th>Cost</th>					
						<th>Vehicle Type</th>
						
						<th>Action</th>
						
						
					</tr>
				</thead>
				
				<tbody>
				
					<c:forEach var="tempItem" items="${ VEHICLE_LIST }">
						<c:url var="updateLink" value="VehicleController">
							<c:param name="COMMAND" value="LOAD"/>
							<c:param name="id" value="${tempItem.id}"/>
						</c:url>
						<c:url var="deleteLink" value="VehicleController">
							<c:param name="COMMAND" value="DELETE"/>
							<c:param name="id" value="${tempItem.id}"/>
						</c:url>
						<tr>
							<td> ${tempItem.vehicleName} </td>
							<td> ${tempItem.vehicleNumber} </td>
							<td> ${tempItem.facilities} </td>						
							
							<td> ${tempItem.cost} </td>
							<td> ${tempItem.vehicleType} </td>
							
							
							<td>
								<a href="${updateLink}" style="color:green;">Update</a>
								|
								<a href="${deleteLink}" style="color:red;">Delete</a>
							</td>
							
						</tr>
					</c:forEach>
				</tbody>

				</table>
				</div>
				
				<br><br>
			</div>
		<button type="button" id="btnExport" class="btn btn-primary" Style="float:right">Report</button>
				<a href="admin-add-new-transport.jsp"> <button type="button" class="btn btn-primary" Style="float:left">Add Book</button></a>
     
    </div>

  </section>
  
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
    <script type="text/javascript">
        $("body").on("click", "#btnExport", function () {
            html2canvas($('#tab-01')[0], {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("Booked-Transport-details.pdf");
                }
            });
        });
    </script>
  

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