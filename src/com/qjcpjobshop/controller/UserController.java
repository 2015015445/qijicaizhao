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
public class UserController extends HttpServlet {
	@Resource
	private UserService userService;
	
	@RequestMapping(value="/regist", method=RequestMethod.POST)
	public String regist(Userfindjob user){
//		if(bindingResult.hasErrors()){
//			model.addAttribute("user", user);
//			return "register";
//		}else{
//			session.setAttribute("user", user);
//		model.addAttribute("user", user);
		try{
//			System.out.println(user.getId());
//			System.out.println(user.getName());
//			System.out.println(user.getPassword());
//			System.out.println(user.getPhone());
			if(userService.findByName(user.getFindJobEmail())!=null){
				return "registfail";
			}
			userService.regist(user);
			return "login";
		}catch(Exception e){
			e.printStackTrace();
			return "registfail";
		}
		
//		if(result){
//			System.out.print("注册失败，请重试!");
//			return "register";
//		}else{
//			System.out.print("注册成功!");
//			return "login";
//		}
		
//			return "login";
//		}
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String Login(@RequestParam("email") String name, @RequestParam("password") String password,HttpSession session){
		Userfindjob u = userService.login(name, password);
//		if(u!=null){
//			if(u.getPassword().equals(password)){
				return "index";
//			}
//			return "loginfail";
//		}else{
//			return "loginfail";
//		}
	}
}
