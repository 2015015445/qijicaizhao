package com.qjcpjobshop.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.qjcpjobshop.entity.Resume;
import com.qjcpjobshop.entity.Usercompany;
import com.qjcpjobshop.entity.Userfindjob;
import com.qjcpjobshop.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private UserService userService;

	@RequestMapping(value="/regist1", method=RequestMethod.GET)
	public String Regist(){
		System.out.println("进入注册界面");
		return "register";
	}
	
	@RequestMapping(value="/regist", method=RequestMethod.POST)
	public String regist(@RequestParam("email") String email, @RequestParam("password") String password,@RequestParam("type") String type,HttpSession session){
		System.out.println("registing.....");
		try{
			if(type.equals("0")){
				if(userService.findByUserName(email)!=null){
					return "registfail";
				}else{
					Userfindjob user = new Userfindjob();
					user.setEmail(email);
					user.setPassword(password);
					userService.registUser(user);
					System.out.println("registuser");
					JOptionPane.showMessageDialog(null,"注册成功!", "系统提示", JOptionPane.INFORMATION_MESSAGE);
					return "login";
				}
			}else{
				if(userService.findByCompanyName(email)!=null){
					return "registfail";
				}else{
					Usercompany company = new Usercompany();
					company.setEmail(email);
					company.setPassword(password);
					userService.registCompany(company);
					System.out.println("registcompany");
					JOptionPane.showMessageDialog(null,"注册成功!", "系统提示", JOptionPane.INFORMATION_MESSAGE);
					return "login";
				}
			}
		}catch(Exception e){
			e.printStackTrace();
			return "registfail";
		}
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String Login(@RequestParam("email") String name, @RequestParam("password") String password,HttpSession session,Model model){
		System.out.println("登陆中");
		if(name.equals("admin")&&password.equals("admin")){
			return "admin";
		}
		Userfindjob u = userService.login(name, password);
		if(u!=null){
			if(u.getPassword().equals(password)){
				session.setAttribute("id", name);
				session.setAttribute("user", u);

				Cookie cookie = new Cookie(name,password);
				session.setAttribute("cookie", cookie);
				model.addAttribute("email", cookie.getName());
				return "index1";
			}else{
				return "redirect:/position/index?pageNum=1";

			}
		}else{
			
			return "loginfail";
		}
	}
	@RequestMapping(value="/login1")
	public String Login1(){
		return "login";
	}
	
	@RequestMapping(value="/index")
	public String index(HttpSession session,Model model){
		if(session.getAttribute("cookie")!=null){
			Cookie cookie = (Cookie) session.getAttribute("cookie");
			model.addAttribute("email", cookie.getName());
			return "index1";
		}else{
			return "index";
		}
	}
	
	@RequestMapping(value="/signout")
	public String signOut(HttpSession session,Model model){
		session.setAttribute("cookie",null);
		model.addAttribute("email", null);
		
		return "index";
	}
}
