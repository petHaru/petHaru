package com.petharu.web.entity;

public class Member {
	private Integer id;
	private String userId;
	private String password;
	private String email;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(Integer id, String userId, String password, String email) {
		super();
		this.id = id;
		this.userId = userId;
		this.password = password;
		
		this.email = email;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", userId=" + userId + ", password=" + password + ", email=" + email + "]";
	}
	
	
}
