package sms.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import sms.db.Supplier;
import sms.db.Provider;




public class crud {
	
	public static boolean insert(Supplier s1){
		boolean status =false;
		
		Connection con = Provider.getMysqlConnection();
String sql="insert into supplier(supplier_name,supplier_email,supplier_address,supplier_contact,supplier_item,quantity,price,sub_amount,date) values(?,?,?,?,?,?,?,?,now())";
		
		try {

			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1,s1.getSupplierName().trim());
			pst.setString(2,s1.getEmail());
			pst.setString(3,s1.getAddress().trim());
			pst.setInt(4,s1.getContact());
			pst.setString(5,s1.getitem());
			pst.setFloat(6,s1.getQuantitiy());
			pst.setFloat(7,s1.getPrice());
			pst.setFloat(8,s1.getSubamount());
			  
		    int val = pst.executeUpdate();
		    if(val > 0)
		    {
		    	status =true;
		    }
		    else
		    {
		    	status = false;
		    }
			
			}
			
			
		catch(Exception e) {
			e.printStackTrace();
		}
		
		finally {
		    if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		  }
		
		
		return status;
		
	}
	
	public static ArrayList<Supplier> getAllRecords() throws SQLException
	{
		ArrayList<Supplier> samp=new ArrayList<Supplier>();
		samp.clear();
		Connection con =Provider.getMysqlConnection();
		String sql="select* from supplier order by supplier_id DESC";
		try {
			
			PreparedStatement pst= con.prepareStatement(sql);
			
			ResultSet rs=pst.executeQuery(sql);
			while(rs.next()) {
				Supplier s1= new Supplier();
				s1.setSupplierID(rs.getInt("supplier_id"));
				s1.setSupplierName(rs.getString("supplier_name"));
				s1.setEmail(rs.getString("supplier_email"));
				s1.setAddress(rs.getString("supplier_address"));
				s1.setContact(rs.getInt("supplier_contact"));
				s1.setItem(rs.getString("supplier_item"));
				s1.setQuantity(rs.getInt("quantity"));
				s1.setPrice(rs.getFloat("price"));
				s1.setSubamount(rs.getFloat("sub_amount"));
				s1.setDate(rs.getDate("date"));
				samp.add(s1);
		
				
			}
			
			
			
			
		}
		
		catch(Exception e2) {
			
			e2.printStackTrace();
		}
		
		finally {
		    if (con != null)
		      con.close();
		  }
		
		return samp;
		
		
		
	}
	
	public static int UpdateRecords(int id,String suppliername,String email,String Address,int contact,String item,int Quantity,float price,float subAmount) throws SQLException {
		int status =0;
		Connection con= Provider.getMysqlConnection();
		String sql ="update supplier set supplier_id=?,supplier_name=?,supplier_email=?,supplier_address=?,supplier_contact=?,supplier_item=?,quantity=?,price=?,sub_amount=? where supplier_id="+id;
		
		
		try {
			PreparedStatement pst=con.prepareStatement(sql);
		
			pst.setInt(1,id);
			pst.setString(2,suppliername);
			pst.setString(3,email);
			pst.setString(4,Address);
			pst.setInt(5,contact);
			pst.setString(6,item);
			pst.setInt(7,Quantity);
			pst.setFloat(8,price);
			pst.setFloat(9,subAmount);
			
			
			int val = pst.executeUpdate();
			if(val > 0)
			{
				status = 1;
			}
			else
			{
				status = -1;
			}
			
			}
		
		catch(Exception f) {
			status =2;
			f.printStackTrace();
		}
		
		finally {
		    if (con != null)
		      con.close();
		  }
		
		
		return status;
		
		
	}
	
	
public static int deleteRecord(int id) throws SQLException {
	
		int status = 0;
		Connection con=Provider.getMysqlConnection();
		String sql="delete from supplier where supplier_id=?";
		
		try {
			
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setInt(1,id);
			
		
			int val = pst.executeUpdate();
		    if(val > 0)
		    {
		    	status =1;
		    }
		    else
		    {
		    	status = 0;
		    }
			
			
			
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		finally {
		    if (con != null)
		      con.close();
		  }
		
		return status;
		
		
	
}

	
public static ArrayList<Supplier> getAllDeletedRecords() throws SQLException
{
	ArrayList<Supplier> samp=new ArrayList<Supplier>();
	samp.clear();
	Connection con =Provider.getMysqlConnection();
	String sql="select* from supplier_deleted order by deleted_time DESC";
	try {
		
		PreparedStatement pst= con.prepareStatement(sql);
		
		ResultSet rs=pst.executeQuery(sql);
		while(rs.next()) {
			Supplier s1= new Supplier();
			s1.setSupplierID(rs.getInt("supplier_id"));
			s1.setSupplierName(rs.getString("supplier_name"));
			s1.setEmail(rs.getString("supplier_email"));
			s1.setAddress(rs.getString("supplier_address"));
			s1.setContact(rs.getInt("supplier_contact"));
			s1.setItem(rs.getString("supplier_item"));
			s1.setQuantity(rs.getInt("quantity"));
			s1.setPrice(rs.getFloat("price"));
			s1.setSubamount(rs.getFloat("sub_amount"));
			s1.setDate(rs.getDate("date"));
			s1.setTime(rs.getTimestamp("deleted_time"));
			samp.add(s1);
	
			
		}
		
		
		
		
	}
	
	catch(Exception e2) {
		
		e2.printStackTrace();
	}
	
	finally {
	    if (con != null)
	      con.close();
	  }
	
	return samp;
	
	
	
}
	
	
	
	



	
	
	
}
