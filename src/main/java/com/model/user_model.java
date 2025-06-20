package com.model;

public class user_model {
	private int U_ID;
	private String U_UserName;
	private String U_Email;
	private String U_PhoneNumber;
	private String U_Password;
	
	public user_model(int U_ID, String U_UserName, String U_Email, String U_PhoneNumber, String U_Password) {
		super();
		this.U_ID = U_ID;
		this.U_UserName = U_UserName;
		this.U_Email = U_Email;
		this.U_PhoneNumber = U_PhoneNumber;
		this.U_Password = U_Password;
	}

	public int getU_ID() {
		return U_ID;
	}

	public void setU_ID(int u_ID) {
		this.U_ID = u_ID;
	}

	public String getU_UserName() {
		return U_UserName;
	}

	public void setU_UserName(String u_UserName) {
		U_UserName = u_UserName;
	}

	public String getU_Email() {
		return U_Email;
	}

	public void setU_Email(String u_Email) {
		U_Email = u_Email;
	}

	public String getU_PhoneNumber() {
		return U_PhoneNumber;
	}

	public void setU_PhoneNumber(String u_PhoneNumber) {
		U_PhoneNumber = u_PhoneNumber;
	}

	public String getU_Password() {
		return U_Password;
	}

	public void setU_Password(String u_Password) {
		U_Password = u_Password;
	}
	

}
