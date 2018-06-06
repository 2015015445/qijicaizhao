package com.qjcpjobshop.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.qjcpjobshop.entity.Company;
import com.qjcpjobshop.entity.CompanyProduct;
import com.qjcpjobshop.entity.Position;

@Repository
public class CompanyProductDao {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public List<CompanyProduct> findCompanyProductByEmail(String email){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		Query query = session.createQuery("from CompanyProduct where email ='"+email+"'");
		List<CompanyProduct> querylist = query.list();
		tran.commit();
		session.close();
		return querylist;
	}
	
}
