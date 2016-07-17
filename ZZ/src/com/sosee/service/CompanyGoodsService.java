package com.sosee.service;

import java.util.List;

import com.sosee.pojo.CompanyGoods;

public interface CompanyGoodsService {
	public void saveCompanyGoods(CompanyGoods comgoods);
	public void deleteCompanyGoods(CompanyGoods comgoods);
	public void updateCompanyGoods(CompanyGoods comgoods);
	public List<CompanyGoods> getAllCompanyGoods( );
	public List<CompanyGoods> getCompanyGoods_mu( );
	public List<CompanyGoods> getCompanyGoods_jin( );
	public List<CompanyGoods> getCompanyGoods_ruan( );
	public List<CompanyGoods> getCompanyGoods_gang( );
	public List<CompanyGoods> getCompanyGoods_zhu( );
	public CompanyGoods getOneCompanyGoods(String cgName);
	public CompanyGoods getOneCompanyGoodsbyid(String cgId);
}
