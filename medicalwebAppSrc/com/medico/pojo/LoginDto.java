package com.medico.pojo;

public class LoginDto {
	private String Name;
	private String Password;
	private String Email;
	private String Gender;
	private int Pateint_id;
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public int getPateint_id() {
		return Pateint_id;
	}
	public void setPateint_id(int pateint_id) {
		Pateint_id = pateint_id;
	}
	
	

}
