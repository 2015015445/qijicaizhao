package com.qjcpjobshop.dao;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.qjcpjobshop.entity.Resume;
import com.qjcpjobshop.entity.Usercompany;
import com.qjcpjobshop.entity.Userfindjob;

@Repository
public class UserDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public void insertUser(Userfindjob user){
		try{
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.saveOrUpdate(user);
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public void insertCompany(Usercompany c){
		try{
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.saveOrUpdate(c);
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public Userfindjob findByUserName(String name){
		String hql = "from Userfindjob where email ='"+name+"'";
		return (Userfindjob)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
	}
	
	public Usercompany findByCompanyName(String name){
		String hql = "from Usercompany where email ='"+name+"'";
		return (Usercompany)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
	}
	
	public Userfindjob selectByUsername(String name,String password){
		String hql = "from Userfindjob where email ='"+name+"'";
		return (Userfindjob)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
//		User u=this.sessionFactory.getCurrentSession().get(User.class, username);
		
		
//		Session session = sessionFactory.openSession();
//		Transaction tx = session.beginTransaction();
//		User u = session.get(User.class, username);
//		return u;
	}
}
