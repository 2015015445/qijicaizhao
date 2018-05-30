package com.qjcpjobshop.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.qjcpjobshop.entity.Position;

@Repository
public class CompanyDao {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public List findAllCompany(){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		Query query = session.createQuery("from Company");
		List<Position> querylist = query.list();
		tran.commit();
		session.close();
		return querylist;
	}
}
