package com.shiro.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.stereotype.Service;

import com.shiro.mapper.UserMapper;
import com.shiro.pojo.Permission;
import com.shiro.pojo.User;


@Service
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserMapper userMapper;

	@Override
	public List<User> getUserByUser(User user) {
		// TODO Auto-generated method stub
		List<User> users=userMapper.getUserByUser(user);
		return users;
	}

	@Override
	public List<Permission> getMenus(int id) {
		// TODO Auto-generated method stub
		List<Permission> menus=userMapper.getMenus(id);
		return menus;
	}

	@Override
	public List<Permission> getPermission(int id) {
		// TODO Auto-generated method stub
		
		List<Permission> permission=userMapper.getPermission(id);
		return permission;
	}

}
