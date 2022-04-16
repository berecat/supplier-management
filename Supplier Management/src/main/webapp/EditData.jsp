<%@page import="sms.model.crud"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sms.db.Supplier"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<style>
body {
	background-color: beige;
	height: 100%;
	overflow-x: hidden;
	overflow-y: hidden;
	
</style>



</head>
<body>


<% 

int i=0;
ArrayList<Supplier> allSuppliers= crud.getAllRecords();

for(Supplier s1:allSuppliers)
	
{
	int x =Integer.parseInt(request.getParameter("sup"));
	
	if(x==s1.getSupplierID())
	
{
		

%>




<form action="Editnow.jsp" style="margin-top: 10%; margin-left: 20%;" >
	
	
	
	
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-2 col-form-label"
				style="left: 3%;">Supplier ID</label>
			<div class="col-sm-10">
				<input readonly type="number" class="form-control" id="inputEmail3"
					value='<%=s1.getSupplierID() %>' style="width: 50%;" name="supplierId" >
			</div>
		</div>
	
	
	
	<div class="form-group row">
			<label for="inputEmail3" class="col-sm-2 col-form-label"
				style="left: 3%;">Supplier Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputEmail3"
					value='<%=s1.getSupplierName()%>'  style="width: 50%;" name="supplierName">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-2 col-form-label"
				style="left: 3%;">Email</label>
			<div class="col-sm-10">
				<input type="email" class="form-control" id="inputEmail3"
					value='<%=s1.getEmail()%>' style="width: 50%;" name="email">
			</div>
		</div>
		
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-2 col-form-label"
				style="left: 3%;">Address</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputEmail3"
					value='<%=s1.getAddress()%>'style="width: 50%;" name="address">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-2 col-form-label"
				style="left: 3%;">Contact No.</label>
			<div class="col-sm-10">
				<input type="tel" class="form-control" id="inputEmail3"
					value='0<%=s1.getContact()%>' style="width: 50%;" pattern="^\d{10}$"
				name="contact">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-2 col-form-label"
				style="left: 3%;">Supplier Item</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputEmail3"
					value='<%=s1.getitem()%>' style="width: 50%;" name="item">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-2 col-form-label"
				style="left: 3%;">Quantity</label>
			<div class="col-sm-10">
				<input type="number" class="form-control" id="inputEmail3"
					value='<%=s1.getQuantitiy()%>' style="width: 50%;" name="quantity">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-2 col-form-label"
				style="left: 3%;">Price(Rs.)</label>
			<div class="col-sm-10">
				<input type="number" class="form-control" id="inputEmail3"
					value='<%=s1.getPrice()%>0'  style="width: 50%;" name="price">
			</div>
		</div>
		
	<div class="form-group row">
			<label for="inputEmail3" class="col-sm-2 col-form-label"
				style="left: 3%;">Date</label>
			<div class="col-sm-10">
				<input type="date" class="form-control" id="inputEmail3"
					value='<%=s1.getDate()%>' style="width: 50%;" name="date"disabled>
			</div>
		</div>
		<br>
		




		<div class="form-group row" style="margin-left: 30%;">
			<div class="col-sm-10">
				<button type="submit" id="close-btn1" class="btn btn-primary" onclick="window.parent.closeModal();">UPDATE</button>
			</div>
		</div>
	</form>
	

	
	<%
	}
}
	%>


	
	
</body>
</html>