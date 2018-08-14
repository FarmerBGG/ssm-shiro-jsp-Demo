package com.shiro.realm;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.stereotype.Component;

import com.mysql.fabric.xmlrpc.base.Data;
import com.shiro.pojo.Permission;
import com.shiro.pojo.User;
import com.shiro.service.UserService;
public class MyRealm extends AuthorizingRealm {
	@Resource
	private UserService userService;
	public String getName(){
		return "MyRealm";
	}
	/**
	 * 授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
		// TODO Auto-generated method stub
		System.out.println("join in 授权"+new Data());
		String username=(String) principal.getPrimaryPrincipal();
		User user0=new User();
		user0.setUsercode(username);
		List<User> users = userService.getUserByUser(user0);
		//都到授权的地步了，当然是认证过了
		User user=users.get(0);
		//权限表
		List<Permission> pers=userService.getPermission(user.getId());
		//将权限字符串存到集合
		List<String> permissions=new ArrayList<String>();
		for (Permission per : pers) {
			permissions.add(per.getPercode());
		}
		
		SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
		info.addStringPermissions(permissions);
		//info.addRoles(roles);
		return info;
	}
	/**
	 * 认证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// TODO Auto-generated method stub
		//获取登录名
		System.out.println(token.getPrincipal());
		String username=(String)token.getPrincipal();
		//根据登录名获取用户信息
		User user0=new User();
		user0.setUsercode(username);
		List<User> users = userService.getUserByUser(user0);
		User user=null;
		
		if(users == null){
			throw new UnknownAccountException("用户名不正确！");
		}
		user=users.get(0);
		String password =user.getPassword();
		System.out.println(username+"////"+password);
		//得到盐
		ByteSource salt=ByteSource.Util.bytes(user.getSalt());
		SimpleAuthenticationInfo info=new SimpleAuthenticationInfo(username, password, salt, this.getName());
		return info;
	}
	/*@Test
	public void m5(){
		//获取盐值加密结果				密码		盐
		System.out.print(new Md5Hash("123456", "lisi"));
	}*/
}
