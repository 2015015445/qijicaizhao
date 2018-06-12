package com.qjcpjobshop.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.qjcpjobshop.dao.ResumeDao;
import com.qjcpjobshop.entity.Page;
import com.qjcpjobshop.entity.Resume;
import com.qjcpjobshop.entity.ResumeReceived;

@Service
public class ResumeService {

	@Resource
	private ResumeDao resumeDao;
	
	public Resume findR(String name) {
		return resumeDao.findR(name);
	}
	public void sp (String p) {
		resumeDao.sp(p);
	}
	public void saveImg(String img, String email,HttpSession session) {
		resumeDao.saveImg(img, email, session);
	}
	public void savep(Resume p, HttpSession session) {
		resumeDao.savep(p, session);
	}
	public Page findResumes(int num, int size, String email,int type) {
		return resumeDao.findResumes(num, size, email,type);
	}
	
	public void updateResumeReceivedType(int id, int type) {
		resumeDao.updateResumeReceivedType(id, type);
	}
	
	public void saveResumeReceived(ResumeReceived r){
		resumeDao.saveResumeReceived(r);
	}
	
	public Page findMyPosition(int num, int size, String email) {
		return resumeDao.findMyPosition(num, size, email);
	}
	
	public Page findMyPosition(int num, int size, String email, int type) {
		return resumeDao.findMyPosition(num, size, email, type);
	}
}
