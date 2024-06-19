package com.student;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StudentDBUtil {
	
	private static boolean isSuccess;
	   private static Connection con =null;
	   private static Statement stmt =null;
	   private static ResultSet rs =null;
	   
	public static boolean insertStudent(String name, String email, String phone, String username, String password, String role, String std_id, String address) {
		
	    boolean isSuccess = false;
	    

	    try {
	        con = DBconnection.getConnection();
	        stmt = con.createStatement();
	        String sql = "INSERT INTO student VALUES (0, '" + name + "', '" + email + "', '" + phone + "', '" + username + "', '" + password + "', '" + role + "', '" + std_id + "', '" + address + "');";

	        int rs = stmt.executeUpdate(sql);

	        if (rs > 0) {
	            isSuccess = true;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return isSuccess;
	}

	
	
	public static List<Student> getStudentDetails() {
	    ArrayList<Student> studentList = new ArrayList<>();

	    try {
	        con = DBconnection.getConnection();
	        stmt = con.createStatement();

	        String sql = "SELECT * FROM student";
	        rs = stmt.executeQuery(sql);

	        while (rs.next()) {
	            int id = rs.getInt(1);
	            String name = rs.getString(2);
	            String email = rs.getString(3);
	            String phone = rs.getString(4);
	            String username = rs.getString(5);
	            String password = rs.getString(6);
	            String role = rs.getString(7);
	            String std_id = rs.getString(8);
	            String address = rs.getString(9);

	            Student student = new Student(id, name, email, phone, username, password, role, std_id, address);
	            studentList.add(student);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return studentList;
	}

	
	
	public static boolean updateStudent(int id, String name, String email, String phone, String username, String password, String role, int std_id, String address) {
	    boolean isSuccess = false;

	    try {
	        con = DBconnection.getConnection();
	        stmt = con.createStatement();
	        String sql = "UPDATE student SET name='" + name + "', email='" + email + "', phone='" + phone + "', username='" + username + "', password='" + password + "', role='" + role + "', std_id=" + std_id + ", address='" + address + "' WHERE id=" + id + ";";
	        int rs = stmt.executeUpdate(sql);

	        if (rs > 0) {
	            isSuccess = true;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return isSuccess;
	}
	
	
	public static boolean deleteStudent(String id) {
	    int convertedID = Integer.parseInt(id);

	    try {
	        con = DBconnection.getConnection();
	        stmt = con.createStatement();

	        String sql = "DELETE FROM student WHERE id= '"+convertedID+"'";
	        int rs = stmt.executeUpdate(sql);

	        if (rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return isSuccess;
	}


}
