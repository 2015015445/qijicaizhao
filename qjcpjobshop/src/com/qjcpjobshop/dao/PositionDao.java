package com.qjcpjobshop.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;


import com.qjcpjobshop.entity.CompanyProduct;
import com.qjcpjobshop.entity.Page;
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
	
	public int findPositionTotalCount(String type) {
		String hql = "select count(*) from Position";
		int count = ( (Long) this.sessionFactory.getCurrentSession().createQuery(hql).iterate().next()).intValue();
		return count;
	}
	
	public void delete(int id){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql="delete from Position p where p.id=?";
		Query query  = session.createQuery(hql); 
		query.setInteger(0,id);
		tran.commit();
		int i =query.executeUpdate();
		session.close();
	}
	
	public Page findPositionByPage(int num, int size) {
		try{
			Query query = this.sessionFactory.getCurrentSession().createQuery("from Position order by id");
			query.setFirstResult(num*size-size);
			query.setMaxResults(size);
			List<Position> list = query.list();
			Page p = new Page(num,size);
			p.setList(list);
			p.setTotalCount(this.findPositionTotalCount("Position"));
			return p;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
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
	
	public List<Position> findPositionById(int id1){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		Query query = session.createQuery("from Position where id1 ='"+id1+"'");
		List<Position> querylist = query.list();
		tran.commit();
		session.close();
		return querylist;
	}
	
	public List<Position> findPosition(int size){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		Query query = session.createQuery("from Position where size ='"+size+"'");
		List<Position> querylist = query.list();
		tran.commit();
		session.close();
		return querylist;
	}
	
	public void useless(int id,int size){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql="update Position p set p.size=? where p.id=?";
		Query query  = session.createQuery(hql); 
		query.setInteger(0,size);
		query.setInteger(1,id);
		tran.commit();
		int i =query.executeUpdate();
		session.close();
	}
	
	
	public int searchPositionTotalCount(String type, String name) {
		String hql = "select count(*) from Position where name like ?";
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, "%"+name+"%");
		int count = ( (Long) query.iterate().next()).intValue();
		return count;
	}
	
	public Page searchPosition(int num, int size, String name){
		try{
			String hql = "from Position a where a.name like ?";  
			Query query=this.sessionFactory.getCurrentSession().createQuery(hql);     
			query.setString(0,"%"+name+"%");
			query.setFirstResult(num*size-size);
			query.setMaxResults(size);
			List<Position> list = query.list();
			Page p = new Page(num,size);
			p.setList(list);
			int totalnum = this.searchPositionTotalCount("Position", name);
			p.setTotalCount(totalnum);
			if(totalnum != 0) {
				return p;
			}else {
				return null;
			}
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public int findPositionTypeTotalCount(String type, String name) {
		String hql = "select count(*) from Position where type like ?";
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, "%"+name+"%");
		int count = ( (Long) query.iterate().next()).intValue();
		return count;
	}
	
	public Page searchPositionByType(int num, int size, String name){
		try{
			String hql = "from Position a where a.type like ?";  
			Query query=this.sessionFactory.getCurrentSession().createQuery(hql);     
			query.setString(0,"%"+name+"%");
			query.setFirstResult(num*size-size);
			query.setMaxResults(size);
			List<Position> list = query.list();
			Page p = new Page(num,size);
			p.setList(list);
			int totalnum = this.findPositionTypeTotalCount("Position", name);
			p.setTotalCount(totalnum);
			if(totalnum != 0) {
				return p;
			}else {
				return null;
			}
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public Position findJobDetail(int id) {
		Query query = this.sessionFactory.getCurrentSession().createQuery("from Position p where p.id ="+id);
		return (Position) query.uniqueResult();
	}
}
