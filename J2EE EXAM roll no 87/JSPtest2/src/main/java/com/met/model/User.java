package com.met.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class User{
	private String name;
	private String Author;
	private String Publisher;
	
	private int BookId;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return Author;
	}

	public void setAuthor(String author) {
		Author = author;
	}

	public String getPublisher() {
		return Publisher;
	}

	public void setPublisher(String publisher) {
		Publisher = publisher;
	}
	
	public boolean getRegistration() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mybookstore", "root", "root");
			con.setAutoCommit(false);
			try{
				PreparedStatement pstmt = con.prepareStatement("insert into bookstore (bookname,author,publisher)values (?, ?, ?)");
				pstmt.setString(1, this.name);
				pstmt.setString(2, this.Author);
				pstmt.setString(3, this.Publisher);
				
				pstmt.executeUpdate();
				pstmt.close();
				con.commit();
				return true;
			}catch(SQLException e){
				con.rollback();
				return false;
			}
		}catch(Exception e) {
			System.out.println(e);
			return false;
		}
	}
	public int getBookId() {
		return BookId;
	}
	public void setBookId(int BookId) {
		this.BookId = BookId;
	}
	
	
}