package com.qjcpjobshop.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.qjcpjobshop.entity.CompanyProduct;
import com.qjcpjobshop.entity.Position;

@Repository
public class PositionDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public void insert(Position position){
		try{
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.save(position);
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public int findCompanypositionCount(String id){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		Query query = session.createQuery("from Position");
		List<Position> querylist = query.list();
		tran.commit();
		session.close();
		return querylist.size();
	}
	
	public List<Position> findPositionByEmail(String email){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		Query query = session.createQuery("from Position where email ='"+email+"'");
		List<Position> querylist = query.list();
		tran.commit();
		session.close();
		return querylist;
	}
}
