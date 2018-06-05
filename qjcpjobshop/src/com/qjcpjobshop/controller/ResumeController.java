package com.qjcpjobshop.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.Authenticator;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.Transport;
import javax.mail.URLName;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
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
	
	@RequestMapping(value="resumesend")
	public String resumeSend(@RequestParam("resumeName") int resumenum) throws ServletException,
	IOException {
		Properties props = System.getProperties();
		props.put("mail.smtp.host", "smtp.163.com");
		props.put("mail.smtp.auth", "true");
		Session session = Session.getInstance(props, new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() { /* 鑻ユ湇鍔″櫒闇�瑕佽韩浠借璇侊紝Sission浼氳嚜鍔ㄨ皟鐢ㄨ繖涓柟娉� */
				return new PasswordAuthentication("he2510211460@163.com", "123456he");
			}
		});
		Message msg = new MimeMessage(session);
		try {
			msg.setFrom(new InternetAddress("he2510211460@163.com"));
			msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse("a15733125218@163.com"));
			msg.setSubject("aa test");
			msg.setText("hahahha");
			msg.setHeader("X-Mailer", "smtpsend");
			msg.setSentDate(new Date());
			Transport.send(msg);
			System.out.println("send Ok"+resumenum);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "jobdetail";
	}
}
