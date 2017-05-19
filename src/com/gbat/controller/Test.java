package com.gbat.controller;

import java.awt.image.BufferedImage;
import java.awt.image.RenderedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gbat.dao.UserMapDAO;
import com.gbat.impl.UserMapperImpl;
import com.gbat.pojo.User;
import com.gbat.util.ImageAction;
import com.gbat.util.MsgAction;
import com.gbat.util.SessionKill;
import com.sun.image.codec.jpeg.ImageFormatException;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import com.sun.java_cup.internal.runtime.Symbol;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import sun.rmi.transport.proxy.HttpReceiveSocket;


@Controller
@RequestMapping(value = "/")
public class Test {
	
	@Resource
	private UserMapDAO userMapDAO = null;
	
	@RequestMapping(value = "homePage")
	public ModelAndView texta(HttpServletRequest request){
		
		System.out.println("TesthomePage");
		ModelAndView mv = new ModelAndView();	
		mv.addObject("msg", "helloabao");
		mv.setViewName("homePage");
		return mv;
	
	}
	
	@RequestMapping(value = "regist")
	public ModelAndView regist(){
		
		System.out.println("Testregist");
		ModelAndView mv = new ModelAndView();	
		mv.addObject("msg", "helloabao");
		mv.setViewName("registPage");
		return mv;
	
	}
	
	@RequestMapping(value = "login")
	public ModelAndView login(){
		
		System.out.println("Testlogin");
		ModelAndView mv = new ModelAndView();	
		mv.addObject("msg", "helloabao");
		mv.setViewName("loginPage");
		return mv;
	
	}
	
	@RequestMapping(value = "mydisk")
	public ModelAndView mydisk(){
		
		System.out.println("Testmydisk");
		ModelAndView mv = new ModelAndView();	
		mv.addObject("msg", "helloabao");
		mv.setViewName("myDisk");
		return mv;
	
	}
	
	@RequestMapping(value = "billlist")
	public ModelAndView billlist(){
		
		System.out.println("Testbilllist");
		ModelAndView mv = new ModelAndView();	
		mv.addObject("msg", "helloabao");
		mv.setViewName("billList");
		return mv;
	
	}
	
	@RequestMapping(value = "usercenter")
	public ModelAndView usercenter(){
		
		System.out.println("Testusercenter");
		ModelAndView mv = new ModelAndView();	
		mv.addObject("msg", "helloabao");
		mv.setViewName("userCenter");
		return mv;
	
	}
	
	@RequestMapping(value = "download")
	public ModelAndView download(){
		
		System.out.println("Testdownload");
		ModelAndView mv = new ModelAndView();	
		mv.addObject("msg", "helloabao");
		mv.setViewName("downLoad");
		return mv;
	
	}
	
	@RequestMapping(value = "pwdchange")
	public ModelAndView pwdchange(HttpServletRequest request){
		
		System.out.println("Testpwdchange");
		SessionKill sk = new SessionKill();
		sk.kill(request);
		ModelAndView mv = new ModelAndView();	
		mv.addObject("msg", "helloabao");
		mv.setViewName("pwdChange");
		return mv;
	
	}
	
	@RequestMapping(value = "image")
	public void image(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		
		ImageAction imageAction = new ImageAction();
		String number = null;
		BufferedImage image = null;
		try {
			 image = imageAction.execute();
			 number = imageAction.getNumber();
			 session = request.getSession();
			 session.setAttribute("number", number);
			 
		} catch (ImageFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		  ServletOutputStream out = response.getOutputStream();
	      JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
	      encoder.encode(image);
	      out.flush();
	      out.close();
	
	}
	
	@RequestMapping(value = "doLogin")
	public ModelAndView doLogin(HttpServletRequest request,String username,String password){
		
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		System.out.println("TestdoLogin");
		User user = userMapDAO.findByname(username);
		if(user==null){
			mv.setViewName("loginPage");
		}
		else{
			if(user.getPassword().equals(password)){
				
				System.out.println(user.getNickname());
				session.setAttribute("nickname", user.getNickname());
				session.setAttribute("islogin", 1);
				mv.setViewName("homePage");
				
			}else {
				session.setAttribute("islogin", 0);
				mv.setViewName("loginPage");
			}		
		}
	
		return mv;	
	}

	@RequestMapping(value = "exit")
	public ModelAndView exit(HttpServletRequest request){
		
		HttpSession session = request.getSession();
		session.setAttribute("islogin", 0);
		ModelAndView mv = new ModelAndView();	
		mv.setViewName("homePage");
		return mv;
	
	}
	
	
	//修改密码的action
	@RequestMapping(value = "modifyPassword")
	public @ResponseBody Map modifyPassword(HttpServletRequest request,String username,String code){
		
		String password = null;
		HttpSession session = request.getSession();
		List<User> list = new ArrayList<>();
		
		User user = userMapDAO.findByname(username);
		Map<String, Object> map = new HashMap<>();
		
		if(user==null){
			
			map.put("msg", "用户名错误");
			return map;
		}
		else{
			
			password = user.getPassword();
			if(session.getAttribute("number").equals(code)){
				
				session.setAttribute("username", username);
				map.put("msg", "OK");
				return map;
				
			}
			else {
				
				map.put("msg", "验证码错误");
				return map;

			}
			
		}		
				
	}
	
	//修改密码的方式短信还是其他
	@RequestMapping(value = "modifymode")
	public @ResponseBody Map modifymode(HttpServletRequest request){
		
		Map<String, Object> map = new HashMap<>();
		map.put("msg", "OK");
		return map;
			
				
	}

	//发送短信验证
	@RequestMapping(value = "msgsend")
	public @ResponseBody Map msgsend(HttpServletRequest request,String number){
		
		HttpSession session = request.getSession();
		
		MsgAction msgSend = new MsgAction();
		msgSend.setNumber(number);
		msgSend.msg();
		
		System.out.println(msgSend.getCode());
		session.setAttribute("code", msgSend.getCode());
		
	
		Map<String, Object> map = new HashMap<>();
		map.put("msg", "OK");
		return map;
	
						
	}
	
	@RequestMapping(value = "modifybyphone")
	public @ResponseBody Map modifybyphone(HttpServletRequest request,String msgcode){
		
		HttpSession session = request.getSession();
		Map<String, Object> map = new HashMap<>();
		String number = (String) session.getAttribute("code");
		System.out.println(msgcode);
		if(msgcode.equals(number)){
			
			map.put("msg", "OK");
			return map;			
		}
		else {
			map.put("msg", "验证码错误");
			return map;		
		}
						
	}
	
	@RequestMapping(value = "modifydone")
	public @ResponseBody Map modifydone(HttpServletRequest request,String newpassword,String confirmpassword){
		
		HttpSession session = request.getSession();
		Map<String, Object> map = new HashMap<>();
		String username = (String) session.getAttribute("username");
		System.out.println(username);
		User user = userMapDAO.findByname(username);
		
		if(user==null){			
			map.put("msg", "请回到忘记密码第一步确认用户名");
			return map;
		}else{
			if(newpassword.equals(confirmpassword)){
				
				user.setPassword(confirmpassword);
				userMapDAO.update(user);
				map.put("msg", "OK");
				return map;			
			}
			else {
				map.put("msg", "请确认两次输入密码一致");
				return map;		
			}
		}						
	}
	
	@RequestMapping(value = "doRegist")
	public @ResponseBody Map doRegist(HttpServletRequest request,String phonenumber,String password,
								String code,String confirmpassword){
		
		Map<String, Object> map = new HashMap<>();
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		System.out.println("TestdoRegist");
		User user = new User();
		user.setAuthority(0);
		user.setUsername(phonenumber);
		user.setNickname("guest");
		
		System.out.println(phonenumber+"##"+password+"##"+code+"##"+confirmpassword);
		
		if(code.equals(session.getAttribute("code"))){
			if(password.equals(confirmpassword)){
				user.setPassword(confirmpassword);
				System.out.println("OK");
				userMapDAO.add(user);
				map.put("msg", "OK");
				return map;	
				
			}
			else {
				System.out.println("确认密码一致");
				map.put("msg", "确认密码一致");
				return map;	
			}			
		}else{
			System.out.println("验证码错误");
			map.put("msg", "验证码错误");
			return map;				
		}
	}
	
//	@RequestMapping(value = "ab")
//	public @ResponseBody void ab(HttpServletRequest request,String msgcode){
//		
//		HttpSession session = request.getSession();
//		User user = userMapDAO.findByname("root");
//		user.setPassword("654321");
//		System.out.println(user);
//		userMapDAO.update(user);
//								
//	}
	
}
