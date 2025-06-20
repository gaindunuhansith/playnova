package com.model;

public class ann_model {

	private int A_ID;
	private String A_Title;
	private String A_Description;
	private String A_GameName;
	private String A_RelDate;
	private String A_GCategory;
	private String A_GOwner;
	
	public ann_model(int A_ID, String A_Title, String A_Description, String A_GameName, String A_RelDate,
			String A_GCategory, String A_GOwner) {
		super();
		this.A_ID = A_ID;
		this.A_Title = A_Title;
		this.A_Description = A_Description;
		this.A_GameName = A_GameName;
		this.A_RelDate = A_RelDate;
		this.A_GCategory = A_GCategory;
		this.A_GOwner = A_GOwner;
	}

	public int getA_ID() {
		return A_ID;
	}

	public void setA_ID(int a_ID) {
		this.A_ID = a_ID;
	}

	public String getA_Title() {
		return A_Title;
	}

	public void setA_Title(String a_Title) {
		A_Title = a_Title;
	}

	public String getA_Description() {
		return A_Description;
	}

	public void setA_Description(String a_Description) {
		A_Description = a_Description;
	}

	public String getA_GameName() {
		return A_GameName;
	}

	public void setA_GameName(String a_GameName) {
		A_GameName = a_GameName;
	}

	public String getA_RelDate() {
		return A_RelDate;
	}

	public void setA_RelDate(String a_RelDate) {
		A_RelDate = a_RelDate;
	}

	public String getA_GCategory() {
		return A_GCategory;
	}

	public void setA_GCategory(String a_GCategory) {
		A_GCategory = a_GCategory;
	}

	public String getA_GOwner() {
		return A_GOwner;
	}

	public void setA_GOwner(String a_GOwner) {
		A_GOwner = a_GOwner;
	}
	
	
	
}
