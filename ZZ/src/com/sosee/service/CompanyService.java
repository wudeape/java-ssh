package com.sosee.service;

import com.sosee.pojo.Company;

public interface CompanyService {
	public void save(Company com);
	public boolean islogin(String email,String password);
	public void deleteCompany(Company com);
	public void updateCompany(Company com);
	
	public Company getOneCompany(String email);
	
}
