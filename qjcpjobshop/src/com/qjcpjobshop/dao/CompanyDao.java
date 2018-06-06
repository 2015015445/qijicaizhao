package com.qjcpjobshop.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.qjcpjobshop.entity.Company;
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
	
	public Company findCompanyByEmail(String email){
		/*Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		Query query = session.createQuery("from Userfindjob where email ="+email);*/
		
		String hql = "from Company where email ='"+email+"'";
		return (Company)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
		/*List<Position> querylist = query.list();
		tran.commit();
		session.close();
		return querylist;*/
	}
	
	public List<Company> findCompanyByField(int pageNum, int pageSize,String field){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql="from Company c where c.industryfield like '%"+field+"%'";
		Query query = session.createQuery(hql);
		query.setFirstResult((pageNum-1)*pageSize);
		query.setMaxResults(pageSize);
//		query.setParameter(0, "%"+field+"%");
		List<Company> list = query.list();
		System.out.println("查找"+field+"成功");
		System.out.println(hql);
		tran.commit();
		session.close();
		return list;
	}
	
	public int findCompanyCount(){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		Query query = session.createQuery("from Company");
		List<Position> querylist = query.list();
		tran.commit();
		session.close();
		return querylist.size();
	}
	
	public List<Company> findCompanyByPage(int pageNum, int pageSize){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql="from Company";
		Query query = session.createQuery(hql);
		query.setFirstResult((pageNum-1)*pageSize);
		query.setMaxResults(pageSize);
		List<Company> list = query.list();
		tran.commit();
		session.close();
		return list;
	}
}
