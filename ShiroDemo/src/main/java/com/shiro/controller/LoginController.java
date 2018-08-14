package com.shiro.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shiro.pojo.User;
import com.shiro.service.UserService;

@Controller
public class LoginController {
	@Resource
	private UserService userService;
	
	@RequestMapping("/tologin")
	public String toLogin(){
		return "login";
	}
	
	/*@RequestMapping("/dologin")
	public String doLogin(String usercode,String password){
		User user=new User();
		user.setUsercode(usercode);
		List<User> users=userService.getUserByUser(user);
		if(users.size()!=0){
			User user2=users.get(0);
			if(password.equalsIgnoreCase(user2.getPassword())){
				return "redirect:/main";
			}
			return "redirect:/tologin";
		}
		return "redirect:/tologin";
	}*/

	
	@RequestMapping("/login")
	public String login(String username,String password,boolean rememberMe,HttpServletRequest request){
		Subject subject=SecurityUtils.getSubject();
		UsernamePasswordToken token=new UsernamePasswordToken(username, password);
		try {
			if(subject.isAuthenticated()){
				System.out.println("login()前，已认证");
				return "redirect:/main";
			}
			token.setRememberMe(rememberMe);
			System.out.println(rememberMe);
			subject.login(token);
			System.out.println("rememberMe:"+subject.isRemembered());
			if(subject.isAuthenticated()){
				System.out.println("login()后，认证成功");
			}
		}catch (AuthenticationException e) {
			// TODO: handle exception
			request.setAttribute("loginerror", "登录失败！");
			
			e.printStackTrace();
			return "login";
		}catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("loginerror", "登录失败,未知异常!");
			e.printStackTrace();
			return "login";
		}
		return "redirect:/main";
	}
	@RequestMapping("/main")
	public String tomain(){
		return "main";
	}
}
