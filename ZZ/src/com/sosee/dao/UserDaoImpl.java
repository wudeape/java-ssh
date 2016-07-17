package com.sosee.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import org.stringtemplate.v4.compiler.STParser.list_return;

import com.sosee.pojo.User;



public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	
	private User user;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public void save(User user) {
		// TODO Auto-generated method stub
		//this.template=getHibernateTemplate();
		this.getHibernateTemplate().save(user);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public boolean islogin(String email,String password) {
		// TODO Auto-generated method stub
		// String hql = "from User u where u.name=name";  
	       // @SuppressWarnings("unchecked")
	        User uu=new User();
			
	        List<User> users=this.getHibernateTemplate().find("from User u where u.email=?", email);  
      		if (users.size()!=0) {
				uu=users.get(0);
				 if(password.equals(uu.getPassword())){
			        	return true;
			        }
				System.out.println("看结果："+uu.toString());
			}
	        //this.getHibernateTemplate().find(queryString)
	       // User uu=list.get(0);
	        //System.out.println("看结果："+uu.toString());
	       
		return false;
	}

	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(user);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public User getOneUser(String email) {
		// TODO Auto-generated method stub
		 List<User> users=this.getHibernateTemplate().find("from User u where u.email=?", email);  
   		if (users.size()!=0) {
				user=users.get(0);
				System.out.println("看结果："+user.toString());
			}
		return user;
	}
	
      
    
     

	

	
}
