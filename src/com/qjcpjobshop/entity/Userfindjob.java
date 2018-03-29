package com.qjcpjobshop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "userfindjob")
public class Userfindjob {
	
	private String findJobEmail;
	private String password;
	
	@Id
	public String getFindJobEmail() {
		return findJobEmail;
	}
	public void setFindJobEmail(String findJobEmail) {
		this.findJobEmail = findJobEmail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
