package com.qjcpjobshop.dao;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.qjcpjobshop.entity.Resume;
import com.qjcpjobshop.entity.Userfindjob;

@Repository
public class UserDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public Resume findP(String name) {
		String hql = "from Resume where email ='"+name+"'";
		return (Resume)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
	}
	public void savep(Resume p, HttpSession session1) {
		Userfindjob u = (Userfindjob) session1.getAttribute("user");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		//基本信息录入
		if(p.getName() != null) {
			Query query = session.createQuery("update Resume p set p.name = '"+p.getName()+"',p.sex = '"+p.getSex()
				+"',p.topDegree = '"+p.getTopDegree()+"',p.workYear = '"+p.getWorkYear()+"',p.currentState = '"+p.getCurrentState()
				+"',p.tel = '"+p.getTel()+"' where email = "+u.getEmail());  
	        query.executeUpdate();
		}
		//期望工作录入
		if(p.getExpectCity() != null) {
			Query query = session.createQuery("update Resume p set p.expectCity = '"+p.getExpectCity()+"',p.type = '"+p.getType()
				+"',p.expectPosition = '"+p.getExpectPosition()+"',p.expectSalary = '"+p.getExpectSalary()
				+"' where email = "+u.getEmail());  
			query.executeUpdate();
		}
		//工作经历录入
		if(p.getCompanyName() != null) {
			Query query = session.createQuery("update Resume p set p.companyName = '"+p.getCompanyName()+"',p.positionName = '"+
					p.getPositionName()+"',p.companyYearStart = '"+p.getCompanyYearStart()+"',p.companyMonthStart = '"+
					p.getCompanyMonthStart()+"',p.companyYearEnd = '"+p.getCompanyYearEnd()+
					"',p.companyMonthEnd = '"+p.getCompanyMonthEnd()+"' where email = "+u.getEmail());  
			query.executeUpdate();
		}
		//项目经验录入
		if(p.getProjectName() != null) {
			Query query = session.createQuery("update Resume p set p.projectMonthStart = '"+p.getProjectMonthStart()+
					"',p.projectName = '"+p.getProjectName()+"',p.thePost = '"+p.getThePost()+
					"',p.projectYearStart = '"+p.getProjectYearStart()+"',p.projectYearEnd = '"+p.getProjectYearEnd()+
					"',p.projectMonthEnd = '"+p.getProjectMonthEnd()+"' where email = "+u.getEmail());  
			query.executeUpdate();
		}
		//教育背景录入
		if(p.getSchoolName() != null) {
			Query query = session.createQuery("update Resume p set p.schoolName = '"+p.getSchoolName()+
					"',p.degree = '"+p.getDegree()+"',p.professionalName = '"+p.getProfessionalName()+
					"',p.schoolYearStart = '"+p.getSchoolYearStart()+"',p.schoolYearEnd = '"+p.getSchoolYearEnd()+
					"' where email = "+u.getEmail());  
			query.executeUpdate();
		}
		//自我描述录入
		if(p.getSelfDescription() != null) {
			Query query = session.createQuery("update Resume p set p.selfDescription = '"+p.getSelfDescription()+
					"' where email = "+u.getEmail());
			query.executeUpdate();
		}
		session1.setAttribute("resume", p);
		tx.commit();
		session.close();
	}
	public void insert(Userfindjob user){
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
