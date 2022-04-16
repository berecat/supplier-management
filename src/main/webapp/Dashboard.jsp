<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="sms.model.crud"%>
<%@page import="sms.db.Supplier"%>
<%@page import="java.util.ArrayList"%>



<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">




<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
	integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
	crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>



<title>Home</title>

<style>
@import url("css/Admin_header.css");
@import url("css/Admin_footer.css");


</style>

</head>

<body>
	<header>
		<div class="header-row" id="myHeader">
			<div class="col-2 logo-container nav-com">
				<div class="logo">
					<a href="#Home"><img src="logo.png" alt="Girl in a jacket"
						width="120px" height="120px"></a>

				</div>
			</div>
			<div class="col-2 nav nav-com">
				<ul>
					<li class="li-com"><a href="#Home">Home</a></li>
				</ul>
			</div>

			<div class="col-6 nav nav-com">
				<div class="wrap">
					<div class="search">
						<input type="text" class="searchTerm"
							placeholder="What are you looking for?">
						<button type="submit" class="searchButton">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
			</div>



			<div class="col-1 nav nav-com">

				<div class="admin-tag" data-toggle="tooltip" data-placement="top"
					title="Admin Online">Admin</div>
				<div class="admin-active" data-toggle="tooltip" data-placement="top"
					title="Admin Online"></div>
			</div>
		</div>
	</header>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<marquee direction="side" id="H1" behavior="alternate">Supplier
		Dashboard!!!</marquee>
	<br>
	<br>


	<!----------------------------------- Body ----------------------------------->



	<table class="table table-dark table-bordered" style="margin-left: 0%;">



		<thead style="color: bisque;">


			<tr>
				<th>Supplier ID</th>
				<th>Supplier Name</th>
				<th>Email</th>
				<th>Address</th>
				<th>Contact No.</th>
				<th>Supplier Item</th>
				<th>Quantity</th>
				<th>Price(for one)Rs.</th>
				<th>Sub Amount(Total)</th>
				<th>Date</th>
				<th>Actions</th>
			</tr>
			
			
		</thead>
		<tr>
		
		<%
		int i=0;
		 ArrayList<Supplier> allsuppliers = crud.getAllRecords();
		
		for(Supplier s1 : allsuppliers)
		{
		
		%>
		
		<tbody>
			<tr>
			<td><%=s1.getSupplierID()%></td>
			<td><%=s1.getSupplierName() %></td>
			<td><%=s1.getEmail()%></td>
			<td><%=s1.getAddress() %></td>
			<td>0<%=s1.getContact() %></td>
			<td><%=s1.getitem() %></td>
			<td><%=s1.getQuantitiy() %></td>
			<td><%=s1.getPrice() %>0</td>
			<td><%=s1.getSubamount() %>0</td>
			<td><%=s1.getDate() %></td>
				<td>
				<a href="#" data-toggle="modal" data-target="#exampleModal1"data-href="EditData.jsp?sup=<%=s1.getSupplierID()%>" class="showModal" id="popup-btn" data-backdrop="static" data-keyboard="false">	<i  class='far fa-edit fa-2x'></i></a> &nbsp
				<a href="#" data-toggle="modal" data-target="#deletemodal"data-href="DeleteData.jsp?del=<%=s1.getSupplierID()%>" class="showModal1" ><i style="color:crimson;"  class='fas fa-trash-alt fa-2x'></i></a> &nbsp
				
				
	
			
				</td>			
				
				</tr>
			
			
				
		</tbody>
		

    <div id="deletemodal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document" style="width: 200% !important;">
            <div class="modal-content border-0" style="width: 200% !important ; left: -50%;">
                <div class="modal-body p-0" style="width: 180% !important;">
                    <div class="card border-0 p-sm-3 p-2 justify-content-center">
                        <div class="card-header pb-0 bg-white border-0 ">
                            <div class="row">
                                <div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>
                            </div>
                            <p class="font-weight-bold mb-2" style="font-size:40px"> Are you sure you wanna delete this ?</p>
                            <p class="text-muted " style="font-size:20px" > Record Will Move to Delete Records!!!</p>
                        </div>
                        <div class="card-body px-sm-4 mb-2 pt-1 pb-0">
                            <div class="row justify-content-end no-gutters">
                                
                               <div><button type="button" class="btn btn-light text-muted" data-dismiss="modal"  style="font-size:25px">Cancel</button></div>&nbsp&nbsp
                               <div><a href="DeleteData.jsp?del=<%=s1.getSupplierID()%>" class="btn btn-danger"  style="font-size:25px">Delete</a></div>&nbsp
                                
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	
	
		<script>
	
	$(document).ready(function() {
		  $(".showModal1").click(function(e) {       //delete modal data bind
		    e.preventDefault();
		    var url = $(this).attr("data-href");
		    $("#deletemodal a").attr("href", url);
		    $("deletemodal").modal("show");
		  });
		});

</script>
	


		
		
		
			<style>
iframe {
	height: 100%;
	

	

}
</style>


		
		
		
			<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog"
		aria-labelledby="example" aria-hidden="true">
		<div class="modal-dialog" role="document"
			style="width: 200%; height: 120% !important;">
			<div class="modal-content"
				style="width: 200%; height: 70% !important; left: -50%;">                   
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Edit Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"style="color: black;" id ="close-btn"><i class="fa fa-window-close" aria-hidden="true"></i>
					</button>
				</div>


				<iframe src="EditData.jsp?sup=<%=s1.getSupplierID()%>" frameborder="0"></iframe>
			</div>
		</div>

	</div>
	
				<script>
	// Attach event listener to open popup
    document.getElementById(
'popup-btn').addEventListener('click', (e)=>{
        document.getElementById(
'exampleModal1').style.visibility = "visible";								//Edit Data Window Refresh
    })

//Attach event listener to first close popup and then refresh page
    document.getElementById(
'close-btn').addEventListener('click', (e) => {
        document.getElementById(
'exampleModal1').style.visibility = "hidden";
        window.location.reload();
        
      
        
        
    });
	

</script>
	

		<script>
	
	$(document).ready(function() {
		  $(".showModal").click(function(e) {
		    e.preventDefault();
		    var url = $(this).attr("data-href");						//Edit Window Data Bind
		    $("#exampleModal1 iframe").attr("src", url);
		    $("exampleModal1").modal("show");
		  });
		});

</script>
	



	

	

		<%
		}
		%>
		
		
		
	</table>
	<button class="btn btn-warning" style="width: 96px; margin-left: 2%;">
		Report &nbsp<i class="fa fa-server"></i>
	</button>
	<a href="DeletedRecords.jsp" class="btn btn-info" style="width: 180px; margin-left: 2%;">
		Deleted Records &nbsp <i class="fa fa-recycle"></i>
	</a>

	<style>
iframe {
	height: 100%;
	
	

	


	

}
</style>







	


	<button class="btn btn-success" data-target="#exampleModal"
		data-toggle="modal"
		style="position:absolute; width: 100px; right: 2%;"id="popup-btn1" data-backdrop="static" data-keyboard="false">
		Add &nbsp<i class="fa fa-user-plus"></i>
	</button>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document"
			style="width: 200%; height: 100% !important;">
			<div class="modal-content"
				style="width: 200%; height: 80% !important; left: -50%;">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" id ="close-btn1">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>


				<iframe src="AddData.jsp" frameborder="0"></iframe>
			</div>
		</div>

	</div>
	
	
		<script>
	// Attach event listener to open popup
    document.getElementById(
'popup-btn1').addEventListener('click', (e)=>{
        document.getElementById(
'exampleModal').style.visibility = "visible";					//Add Data Window Refresh
    })

//Attach event listener to first close popup and then refresh page
    document.getElementById(
'close-btn1').addEventListener('click', (e) => {
        document.getElementById(
'exampleModal').style.visibility = "hidden";
        window.location.reload();
        
      
        
        
    });
	

</script>
	



 





	<br>
	<br>










	<br>
	<br>
	<br>
	<br>
	<br>
	<footer class="footer">
		<div class="container">
			<div class="row">
				Copyrights©
				<div id="demo" style="margin: 0px 8px 0px 8px;"></div>
				AUTOMART. All rights reserved
			</div>
		</div>
	</footer>





	<!----------------------------------------------- SCRIPT -------------------------------------------->
	<script>
		window.addEventListener("scroll", function () {
			var header = document.querySelector("header");
			header.classList.toggle("sticky", window.scrollY > 0);
		})



	</script>


</body>



</html>