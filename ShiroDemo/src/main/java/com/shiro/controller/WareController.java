package com.shiro.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresGuest;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shiro.pojo.Wareinfo;
import com.shiro.service.WareInfoService;



@Controller
public class WareController {
	@Resource
	private WareInfoService wareService;
	
	@RequestMapping("/warelist")
	public String towarelist(Model model){
		List<Wareinfo> wares=wareService.getAllWares();
		model.addAttribute("wares", wares);
		return "wareinfolist";
	}
	
	@RequestMapping("/addware")
	@RequiresPermissions("ware:create")
	public String addware(){
		return "wareinfoadd";
	}
	
	@RequestMapping("/doaddware")
	@RequiresPermissions("ware:create")
	public String doaddware(Wareinfo ware){
		int num=wareService.addWare(ware);
		return "redirect:/warelist";
	}
	
	@RequestMapping("/delware")
	@RequiresPermissions("ware:delete")
	public String delware(int id){
		int num=wareService.delWareById(id);
		return "redirect:/warelist";	
	}
	
	@RequestMapping("/refuse")
	public String torefuse(){
		return "refuse";
	}
}
