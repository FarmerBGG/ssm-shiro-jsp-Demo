package com.shiro.mapper;

import java.util.List;

import com.shiro.pojo.Wareinfo;




public interface WareinfoMapper {
	List<Wareinfo> getAllWares();
	int addWare(Wareinfo ware);
	int delWareById(int id);
}