package com.student;

import java.sql.Connection;

import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



public class addstudentDButil {
	   private static boolean isSuccess;
	   private static Connection con =null;
	   private static Statement stmt =null;
	   private static ResultSet rs =null;
	
public static boolean Insertstudent( String Name,String Email,String ClassName,String NIC,String Address,String DOB,String Gender) {
		
		boolean isSuccess = false;
		
		
		try {
		
			con=DBconnection.getConnection();
			stmt =con.createStatement();
			
			
			String sql = "insert into student values (0,''"+Name+"','"+Email+"','"+ClassName+"','"+NIC+"','"+Address+"','"+DOB+"','"+Gender+"');";
		

			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess =false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
		
	}



public static boolean updatestudent(String id, String Name,String Email,String ClassName,String NIC,String Address,String DOB,String Gender) {
	
	
	//boolean isSuccess = false;
	try {
		
		con = DBconnection.getConnection();
		stmt = con.createStatement();
		String sql = "update student set Name='"+Name+"',Email='"+Email+"',ClassName='"+ClassName+"',NIC='"+NIC+"',Address='"+Address+"',DOB='"+DOB+"'Gender='"+Gender+"'"
				+ "where id='"+id+"'";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}
public static List<Student> getstudentdetails() {


ArrayList<Student> stu = new ArrayList<>();

try {
	
	con = DBconnection.getConnection();
	stmt = con.createStatement();
	String sql = "select * from student";
	rs = stmt.executeQuery(sql);
	
	while (rs.next()) {
		int id= rs.getInt(1);
		String name = rs.getString(2);
		String email = rs.getString(3);
		String phone = rs.getString(4);
		String username= rs.getString(5);
		String password= rs.getString(6);
		String role= rs.getString(7);
		String std_id= rs.getString(8);
		String address= rs.getString(9);
		
		
		Student s = new Student(id,name,email,phone,username,password,role,std_id, address);
		stu.add(s);
	}
	
} catch (Exception e) {
	
}

return stu;	
}
public static boolean deletestudent(String id) {
	
	int convId = Integer.parseInt(id);
	System.out.println(id);
	//boolean isSuccess = false;
	try {
		
		con = DBconnection.getConnection();
		stmt = con.createStatement();
		String sql = "delete from student where id='"+convId+"'";
		int r = stmt.executeUpdate(sql);
		
		if (r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}



























}


	

