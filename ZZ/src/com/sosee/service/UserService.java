package com.sosee.service;

import com.sosee.pojo.User;

public interface UserService {
		
	public void save(User user);
	public boolean islogin(String email,String password);
	public void deleteUser(User user);
	public void updateUser(User user);
	public User getOneUser(String email);
}
