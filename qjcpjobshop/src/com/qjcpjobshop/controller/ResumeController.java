package com.qjcpjobshop.controller;

import java.io.File;
import java.io.IOException;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
		
		System.out.println("保存成功");
		return "jianli";
	}
	
	@RequestMapping(value="/jianli", method=RequestMethod.GET)
	public String Jianli(HttpSession session){
		System.out.println("进入简历");
		
		Userfindjob u = (Userfindjob) session.getAttribute("user");
		Resume re = resumeService.findR(u.getEmail());
		if(resumeService.findR(u.getEmail()) == null) {
			resumeService.sp(u.getEmail());
			return "jianli";
		}else {
			if(re.getName() != null) {
				session.setAttribute("resume1", re);
			}else{session.removeAttribute("resume1");}
			if(re.getExpectCity() != null) {
				session.setAttribute("resume2", re);
			}else{session.removeAttribute("resume2");}
			if(re.getCompanyName() != null) {
				session.setAttribute("resume3", re);
			}else{session.removeAttribute("resume3");}
			if(re.getPositionName() != null) {
				session.setAttribute("resume4", re);
			}else{session.removeAttribute("resume4");}
			if(re.getSchoolName() != null) {
				session.setAttribute("resume5", re);
			}else{session.removeAttribute("resume5");}
			if(re.getSelfDescription() != null) {
				session.setAttribute("resume6", re);
			}else{session.removeAttribute("resume6");}
		}

		return "jianli";
	}
	
	@RequestMapping(value="/preview", method=RequestMethod.GET)
	public String Preview(HttpSession session){
		Userfindjob u = (Userfindjob) session.getAttribute("user");
		Resume re = resumeService.findR(u.getEmail());
		if(resumeService.findR(u.getEmail()) == null) {
			resumeService.sp(u.getEmail());
			return "jianli";
		}else {
			if(re.getName() != null) {
				session.setAttribute("resume", re);
			}
		}

		return "preview";
	}
	
	@RequestMapping(value="/fileUpload", method=RequestMethod.POST)
	public String FileUpload(HttpServletRequest request,  
			 @RequestParam("file") MultipartFile file,HttpSession session){
		//如果文件不为空，写入上传路径
        if(!file.isEmpty()) {
            //上传文件路径
            String path = request.getServletContext().getRealPath("/upload/");
            //上传文件名
            String filename = file.getOriginalFilename();
            File filepath = new File(path,filename);
            session.setAttribute("resumsrc", path+ "/" + filename);
            System.out.println(filepath);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) { 
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            try {
				file.transferTo(new File(path + File.separator + filename));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        } 
		
		return "jianli";
	}
}
