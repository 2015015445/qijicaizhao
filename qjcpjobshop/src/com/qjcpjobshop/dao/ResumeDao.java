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
public class ResumeDao {

	@Resource
	private SessionFactory sessionFactory;
	
	public Resume findR(String name) {
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
	        tx.commit();
			session.close();
			Resume resume = this.findR(u.getEmail());
			session1.setAttribute("resume1", resume);
		}
		//期望工作录入
		if(p.getExpectCity() != null) {
			Query query = session.createQuery("update Resume p set p.expectCity = '"+p.getExpectCity()+"',p.type = '"+p.getType()
				+"',p.expectPosition = '"+p.getExpectPosition()+"',p.expectSalary = '"+p.getExpectSalary()
				+"' where email = "+u.getEmail());  
			query.executeUpdate();
			tx.commit();
			session.close();
			Resume resume = this.findR(u.getEmail());
			session1.setAttribute("resume2", resume);
		}
		//工作经历录入
		if(p.getCompanyName() != null) {
			Query query = session.createQuery("update Resume p set p.companyName = '"+p.getCompanyName()+"',p.positionName = '"+
					p.getPositionName()+"',p.companyYearStart = '"+p.getCompanyYearStart()+"',p.companyMonthStart = '"+
					p.getCompanyMonthStart()+"',p.companyYearEnd = '"+p.getCompanyYearEnd()+
					"',p.companyMonthEnd = '"+p.getCompanyMonthEnd()+"' where email = "+u.getEmail());  
			query.executeUpdate();
			tx.commit();
			session.close();
			Resume resume = this.findR(u.getEmail());
			session1.setAttribute("resume3", resume);
		}
		//项目经验录入
		if(p.getProjectName() != null) {
			Query query = session.createQuery("update Resume p set p.projectMonthStart = '"+p.getProjectMonthStart()+
					"',p.projectName = '"+p.getProjectName()+"',p.thePost = '"+p.getThePost()+
					"',p.projectYearStart = '"+p.getProjectYearStart()+"',p.projectYearEnd = '"+p.getProjectYearEnd()+
					"',p.projectMonthEnd = '"+p.getProjectMonthEnd()+"' where email = "+u.getEmail());  
			query.executeUpdate();
			tx.commit();
			session.close();
			Resume resume = this.findR(u.getEmail());
			session1.setAttribute("resume4", resume);
		}
		//教育背景录入
		if(p.getSchoolName() != null) {
			Query query = session.createQuery("update Resume p set p.schoolName = '"+p.getSchoolName()+
					"',p.degree = '"+p.getDegree()+"',p.professionalName = '"+p.getProfessionalName()+
					"',p.schoolYearStart = '"+p.getSchoolYearStart()+"',p.schoolYearEnd = '"+p.getSchoolYearEnd()+
					"' where email = "+u.getEmail());  
			query.executeUpdate();
			tx.commit();
			session.close();
			Resume resume = this.findR(u.getEmail());
			session1.setAttribute("resume5", resume);
		}
		//自我描述录入
		if(p.getSelfDescription() != null) {
			Query query = session.createQuery("update Resume p set p.selfDescription = '"+p.getSelfDescription()+
					"' where email = "+u.getEmail());
			query.executeUpdate();
			tx.commit();
			session.close();
			Resume resume = this.findR(u.getEmail());
			session1.setAttribute("resume6", resume);
		}
	}
}
