package com.qjcpjobshop.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String regist(@RequestParam("email") String name, @RequestParam("password") String password,HttpSession session){
		System.out.println("registing.....");
		try{
			if(userService.findByName(name)!=null){
				return "registfail";
			}
			Userfindjob user = new Userfindjob();
			user.setEmail(name);
			user.setPassword(password);
			userService.regist(user);
			System.out.println("regist");
			return "login";
		}catch(Exception e){
			e.printStackTrace();
			return "registfail";
		}
		

	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String Login(@RequestParam("email") String name, @RequestParam("password") String password,HttpSession session){
		System.out.println("登陆中");
		Userfindjob u = userService.login(name, password);
		if(u!=null){
			if(u.getPassword().equals(password)){
				session.setAttribute("id", name);
				return "index";
			}
			return "loginfail";
		}else{
			return "loginfail";
		}
	}
	@RequestMapping(value="/login1")
	public String Login1(){
		System.out.println("slkdjf");
		return "login";
	}
}
