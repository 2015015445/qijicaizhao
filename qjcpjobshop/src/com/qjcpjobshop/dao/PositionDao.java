package com.qjcpjobshop.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

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
			p.setTotalCount(this.findPositionTotalCount("Position"));
			return p;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
