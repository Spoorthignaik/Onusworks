package com.javawithease.business;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import com.javawithease.util.JDBCUtil;

/**
 * This class is used to store a image in DB.
 * @author javawithease
 */
public class JDBCTest {
	public static void main(String args[]){
		Connection conn = null;
		PreparedStatement preparedStatement = null;
		
		String createTableQuery = "create table IMAGESTORE("
			+ "IMAGE_ID NUMBER(5) NOT NULL, "
			+ "NAME BLOB NOT NULL, "
			+ "PRIMARY KEY (IMAGE_ID) )";
		
		try{			
			//get connection
			conn = JDBCUtil.getConnection();
			
			//create preparedStatement
			preparedStatement = 
				conn.prepareStatement(createTableQuery);
			
			//execute query for create table
			preparedStatement.execute();
			System.out.println("Table created successfully.");
			
			String storeImageQuery = "insert into IMAGESTORE "
				+ "values (?,?)";
			preparedStatement = 
				conn.prepareStatement(storeImageQuery);
			
			//Read source image
			FileInputStream fileInputStream = 
				new FileInputStream("C:\\Users\\Adminstrator\\Downloads\\sampleP1.jpg");  
			preparedStatement.setInt(1,1);  
			preparedStatement.setBinaryStream(2,
					fileInputStream,fileInputStream.available());    
			
			//execute update
			preparedStatement.executeUpdate(); 
			System.out.println("Image stored successfully.");
			
			//close connection
			preparedStatement.close();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}	
}
