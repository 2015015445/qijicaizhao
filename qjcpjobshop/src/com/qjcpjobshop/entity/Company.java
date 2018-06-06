package com.qjcpjobshop.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "company")
public class Company {

	private int id;
	private String email;
	private String name;
	private String stageofdevelopment;
	private String thefinancingstage;
	private String industryfield;
	private String url;
	private String image;
	private String briefintroduction;
	private String detailintroduction;
	private String location;
	private String scale;
	
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
	public String getStageofdevelopment() {
		return stageofdevelopment;
	}
	public void setStageofdevelopment(String stageofdevelopment) {
		this.stageofdevelopment = stageofdevelopment;
	}
	public String getThefinancingstage() {
		return thefinancingstage;
	}
	public void setThefinancingstage(String thefinancingstage) {
		this.thefinancingstage = thefinancingstage;
	}
	public String getIndustryfield() {
		return industryfield;
	}
	public void setIndustryfield(String industryfield) {
		this.industryfield = industryfield;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

	public String getBriefintroduction() {
		return briefintroduction;
	}

	public void setBriefintroduction(String briefintroduction) {
		this.briefintroduction = briefintroduction;
	}

	public String getDetailintroduction() {
		return detailintroduction;
	}

	public void setDetailintroduction(String detailintroduction) {
		this.detailintroduction = detailintroduction;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getScale() {
		return scale;
	}

	public void setScale(String scale) {
		this.scale = scale;
	}
	
}
