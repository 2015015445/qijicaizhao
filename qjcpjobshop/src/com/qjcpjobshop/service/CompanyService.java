package com.qjcpjobshop.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qjcpjobshop.dao.AdminDao;
import com.qjcpjobshop.dao.CompanyDao;

@Service
public class CompanyService {

	@Resource
	private CompanyDao companyDao;
	
	public List findAllCompany(){
		return companyDao.findAllCompany();
	}
}
