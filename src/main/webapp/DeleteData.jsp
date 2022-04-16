<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.ArrayList"%>
    
 <%@page import="sms.db.*" %>
 <%@page import="sms.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 

int i=0;
ArrayList<Supplier> allSuppliers= crud.getAllRecords();

for(Supplier s1:allSuppliers)
	
{
	int x =Integer.parseInt(request.getParameter("del"));
	
	if(x==s1.getSupplierID())
	
{
		
		int status = crud.deleteRecord(x);
		
		if(status > 0)
			response.sendRedirect("Dashboard.jsp");
		else
			out.print("Error");
		
		

%>



	
	<%
	}
}
	%>




</body>
</html>