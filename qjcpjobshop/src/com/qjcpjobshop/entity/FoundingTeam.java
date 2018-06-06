package com.qjcpjobshop.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "foundingteam")
public class FoundingTeam {
	private int id;
	private String email;
	private String name;
	private String positionnow;
	private String introduction;
	private String image;
	private String weibourl;
	
	@Id
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getWeibourl() {
		return weibourl;
	}
	public void setWeibourl(String weibourl) {
		this.weibourl = weibourl;
	}
	public String getPositionnow() {
		return positionnow;
	}
	public void setPositionnow(String positionnow) {
		this.positionnow = positionnow;
	}
	
}
