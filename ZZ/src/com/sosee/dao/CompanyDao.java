package com.sosee.dao;

import com.sosee.pojo.Company;
import com.sosee.pojo.User;

public interface CompanyDao {
	public void save(Company com);
	public boolean islogin(String email,String password);
	public void deleteCompany(Company com);
	public void updateCompany(Company com);
	public Company getOneCompany(String email);
}
