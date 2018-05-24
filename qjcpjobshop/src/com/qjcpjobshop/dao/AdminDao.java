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
public class AdminDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public List userfindjoblist(){
		try{
			Session session = sessionFactory.openSession();
			Transaction tran = session.beginTransaction();
			Query query = session.createQuery("from Userfindjob");
			List<Position> querylist = query.list();
			tran.commit();
			session.close();
			return querylist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public List usercompanylist(){
		try{
			Session session = sessionFactory.openSession();
			Transaction tran = session.beginTransaction();
			Query query = session.createQuery("from Usercompany");
			
			List<Position> querylist = query.list();
			tran.commit();
			session.close();
			return querylist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public List finduserfindjoblist(String email){
		try{
			Session session = sessionFactory.openSession();
			Transaction tran = session.beginTransaction();
			Query query = session.createQuery("from Userfindjob where email ="+email);
			
			/*String hql = "from Userfindjob where email ="+name;
			return (Userfindjob)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();*/
			List<Position> querylist = query.list();
			tran.commit();
			session.close();
			return querylist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public List findusercompanylist(String email){
		try{
			Session session = sessionFactory.openSession();
			Transaction tran = session.beginTransaction();
			Query query = session.createQuery("from Usercompany where email ="+email);
			
			/*String hql = "from Userfindjob where email ="+name;
			return (Userfindjob)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();*/
			List<Position> querylist = query.list();
			tran.commit();
			session.close();
			return querylist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public void deleteUser(String email){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		Query query1 = session.createQuery("delete from Userfindjob where email="+email);
		query1.executeUpdate();
		Query query2 = session.createQuery("delete from Usercompany where email="+email);
		query2.executeUpdate();
		tran.commit();
		session.close();
	}
}
