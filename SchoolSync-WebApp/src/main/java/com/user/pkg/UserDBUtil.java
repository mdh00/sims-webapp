package com.user.pkg;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import sims.pkg.DBconnection;

public class UserDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public static User validate(String username, String password) {
        User authenticatedUser = null;
        try {
            con = DBconnection.getConnection();
            stmt = con.createStatement();
            String sql = "select * from user where username='"+username+"' and password='"+password+"'";
            rs = stmt.executeQuery(sql);
            if (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String role = rs.getString("role");
                authenticatedUser = new User(id, name, email, phone, username, password, role);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return authenticatedUser;
    }
	
public static List<User> getUser(String userName) {
		
		ArrayList<User> user = new ArrayList<>();
		
		try {
			
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				String role = rs.getString(7);
				
				User us = new User(id,name,email,phone,username,password,role);
				user.add(us);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;	
	}

}
