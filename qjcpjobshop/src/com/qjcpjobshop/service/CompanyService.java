package com.qjcpjobshop.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qjcpjobshop.dao.AdminDao;
import com.qjcpjobshop.dao.CompanyDao;
import com.qjcpjobshop.entity.Company;

@Service
public class CompanyService {

	@Resource
	private CompanyDao companyDao;
	
	public List findAllCompany(){
		return companyDao.findAllCompany();
	}
	
	public Company findCompanyByEmail(String email){
		return companyDao.findCompanyByEmail(email);
	}
	
	public int findCount(){
		return companyDao.findCompanyCount();
	}
	
	public List<Company> findCompanyByPage(int pageNum, int pageSize){
		return companyDao.findCompanyByPage(pageNum, pageSize);
	}
	
	public List<Company> findCompanyByField(int pageNum, int pageSize,String field){
		return companyDao.findCompanyByField(pageNum,pageSize,field);
	}
	
	public List<Company> findCompanyByLocation(int pageNum, int pageSize,String field){
		return companyDao.findCompanyByLocation(pageNum, pageSize, field);
	}
	
	public List<Company> findCompanyByStage(int pageNum, int pageSize,String field){
		return companyDao.findCompanyByStage(pageNum, pageSize, field);
	}
}
