package com.student;

import com.user.pkg.User;

public class Student extends User {
	private String std_id;
	private String address;
	
	public Student(int id, String name, String email, String phone, String username, String password, String role,
			String std_id, String address) {
		super(id, name, email, phone, username, password, role);
		this.std_id = std_id;
		this.address = address;

		
	}
	public String getStd_id() {
		return std_id;
	}
	public String getAddress() {
		return address;
	}
	public void setStd_id(String std_id) {
		this.std_id = std_id;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	



	
}
