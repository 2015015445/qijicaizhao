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
	
	public List<Company> findCompanyBySize(String size){
		return companyDao.findCompanyBySize(size);
	}
	
	public void updateMyCompany(String name,String briefintroduction,int id){
		companyDao.updateMyCompany(name, briefintroduction, id);
	}
	
	public void updateProduct(String name,String url,String introduction,int id){
		companyDao.updateProduct(name,url,introduction,id);
	}
	
	public void updatecompanyintroduction(String detailintroduction,int id){
		companyDao.updateCompanyIntroduction(detailintroduction,id);
	}
	
	public void updateMyCompany2(String location,String industryfield,String scale,String url,int id){
		companyDao.updateMyCompany2(location,industryfield,scale,url,id);
	}
	
	public void updateMyCompany3(String thefinancingstage,int id){
		companyDao.updateMyCompany3(thefinancingstage, id);
	}
	
	public void updateFoundingTeam(String name,String positionnow,String weibourl,String introduction,int id){
		companyDao.updateFoundingTeam(name,positionnow,weibourl,introduction, id);
	}
	
	public void deleteProduct(int id){
		companyDao.deleteProduct(id);
	}
}
