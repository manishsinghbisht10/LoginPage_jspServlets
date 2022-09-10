package com.loginDao;

public class PojoGetQueryObject {

	int id;
	String full_name;
	String email;
	String message;
	
	public PojoGetQueryObject(int id,String full_name,String email,String message) {
		this.id=id;
		this.full_name=full_name;
		this.email=email;
		this.message=message;
		
	}
	@Override
	public String toString() {
		return full_name+" "+email+" "+message;
	}
	public String getFull_name() {
		return full_name;
	}
	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
