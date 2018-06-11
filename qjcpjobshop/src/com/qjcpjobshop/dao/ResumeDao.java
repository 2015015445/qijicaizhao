package com.qjcpjobshop.dao;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.qjcpjobshop.entity.Page;
import com.qjcpjobshop.entity.Resume;
import com.qjcpjobshop.entity.ResumeReceived;
import com.qjcpjobshop.entity.Userfindjob;

@Repository
public class ResumeDao {

	@Resource
	private SessionFactory sessionFactory;
	
	public Resume findR(String name) {
		String hql = "from Resume where email ='"+name+"'";
		System.out.println(name);
		return (Resume)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
		
//		String hql = "from Userfindjob where email ='"+name+"'";
//		return (Userfindjob)sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
	}
	public void sp(String p) {
		try{
			Resume re = new Resume();
			re.setEmail(p);
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.save(re);
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	public void savep(Resume p, HttpSession session1) {
		Userfindjob u = (Userfindjob) session1.getAttribute("user");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		//基本信息录入
		if(p.getName() != null) {
			Query query = session.createQuery("update Resume p set p.name = '"+p.getName()+"',p.sex = '"+p.getSex()
				+"',p.topDegree = '"+p.getTopDegree()+"',p.workYear = '"+p.getWorkYear()+"',p.currentState = '"+p.getCurrentState()
				+"',p.tel = '"+p.getTel()+"' where email = '"+u.getEmail()+"'");  
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
				+"' where email = '"+u.getEmail()+"'");  
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
					"',p.companyMonthEnd = '"+p.getCompanyMonthEnd()+"' where email = '"+u.getEmail()+"'");  
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
					"',p.projectMonthEnd = '"+p.getProjectMonthEnd()+"',p.projectDescription = '"+p.getProjectDescription()+"' where email = '"+u.getEmail()+"'");  
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
					"' where email = '"+u.getEmail()+"'");  
			query.executeUpdate();
			tx.commit();
			session.close();
			Resume resume = this.findR(u.getEmail());
			session1.setAttribute("resume5", resume);
		}
		//自我描述录入
		if(p.getSelfDescription() != null) {
			Query query = session.createQuery("update Resume p set p.selfDescription = '"+p.getSelfDescription()+
					"' where email = '"+u.getEmail()+"'");
			query.executeUpdate();
			tx.commit();
			session.close();
			Resume resume = this.findR(u.getEmail());
			session1.setAttribute("resume6", resume);
		}
	}
	public int findCompanyResumesCount(String email) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		Query query = session.createQuery("from ResumeReceived where companyemail='"+email+"'");
		List querylist = query.list();
		tran.commit();
		session.close();
		return querylist.size();
	}
	public Page findResumes(int num, int size, String email, int type) {
		try{
			Query query = this.sessionFactory.getCurrentSession().createQuery("from ResumeReceived where companyemail='"
		+email+"' and type="+type);
			query.setFirstResult(num*size-size);
			query.setMaxResults(size);
			List list = query.list();
			Page p = new Page(num,size);
			p.setList(list);
			p.setTotalCount(this.findCompanyResumesCount(email));
			return p;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void updateResumeReceivedType(int id, int type) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		Query query = session.createQuery("update ResumeReceived r set r.type ="+type+" where r.id ="+id);
		query.executeUpdate();
		tran.commit();
		session.close();
	}
	
	public ResumeReceived findRrByEmail(String remail, String cemail, String id) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		Query query = session.createQuery("from ResumeReceived r where r.resumeemail='"+remail+
				"' and r.companyemail='"+cemail+"' and r.positionid='"+id+"'");
		ResumeReceived r = (ResumeReceived) query.uniqueResult();
		tran.commit();
		session.close();
		return r;
	}
	
	public void saveResumeReceived(ResumeReceived rr) {
		try {
			Session session = sessionFactory.openSession();
			Transaction tran  = session.beginTransaction();
			ResumeReceived r = this.findRrByEmail(rr.getResumeemail(), rr.getCompanyemail(), rr.getPositionid());
			if(r == null) {
				session.save(rr);
			} else {
				session.update(r);
			}
//			session.saveOrUpdate(rr);
			tran.commit();
			session.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
