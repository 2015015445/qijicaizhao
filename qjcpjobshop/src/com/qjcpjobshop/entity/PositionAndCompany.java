package com.qjcpjobshop.entity;

import java.util.List;

public class PositionAndCompany {
	
	private List company;
	public List getCompany() {
		return company;
	}

	public void setCompany(List company) {
		this.company = company;
	}

	public List getPosition() {
		return position;
	}

	public void setPosition(List position) {
		this.position = position;
	}

	private List position;
	
	public PositionAndCompany(List p, List c) {
		this.company = c;
		this.position = p;
	}
	
}
