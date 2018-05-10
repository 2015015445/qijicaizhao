package com.qjcpjobshop.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "resume")
public class Resume {
	private String type;
	private String expectPosition;
	private String expectSalary;
	private String expectCity;
	private String workYear;
	private String topDegree;
	private String tel;
	private String currentState;
	private String name;
	private String sex;
	private String email;
	private String companyName;
	private String positionName;
	private String companyYearStart;
	private String companyMonthStart;
	private String companyYearEnd;
	private String companyMonthEnd;
	private String projectDescription;
	private String projectYearStart;
	private String projectYearEnd;
	private String projectMonthStart;
	private String projectMonthEnd;
	private String thePost;
	private String projectName;
	private String schoolName;
	private String selfDescription;
	private String schoolYearStart;
	private String schoolYearEnd;
	private String professionalName;
	private String degree;
	
	@Id
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getWorkYear() {
		return workYear;
	}
	public void setWorkYear(String workYear) {
		this.workYear = workYear;
	}
	public String getTopDegree() {
		return topDegree;
	}
	public void setTopDegree(String topDegree) {
		this.topDegree = topDegree;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getCurrentState() {
		return currentState;
	}
	public void setCurrentState(String currentState) {
		this.currentState = currentState;
	}
	public String getExpectCity() {
		return expectCity;
	}
	public void setExpectCity(String expectCity) {
		this.expectCity = expectCity;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getExpectPosition() {
		return expectPosition;
	}
	public void setExpectPosition(String expectPosition) {
		this.expectPosition = expectPosition;
	}
	public String getExpectSalary() {
		return expectSalary;
	}
	public void setExpectSalary(String expectSalary) {
		this.expectSalary = expectSalary;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
	public String getCompanyYearStart() {
		return companyYearStart;
	}
	public void setCompanyYearStart(String companyYearStart) {
		this.companyYearStart = companyYearStart;
	}
	public String getCompanyMonthStart() {
		return companyMonthStart;
	}
	public void setCompanyMonthStart(String companyMonthStart) {
		this.companyMonthStart = companyMonthStart;
	}
	public String getCompanyYearEnd() {
		return companyYearEnd;
	}
	public void setCompanyYearEnd(String companyYearEnd) {
		this.companyYearEnd = companyYearEnd;
	}
	public String getCompanyMonthEnd() {
		return companyMonthEnd;
	}
	public void setCompanyMonthEnd(String companyMonthEnd) {
		this.companyMonthEnd = companyMonthEnd;
	}
	public String getProjectDescription() {
		return projectDescription;
	}
	public void setProjectDescription(String projectDescription) {
		this.projectDescription = projectDescription;
	}
	public String getProjectYearStart() {
		return projectYearStart;
	}
	public void setProjectYearStart(String projectYearStart) {
		this.projectYearStart = projectYearStart;
	}
	public String getProjectYearEnd() {
		return projectYearEnd;
	}
	public void setProjectYearEnd(String projectYearEnd) {
		this.projectYearEnd = projectYearEnd;
	}
	public String getProjectMonthStart() {
		return projectMonthStart;
	}
	public void setProjectMonthStart(String projectMonthStart) {
		this.projectMonthStart = projectMonthStart;
	}
	public String getProjectMonthEnd() {
		return projectMonthEnd;
	}
	public void setProjectMonthEnd(String projectMonthEnd) {
		this.projectMonthEnd = projectMonthEnd;
	}
	public String getThePost() {
		return thePost;
	}
	public void setThePost(String thePost) {
		this.thePost = thePost;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schollName) {
		this.schoolName = schollName;
	}
	public String getSelfDescription() {
		return selfDescription;
	}
	public void setSelfDescription(String selfDescription) {
		this.selfDescription = selfDescription;
	}
	public String getSchoolYearStart() {
		return schoolYearStart;
	}
	public void setSchoolYearStart(String schoolYearStart) {
		this.schoolYearStart = schoolYearStart;
	}
	public String getSchoolYearEnd() {
		return schoolYearEnd;
	}
	public void setSchoolYearEnd(String schoolYearEnd) {
		this.schoolYearEnd = schoolYearEnd;
	}
	public String getProfessionalName() {
		return professionalName;
	}
	public void setProfessionalName(String professionalName) {
		this.professionalName = professionalName;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	
	
	
}
