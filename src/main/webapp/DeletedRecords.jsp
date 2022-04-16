<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="sms.model.crud"%>
<%@page import="sms.db.Supplier"%>
<%@page import="java.util.ArrayList"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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

	<marquee direction="side" id="H1" behavior="alternate">Deleted Records!!!</marquee>
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
				<th>Deleted Time</th>
			</tr>
			
			
		</thead>
		<tr>
		
		<%
		int i=0;
		
		ArrayList<Supplier> allsuppliers=crud.getAllDeletedRecords();
		for(Supplier s1:allsuppliers)
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
			<td><%=s1.getTime() %></td>
		
		<%
		}
		%>
		
		
		
		</tr>
		</tbody>
		
		
		
		
		
		
		
		
		
			
		
		
		
		
		
		
				
	</table>
	<a href="Dashboard.jsp" class="btn btn-primary" style="width: 140px; margin-left: 2%;">
		Dashboard &nbsp<i class="fa fa-server"></i>
	</a>





</body>
</html>