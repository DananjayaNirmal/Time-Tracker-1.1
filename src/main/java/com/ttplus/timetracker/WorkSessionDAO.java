package com.ttplus.timetracker;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class WorkSessionDAO {
	
	
	public Connection dbConnection() {
		Connection con = null;
		
		String url = "jdbc:mysql://localhost:3306/ttplus";
		String un = "root";
		String pw = "12345";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con = DriverManager.getConnection(url, un, pw);
			
			System.out.println("Database connection success");
			
			
		} catch (Exception e) {
			
			System.err.println("Database connection failed: " + e.getMessage());
	        e.printStackTrace();
			
		}
		
		return con;
		
	}

	public List<WorkSession> getDetails() {
		
		List<WorkSession> ws = new ArrayList<>();
		
		String query = "SELECT * FROM userdetails";

		try {
			Connection con = dbConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				int id = rs.getInt("id");
				int timeDuration = rs.getInt("timeDuration");
				String date = rs.getString("date");
				int coffeeCount = rs.getInt("coffeeCount");
				String taskName = rs.getString("taskName");
				
				ws.add(new WorkSession(id, timeDuration, date, coffeeCount, taskName));
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
			
		}

		return ws;
	}

	public void deleteTask(int id) {
		
		try {
			Connection con = dbConnection();
			String query = "Delete From userdetails Where id = ?";
			PreparedStatement ps = con.prepareStatement(query);
			
			ps.setInt(1, id);
			ps.executeUpdate();
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
	}

	public void insertDetails(WorkSession ws) {
		
		try (Connection con = dbConnection()) {
	        String sql = "INSERT INTO userdetails(timeDuration, date, coffeeCount, taskName) VALUES"
	        		+ " (?, ?, ?, ?)";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setInt(1, ws.getTimeDuration());
	        ps.setString(2, ws.getDate());
	        ps.setInt(3, ws.getCoffeeCount());
	        ps.setString(4, ws.getTaskName());
	        ps.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		
	}
}
	

