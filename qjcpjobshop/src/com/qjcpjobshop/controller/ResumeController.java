package com.qjcpjobshop.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.annotation.Resource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.NoSuchProviderException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.Transport;
import javax.mail.URLName;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
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
//			msg.setFrom(new InternetAddress("he2510211460@163.com"));
//			msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse("2510211460@qq.com"));
//			msg.setSubject("来自Kris的警告");
//			msg.setContent("<h1>说好的请我吃麻辣烫呢，都多长时间了，是不是想死了</h1>","text/html");
//			msg.setHeader("X-Mailer", "smtpsend");
//			msg.setSentDate(new Date());
//			Transport.send(msg);
//			System.out.println("send Ok"+resumenum);
			 // 创建默认的 MimeMessage 对象。
	         MimeMessage message = new MimeMessage(session);
	 
	         // Set From: 头部头字段
	         message.setFrom(new InternetAddress("he2510211460@163.com"));
	 
	         // Set To: 头部头字段
	         message.addRecipient(Message.RecipientType.TO,new InternetAddress("2510211460@qq.com"));
	 
	         // Set Subject: 头字段
	         message.setSubject("This is the Subject Line!");
	 
	         // 创建消息部分
	         BodyPart messageBodyPart = new MimeBodyPart();
	 
	         // 消息
	         messageBodyPart.setText("This is message body");
	        
	         // 创建多重消息
	         Multipart multipart = new MimeMultipart();
	 
	         // 设置文本消息部分
	         multipart.addBodyPart(messageBodyPart);
	 
	         // 附件部分
	         messageBodyPart = new MimeBodyPart();
	         String filename = "C:/Users/acer/Desktop/qwe.jpg";
	         DataSource source = new FileDataSource(filename);
	         messageBodyPart.setDataHandler(new DataHandler(source));
	         messageBodyPart.setFileName(filename);
	         multipart.addBodyPart(messageBodyPart);
	 
	         // 发送完整消息
	         message.setContent(multipart );
	 
	         //   发送消息
	         Transport.send(message);
	         System.out.println("Sent message successfully....");
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "jobdetail";
	}
}
