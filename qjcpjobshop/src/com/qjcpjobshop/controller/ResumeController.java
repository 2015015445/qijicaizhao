package com.qjcpjobshop.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.qjcpjobshop.entity.Resume;
import com.qjcpjobshop.entity.Userfindjob;
import com.qjcpjobshop.service.ResumeService;

@Controller
public class ResumeController {

	@Resource
	private ResumeService resumeService;
	
	
	@RequestMapping(value="/jianlis", method=RequestMethod.POST)
	public String Jianli1(Resume p, HttpSession session){
		System.out.println("保存简历");
		
		Userfindjob u = (Userfindjob) session.getAttribute("user");
		
		p.setEmail(u.getEmail());
		resumeService.savep(p,session);
		Resume resume = resumeService.findR(u.getEmail());
		
		System.out.println("保存成功");
		return "jianli";
	}
	
	@RequestMapping(value="/jianli", method=RequestMethod.GET)
	public String Jianli(){
		System.out.println("进入简历");
		return "jianli";
	}
	
	@RequestMapping(value="/FileUpload", method=RequestMethod.GET)
	public String FileUpload(){
		System.out.println("fileupload");
		return "jianli";
	}
}
