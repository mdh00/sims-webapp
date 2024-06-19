package sims.pkg;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ClassDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	
//schedule a class
	public static boolean insertclass(String grade, String clz, String subject, String lesson, String date,
			String start_time, String end_time, String venue) {

		boolean isSuccess = false;

		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();

			String sql = "insert into class values(0, '" + grade + "', '" + clz + "', '" + subject + "', '" + lesson
					+ "', '" + date + "', '" + start_time + "', '" + end_time + "', '" + venue + "')";
			
			int insert = stmt.executeUpdate(sql);

			if (insert > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	
	//Class details list
	
	public static List<Clazz> getClassData() {
		ArrayList<Clazz> classDataList = new ArrayList<>();

		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();

			String sql = "SELECT * FROM class";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				int cid = rs.getInt(1);
				String grade = rs.getString(2);
				String clz = rs.getString(3);
				String subject = rs.getString(4);
				String lesson = rs.getString(5);
				String date = rs.getString(6);
				String start_time = rs.getString(7);
				String end_time = rs.getString(8);
				String venue = rs.getString(9);

				Clazz classData = new Clazz(cid, grade, clz, subject, lesson, date, start_time, end_time, venue);
				classDataList.add(classData);
			}
		} catch (Exception e) {
			e.printStackTrace();

			
		}
		return classDataList;
	}
	
	
	//Update a class
	public static boolean editclass(String id, String grade, String clz, String subject, String lesson, String date, String start_time, String end_time, String venue) {
		//int convertid = Integer.parseInt(id);
		try {
			
		
			con = DBconnection.getConnection();
			stmt = con.createStatement();

			
			String sql = "update class set grade='"+grade+"', clz='"+clz+"', subject='"+subject+"', lesson='"+lesson+"', date='"+date+"', start_time='"+start_time+"', end_time= '"+end_time+"', venue='"+venue+"'"
					+ "where id='"+id+"'" ;
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0 ) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		} catch(SQLException  s)	{
			s.printStackTrace();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	//delete a class
	public static boolean deleteClass(String id) {
		int convertid = Integer.parseInt(id);
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from class where id= '"+convertid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

}


	



