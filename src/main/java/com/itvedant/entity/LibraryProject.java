package com.itvedant.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class LibraryProject {
	@Id
	private int libraryID;
	private String bookName;
	private String dateIssued;
	private String returnDate;
	private String userID;
	private String userName;
	
	@Override
	public String toString() {
		return "LibraryProject [libraryID=" + libraryID + ", bookName=" + bookName + ", dateIssued=" + dateIssued
				+ ", returnDate=" + returnDate + ", userID=" + userID + ", userName=" + userName + "]";
	}
	public int getLibraryID() {
		return libraryID;
	}
	public void setLibraryID(int libraryID) {
		this.libraryID = libraryID;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getDateIssued() {
		return dateIssued;
	}
	public void setDateIssued(String dateIssued) {
		this.dateIssued = dateIssued;
	}
	public String getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
}
