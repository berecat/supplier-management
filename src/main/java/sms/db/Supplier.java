package sms.db;

import java.sql.Date;
import java.sql.Timestamp;


public class Supplier {
	public static int precount=0;
	int id;
	String SupplierName;
	String Email;
	String Address;
	int ContactNo;
	String item;
	int Quantity;
	float price;
	float SubAmount;
	Date date;
	Timestamp time;
	
	
	//getters
	public String getSupplierName() {
		return SupplierName;
		
	}
	
	public String getEmail() {
		return Email;
	}
	
	public String getAddress(){
		return Address;
	}
	
	public int getContact() {
		return ContactNo;
	}
	
	public String getitem() {
		return item;
	}
	
	public int getQuantitiy() {
		return Quantity;
	}
	
	public float getPrice() {
		return price;
	}
	
	public float getSubamount() {
		return Quantity*price;
	}
	
	public Date getDate() {
		return date;
	}
	
	public int getSupplierID() {
		return id;
	}
	
	public Timestamp getTime() {
		return time;
	}
	
	
	//setters
	public void setSupplierID(int id) {
		this.id=id;
		
	}
	
	public void setSupplierName(String SupplierName) {
		this.SupplierName=SupplierName;
	}
	
	public void setEmail(String Email) {
		this.Email=Email;
	}
	
	public void setAddress(String Address) {
		this.Address=Address;
	}

	public void setContact(int ContactNo) {
		this.ContactNo=ContactNo;
		
	}
	
	public void setItem(String item) {
		this.item=item;
	}
	
	public void setQuantity(int Quantity) {
		this.Quantity=Quantity;
	}
	
	public void setPrice(float price) {
		
		this.price=price;
	}
	
	public void setSubamount(float SubAmount) {
		this.SubAmount=SubAmount;
	}
	
	public void setDate(Date date) {
		this.date=date;
	}
	
	public void setTime(Timestamp time) {
		this.time=time;
	}

}
