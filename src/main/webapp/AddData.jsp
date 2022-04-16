<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

    <style>
        body{
            background-color:beige;
            height: 100%;
			
overflow-x: hidden;
overflow-y: hidden;

        }
    </style>
	
</head>
<body>


    <form style="margin-top:5% ;margin-left:20%;" action="sms.controller.insert">
      <div>
		<font color="red"> <%
			if(request.getParameter("msg2") != null)
				out.print(request.getParameter("msg2"));
		%>
		</font> <font color="blue" style="font-size:28px;font-weight: bold;margin-left:25%"> <%
			if(request.getParameter("msg1") != null)
				out.print(request.getParameter("msg1"));
		%>
		</font>
		<br> <br>
	</div>
        <div class="form-group row">
          <label for="inputEmail3"  class="col-sm-2 col-form-label" style="left:3% ;" >Supplier Name</label>
          <div class="col-sm-10">
            <input type="text" name="suppliername" class="form-control" id="inputEmail3" placeholder="Supplier Name" style="width:50%;" required>
          </div>
        </div>
        <div class="form-group row">
            <label for="inputEmail3" class="col-sm-2 col-form-label" style="left:3% ;">Email</label>
            <div class="col-sm-10">
              <input type="email" name="email" class="form-control" id="inputEmail3" placeholder="Email" style="width:50%;" required>
            </div>
          </div>
          <div class="form-group row">
            <label for="inputEmail3" class="col-sm-2 col-form-label" style="left:3% ;">Address</label>
            <div class="col-sm-10">
              <input type="text" name="address" class="form-control" id="inputEmail3" placeholder="Address" style="width:50%;" required>
            </div>
          </div>
          <div class="form-group row">
            <label for="inputEmail3" class="col-sm-2 col-form-label" style="left:3% ;">Contact No.</label>
            <div class="col-sm-10">
              <input type="tel" name="contact" class="form-control" id="inputEmail3" placeholder="Contact No." style="width:50%;"  pattern="^\d{10}$" required>
            </div>
          </div>
          <div class="form-group row">
            <label for="inputEmail3" class="col-sm-2 col-form-label" style="left:3% ;">Supplier Item</label>
            <div class="col-sm-10">
              <input type="text" name="item" class="form-control" id="inputEmail3" placeholder="Item Name" style="width:50%;" required>
            </div>
          </div>
          <div class="form-group row">
            <label for="inputEmail3" class="col-sm-2 col-form-label" style="left:3% ;">Quantity</label>
            <div class="col-sm-10">
              <input type="number" name="quantity" class="form-control" id="inputEmail3" placeholder="Quantity" style="width:50%;"required>
            </div>
          </div>
          <div class="form-group row">
            <label for="inputEmail3" class="col-sm-2 col-form-label" style="left:3% ;">Price(Rs.)</label>
            <div class="col-sm-10">
              <input type="number" name="price" class="form-control" id="inputEmail3" placeholder="Price(Rs.)" style="width:50%;"required>
            </div>
          </div>
          <br><br>

     
        
       
     
        <div class="form-group row" style="margin-left:30%;">
          <div class="col-sm-10">
            <button type="submit" class="btn btn-primary">SUBMIT</button>
          </div>
        </div>
      </form>
      
    
</body>
</html>