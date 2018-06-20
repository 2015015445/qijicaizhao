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
	
	
	public List<Company> findCompanyByLocation(int pageNum, int pageSize,String field){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql="from Company c where c.location like '%"+field+"%'";
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
	
	public List<Company> findCompanyByStage(int pageNum, int pageSize,String field){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql="from Company c where c.stageofdevelopment like '%"+field+"%'";
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
	
	public void updateMyCompany(String name,String briefintroduction,int id){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql="update Company c set c.name=?,c.briefintroduction=? where c.id=?";
		Query query  = session.createQuery(hql); 
		query.setString(0,name);
		query.setString(1,briefintroduction);
		query.setInteger(2,id);
		int i =query.executeUpdate();
		System.out.println(i);
		session.close();
	}
	
	public void updateProduct(String name,String url,String introduction,int id){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql="update CompanyProduct c set c.name=?,c.url=?,c.introduction=? where c.id=?";
		Query query  = session.createQuery(hql); 
		query.setString(0,name);
		query.setString(1,url);
		query.setString(2,introduction);
		query.setInteger(3,id);
		int i =query.executeUpdate();
		System.out.println(i);
		session.close();
	}
	
	public void updateCompanyIntroduction(String detailintroduction,int id){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql="update Company c set c.detailintroduction=? where c.id=?";
		Query query  = session.createQuery(hql); 
		query.setString(0,detailintroduction);
		query.setInteger(1,id);
		int i =query.executeUpdate();
		System.out.println(i);
		session.close();
	}
	
	public void updateMyCompany2(String location,String industryfield,String scale,String url,int id){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql="update Company c set c.location=?,c.industryfield=?,c.scale=?,c.url=? where c.id=?";
		Query query  = session.createQuery(hql); 
		query.setString(0,location);
		query.setString(2,industryfield);
		query.setString(3,scale);
		query.setString(4,url);
		query.setInteger(5,id);
		int i =query.executeUpdate();
		System.out.println(i);
		session.close();
	}
	
	public void updateMyCompany3(String thefinancingstage,int id){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql="update Company c set c.thefinancingstage=? where c.id=?";
		Query query  = session.createQuery(hql); 
		query.setString(0,thefinancingstage);
		query.setInteger(1,id);
		int i =query.executeUpdate();
		System.out.println(i);
		session.close();
	}
	
	public void updateFoundingTeam(String name,String positionnow,String weibourl,String introduction,int id){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql="update FoundingTeam f set f.name=?,f.positionnow=?,f.weibourl=?,f.introduction=? where f.id=?";
		Query query  = session.createQuery(hql); 
		query.setString(0,name);
		query.setString(1,positionnow);
		query.setString(2,weibourl);
		query.setString(3,introduction);
		query.setInteger(4,id);
		int i =query.executeUpdate();
		System.out.println(i);
		session.close();
	}
	
	public void deleteProduct(int id){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql="delete from CompanyProduct c where c.id=?";
		Query query  = session.createQuery(hql); 
		query.setInteger(0,id);
		int i =query.executeUpdate();
		System.out.println(i);
		session.close();
	}
}
