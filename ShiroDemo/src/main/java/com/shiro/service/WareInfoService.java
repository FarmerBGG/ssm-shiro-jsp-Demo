package com.shiro.service;

import java.util.List;

import com.shiro.pojo.Wareinfo;



public interface WareInfoService {
	List<Wareinfo> getAllWares();
	int addWare(Wareinfo ware);
	int delWareById(int id);

}
