package com.qjcpjobshop.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qjcpjobshop.dao.AdminDao;
import com.qjcpjobshop.dao.CompanyProductDao;
import com.qjcpjobshop.entity.CompanyProduct;

@Service
public class CompanyProductService {
	@Resource
	private CompanyProductDao companyProductDao;
	
	public List<CompanyProduct> findCompanyProductByEmail(String email){
		return companyProductDao.findCompanyProductByEmail(email);
	}
}
