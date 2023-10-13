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
	
	public static boolean insertclass(String grade, String clz, String subject, String lesson, String date, String start_time, String end_time, String venue) {
		
		boolean isSuccess = false;
		
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into class values(0, '"+grade+"', '"+clz+"', '"+subject+"', '"+lesson+"', '"+date+"', '"+start_time+"', '"+start_time+"', '"+venue+"')";
			int insert = stmt.executeUpdate(sql);
			
			if(insert > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
//	public static List <Clazz> getClass() {
//		List<Clazz> classDataList = new ArrayList<>();
//		
//		try {
//			con = DBconnection.getConnection();
//            stmt = con.createStatement();
//            String sql = "SELECT * FROM class";
//            rs = stmt.executeQuery(sql);
//            
//            while (rs.next()) {
//            	String id = rs.getString("id");
//                String grade = rs.getString("grade");
//                String clz = rs.getString("clz");
//                String subject =rs.getString("subject");
//                String lesson =rs.getString("lesson");
//                String date =rs.getString("date");
//                String start_time = rs.getString("start_time");
//                String end_time = rs.getString("end_time");
//                String venue = rs.getString("venue");
//                
//                Clazz classData = new Clazz(id, grade, clz, subject, lesson, date, start_time, end_time, venue);
//            }
//                
//           
//		}catch(SQLException e) {
//			System.out.println(e);
//		}
//		return classDataList;
//
//	}
	
	
	public static List<Clazz> getClassData() {
        ArrayList<Clazz> classDataList = new ArrayList<>();

        try {
            con = DBconnection.getConnection();
            stmt = con.createStatement();

            String sql = "SELECT * FROM class";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
     
                String id = rs.getString("id");
                String grade = rs.getString("grade");
                String clz = rs.getString("clz");
                String subject =rs.getString("subject");
                String lesson =rs.getString("lesson");
                String date =rs.getString("date");
                String start_time = rs.getString("start_time");
                String end_time = rs.getString("end_time");
                String venue = rs.getString("venue");
                
                Clazz classData = new Clazz(id, grade, clz, subject, lesson, date, start_time, end_time, venue);
                classDataList.add(classData);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources (rs, stmt, con)
        }

        return classDataList;
    }
	

}
