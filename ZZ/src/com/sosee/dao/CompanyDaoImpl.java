package com.sosee.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sosee.pojo.Company;
import com.sosee.pojo.User;

public class CompanyDaoImpl extends HibernateDaoSupport implements CompanyDao {
    private Company com;
    
	public Company getCom() {
		return com;
	}

	public void setCom(Company com) {
		this.com = com;
	}

	@Override
	public void save(Company com) {
		// TODO Auto-generated method stub
       this.getHibernateTemplate().save(com);
	}

	@SuppressWarnings("unchecked")
	@Override
	public boolean islogin(String email, String password) {
		// TODO Auto-generated method stub
		 
	        List<Company> coms=this.getHibernateTemplate().find("from Company c where c.email=?", email);  
   		if (coms.size()!=0) {
				com=coms.get(0);
				System.out.println("看结果："+com.toString());
				if(password.equals(com.getPassword())){
		        	return true;
		        }
			}
	        //this.getHibernateTemplate().find(queryString)
	       // User uu=list.get(0);
	        //System.out.println("看结果："+uu.toString());
	        
		return false;
	}

	@Override
	public void deleteCompany(Company com) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(com);
	}

	@Override
	public void updateCompany(Company com) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(com);
	}

	@Override
	public Company getOneCompany(String email) {
		// TODO Auto-generated method stub
		 List<Company> coms=this.getHibernateTemplate().find("from Company c where c.email=?", email);  
	   		if (coms.size()!=0) {
					com=coms.get(0);
					System.out.println("看结果："+com.toString());
				}
			return com;
	}

}
