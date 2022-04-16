package sms.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sms.db.Supplier;
import sms.model.crud;

/**
 * Servlet implementation class insert
 */
@WebServlet("/sms.controller.insert")
public class insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String suppliername=request.getParameter("suppliername");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		int contact=Integer.parseInt(request.getParameter("contact"));
		String item=request.getParameter("item");
		int quantity=Integer.parseInt(request.getParameter("quantity"));
		int price =Integer.parseInt(request.getParameter("price"));
		
		Supplier s1=new Supplier();
		s1.setSupplierName(suppliername);
		s1.setEmail(email);
		s1.setAddress(address);
		s1.setContact(contact);
		s1.setContact(contact);
		s1.setItem(item);
		s1.setQuantity(quantity);
		s1.setPrice(price);
		
		
		boolean status = crud.insert(s1);
		
		if(status)
		{
			String msg1 = "Added Supplier :"+ s1.getSupplierName();
	    	response.sendRedirect("AddData.jsp?msg1="+msg1);
		}
		else
		{
			String msg2 = "Supplier not Added";
	    	response.sendRedirect("AddData.jsp?msg2="+msg2);
		}
		
		
		
	
	}
		
		
		
}

	


