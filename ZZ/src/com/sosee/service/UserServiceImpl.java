package com.sosee.service;

import javax.annotation.Resource;

import com.sosee.dao.UserDao;

import com.sosee.pojo.User;

public class UserServiceImpl implements UserService {
	@Resource
	private UserDao userDao;
    private User user;
    
	
	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public UserDao getUserDao() {
		return userDao;
	}


	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}


	@Override
	public void save(User user) {
		// TODO Auto-generated method stub
		//userDao=new UserDaoImpl();
		userDao.save(user);
	}


	@Override
	public boolean islogin(String email, String password) {
		// TODO Auto-generated method stub
		boolean flag=false;
		flag=userDao.islogin(email, password);
		return flag;
	}


	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		userDao.deleteUser(user);
	}


	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userDao.updateUser(user);
	}


	@Override
	public User getOneUser(String email) {
		// TODO Auto-generated method stub
		user=userDao.getOneUser(email);
		return user;
	}
	
}
