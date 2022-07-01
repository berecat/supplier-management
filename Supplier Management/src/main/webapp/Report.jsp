<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="sms.model.crud"%>
<%@page import="sms.db.Supplier"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.util.*" %>

<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



<style>
@import url("css/new.css");
@import url("css/Admin_footer.css");



</style>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body onload="fun1();fun2();">
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




		
			<div class="col-1 nav nav-com" style="margin-left: 45%">

				<div class="admin-tag" data-toggle="tooltip" data-placement="top"
					title="Admin Online">Admin</div>
				<div class="admin-active" data-toggle="tooltip" data-placement="top"
					title="Admin Online"></div>
			</div>
	</header>


	<marquee direction="side" id="H1" behavior="alternate">Report for Supplier Management !!!</marquee>
	<br>
	<br>


	<!----------------------------------- Body ----------------------------------->

	<a href="Dashboard.jsp" class="btn btn-primary" style="width: 140px; margin-left: 2%;">
		Dashboard &nbsp<i class="fa fa-server"></i>
	</a>



  
<div class="row " style="margin-top: 5%; margin-left:27%; position: absolute; z-index: -1">
  <div class="col-sm-6">
    <div class="card bg-success mb-3" style="width:310px;height:110px">
      <div class="card-body">
     <h2 style="text-align: center; color:black;">Total Expenditure</h2>
        <h3 style="text-align: center; color: bisque">Rs.<%=crud.getTotal() %>0</h3>
        
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card bg-success mb-3" style="width:310px;height:110px">
      <div class="card-body">
       <h2 style="text-align: center; color: black">Date Count</h2>
        <h3 style="text-align: center; color: bisque"><%=crud.getTotDates() %> Days</h3>
   
      </div>
    </div>
  </div>
</div>





<div style="margin-top: 14%">
<table class="table table-bordered table-dark " style="margin-left:12%; width: 70%">



		<thead style="color: bisque;">


			<tr>
	
				<th>Supplier Item</th>
				<th>Total Quantity</th>
				<th>Total Cost</th>
				<th>Item Count</th>
				
			</tr>
			
			
		</thead>
		<tr>
		
					
				<%
		int i=0;
		 ArrayList<Supplier> allsuppliers = crud.getItems();
		
		for(Supplier s1 : allsuppliers)
		{
		
		%>
			
			
		
	
		
		<tbody>
		<tr>
		<td><%=s1.getitem() %></td>
		<td><%=s1.getTotalQuantity()%></td>
		<td><%=s1.getSubtotal() %>0</td>
		<td><%=s1.getCount() %></td>
		<tr>
		
		
			
				
		</tbody>
		
		
</div>



	<%
		}
		%>
		</table>
		
		
				<%
				//bar chart
				
				Gson gsonObj=new Gson();
				Map<Object,Object> map = null;
				List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();

				
			
				 ArrayList<Supplier> allsuppliers1 = crud.getItems();
				
				for(Supplier s1 : allsuppliers1)
				{
					float y=s1.getSubtotal();
					String t = s1.getitem();
					
					 map = new HashMap<Object,Object>(); 

					
					map.put("label",t); map.put("y",y); 
					list.add(map);



				}


				String dataPoints = gsonObj.toJson(list);


 


%>
		

    
		

	

		<br>		<br>		<br>
		
		



<%
			//Pie Chart


				Gson gsonObj1=new Gson();
				Map<Object,Object> map1 = null;
				List<Map<Object,Object>> list1 = new ArrayList<Map<Object,Object>>();

				
			
				 ArrayList<Supplier> allsuppliers2 = crud.getItems();
				
				for(Supplier s2 : allsuppliers2)
				{
					float y1=s2.getTotalQuantity();
					String t1 = s2.getitem();
					
					 map1 = new HashMap<Object,Object>(); 

					
					map1.put("label",t1); map1.put("y",y1); 
					list1.add(map1);



				}


				String dataPoints1 = gsonObj1.toJson(list1);


 


%>

		
	<div id="chartContainer" style="height: 600px; width:70%;margin-top:6%;margin-left:12% ;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>	

<div id="chartContainer1" style="height: 600px; width:70%;margin-top:10%;margin-left:12% ;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>





<script type="text/javascript">


	function fun1() {
		var chart1 = new CanvasJS.Chart("chartContainer1", {
			animationEnabled: true,
			exportEnabled: true,
			title: {
				text: "Total Quantity Per Item"
			},
			axisY:{
				includeZero: true
			},
			data: [{
				type: "pie", //change type to bar, line, area, pie, etc
				//indexLabel: "{y}", //Shows y value on all Data Points
				indexLabelFontColor: "#5A5757",
				indexLabelPlacement: "outside",
				dataPoints: <%out.print(dataPoints1);%>
			}]
		});
		chart1.render();
		
	}
	
	
	function fun2() {
		 
		var chart = new CanvasJS.Chart("chartContainer", {
			animationEnabled: true,
			exportEnabled: true,
			title: {
				text: "Total Expenditure Per Items"
			},
			axisY:{
				includeZero: true
			},
			data: [{
				type: "column", //change type to bar, line, area, pie, etc
				//indexLabel: "{y}", //Shows y value on all Data Points
				indexLabelFontColor: "#5A5757",
				indexLabelPlacement: "outside",
				dataPoints: <%out.print(dataPoints);%>
			}]
		});
		chart.render();
		 
		
	}
	
	


</script>
		






<br><br><br><br><br><br><br><br><br><br><br><br>

<footer class="footer">
		<div class="container">
			<div class="row">
				Copyrights©
				AUTOMART. All rights reserved
			</div>
		</div>
	</footer>





	<!----------------------------------------------- SCRIPT -------------------------------------------->


</body>

</html>