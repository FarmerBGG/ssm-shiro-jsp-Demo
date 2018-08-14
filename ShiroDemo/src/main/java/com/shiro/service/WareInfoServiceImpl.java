package com.shiro.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shiro.mapper.WareinfoMapper;
import com.shiro.pojo.Wareinfo;


@Service
public class WareInfoServiceImpl implements WareInfoService {
	@Resource
	private WareinfoMapper wareinfoMapper;

	@Override
	public List<Wareinfo> getAllWares() {
		// TODO Auto-generated method stub
		List<Wareinfo> wares=wareinfoMapper.getAllWares();
		return wares;
	}

	@Override
	public int addWare(Wareinfo ware) {
		// TODO Auto-generated method stub
		int num=wareinfoMapper.addWare(ware);
		return num;
	}

	@Override
	public int delWareById(int id) {
		// TODO Auto-generated method stub
		int num=wareinfoMapper.delWareById(id);
		return num;
	}

}
