<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="sms.model.crud"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id =Integer.parseInt(request.getParameter("supplierId"));
String suppliername=request.getParameter("supplierName");
String email=request.getParameter("email");
String Address=request.getParameter("address");
int contact =Integer.parseInt(request.getParameter("contact"));
String item=request.getParameter("item");
int quantity =Integer.parseInt(request.getParameter("quantity"));
float price =Float.parseFloat(request.getParameter("price"));
float SubAmount= quantity*price;

int status =crud.UpdateRecords(id, suppliername,email,Address,contact,item,quantity,price,SubAmount);
if(status > 0)
{
	
	response.sendRedirect("Success.jsp");


}
else if(status == -1)
{
	out.print("error from databse");
	
}
else
{
	out.print("excepion occured");
}



%>

</body>
</html>