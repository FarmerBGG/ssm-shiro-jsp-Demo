package com.shiro.pojo;

import java.util.List;
//���л���Ŀ����Ϊ�˷����л���ʵ�ּ�ס�ҵĹ��ܡ�
public class User implements java.io.Serializable  {
    private Integer id;

    private String usercode;

    private String password;

    private String salt;
    
	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsercode() {
        return usercode;
    }

    public void setUsercode(String usercode) {
        this.usercode = usercode == null ? null : usercode.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt == null ? null : salt.trim();
    }
}