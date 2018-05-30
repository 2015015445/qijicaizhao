package com.qjcpjobshop.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.qjcpjobshop.entity.Userfindjob;

@Repository
public class UserDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public void insert(Userfindjob user){
		try{
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.save(user);
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public Userfindjob findByName(String name){
		String hql = "from Userfindjob where email ="+name;
		return (Userfindjob)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
	}
	
	public Userfindjob selectByUsername(String name,String password){
		String hql = "from Userfindjob where email ="+name;
		return (Userfindjob)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
//		User u=this.sessionFactory.getCurrentSession().get(User.class, username);
		
		
//		Session session = sessionFactory.openSession();
//		Transaction tx = session.beginTransaction();
//		User u = session.get(User.class, username);
//		return u;
	}
}
