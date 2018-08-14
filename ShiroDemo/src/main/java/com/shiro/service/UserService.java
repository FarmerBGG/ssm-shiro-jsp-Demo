package com.shiro.service;

import java.util.List;

import com.shiro.pojo.Permission;
import com.shiro.pojo.User;



public interface UserService {
	List<User> getUserByUser(User user);
	//����userid �õ��˵�
	List<Permission> getMenus(int id);
	
	List<Permission> getPermission(int id);
}
