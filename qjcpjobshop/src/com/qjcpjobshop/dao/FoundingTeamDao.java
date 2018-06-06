package com.qjcpjobshop.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.qjcpjobshop.entity.CompanyProduct;
import com.qjcpjobshop.entity.FoundingTeam;

@Repository
public class FoundingTeamDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<FoundingTeam> findCompanyProductByEmail(String email){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		Query query = session.createQuery("from FoundingTeam where email ='"+email+"'");
		List<FoundingTeam> querylist = query.list();
		tran.commit();
		session.close();
		return querylist;
	}
}
