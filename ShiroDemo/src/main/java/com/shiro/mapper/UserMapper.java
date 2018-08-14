package com.shiro.mapper;

import java.util.List;

import com.shiro.pojo.Permission;
import com.shiro.pojo.User;



public interface UserMapper {
	List<User> getUserByUser(User user);
	
	List<Permission> getMenus(int id);
	
	List<Permission> getPermission(int id);
}
