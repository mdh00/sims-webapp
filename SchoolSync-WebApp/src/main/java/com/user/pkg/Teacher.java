package com.user.pkg;

public class Teacher extends User{
	private int staff_id;
    private String joined_date;

	public Teacher(int id, String name, String email, String phone, String userName, String password, int staff_id, String joined_date) {
		super(id, name, email, phone, userName, password, "Teacher");
		// TODO Auto-generated constructor stub
		this.staff_id = staff_id;
		this.joined_date = joined_date;
	}

	public int getStaff_id() {
		return staff_id;
	}

	public String getJoined_date() {
		return joined_date;
	}

	public void setStaff_id(int staff_id) {
		this.staff_id = staff_id;
	}

	public void setJoined_date(String joined_date) {
		this.joined_date = joined_date;
	}

	
	
	
}
