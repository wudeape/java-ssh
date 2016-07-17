package com.sosee.service;

import com.sosee.dao.CompanyDao;
import com.sosee.pojo.Company;

public class CompanyServiceImpl implements CompanyService {
   private CompanyDao comDao;
   private Company com;
   
	public Company getCom() {
	return com;
}

public void setCom(Company com) {
	this.com = com;
}

	public CompanyDao getComDao() {
	return comDao;
}

public void setComDao(CompanyDao comDao) {
	this.comDao = comDao;
}

	@Override
	public void save(Company com) {
		// TODO Auto-generated method stub
        comDao.save(com);
	}

	@Override
	public boolean islogin(String email, String password) {
		// TODO Auto-generated method stub
		boolean flag=false;
		flag=comDao.islogin(email, password);
		return flag;
	}

	@Override
	public void deleteCompany(Company com) {
		// TODO Auto-generated method stub
        comDao.deleteCompany(com);
	}

	@Override
	public void updateCompany(Company com) {
		// TODO Auto-generated method stub
       comDao.updateCompany(com);
	}

	@Override
	public Company getOneCompany(String email) {
		// TODO Auto-generated method stub
		com=comDao.getOneCompany(email);
		return com;
	}

}
