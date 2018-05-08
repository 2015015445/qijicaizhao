package com.qjcpjobshop.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

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
}
