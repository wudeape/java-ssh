package com.sosee.service;

import java.util.List;

import com.sosee.dao.CompanyGoodsDao;
import com.sosee.pojo.CompanyGoods;

public class CompanyGoodsServiceImpl implements CompanyGoodsService {
    private CompanyGoodsDao comGoodsDao;
    private CompanyGoods comGoods;
	public CompanyGoods getComGoods() {
		return comGoods;
	}

	public void setComGoods(CompanyGoods comGoods) {
		this.comGoods = comGoods;
	}

	public void setComGoodsDao(CompanyGoodsDao comGoodsDao) {
		this.comGoodsDao = comGoodsDao;
	}

	public CompanyGoodsDao getComGoodsDao() {
		return comGoodsDao;
	}

	

	@Override
	public void saveCompanyGoods(CompanyGoods comgoods) {
		// TODO Auto-generated method stub
		comGoodsDao.saveCompanyGoods(comgoods);
	}

	@Override
	public void deleteCompanyGoods(CompanyGoods comgoods) {
		// TODO Auto-generated method stub
		comGoodsDao.deleteCompanyGoods(comgoods);
	}

	@Override
	public void updateCompanyGoods(CompanyGoods comgoods) {
		// TODO Auto-generated method stub
		comGoodsDao.updateCompanyGoods(comgoods);
	}

	@Override
	public List<CompanyGoods>  getAllCompanyGoods() {
		// TODO Auto-generated method stub
		List<CompanyGoods> cgs=comGoodsDao.getAllCompanyGoods();
		return cgs;
	}

	@Override
	public CompanyGoods getOneCompanyGoods(String cgName) {
		// TODO Auto-generated method stub
		comGoods=comGoodsDao.getOneCompanyGoods(cgName);
		return comGoods;
	}

	@Override
	public List<CompanyGoods> getCompanyGoods_mu() {
		// TODO Auto-generated method stub
		List<CompanyGoods> cgs=comGoodsDao.getCompanyGoods_mu();
		return cgs;
		
	}

	@Override
	public List<CompanyGoods> getCompanyGoods_jin() {
		// TODO Auto-generated method stub
		List<CompanyGoods> cgs=comGoodsDao.getCompanyGoods_jin();
		return cgs;
	}

	@Override
	public List<CompanyGoods> getCompanyGoods_ruan() {
		// TODO Auto-generated method stub
		List<CompanyGoods> cgs=comGoodsDao.getCompanyGoods_ruan();
		return cgs;
	}

	@Override
	public List<CompanyGoods> getCompanyGoods_gang() {
		// TODO Auto-generated method stub
		List<CompanyGoods> cgs=comGoodsDao.getCompanyGoods_gang();
		return cgs;
	}

	@Override
	public List<CompanyGoods> getCompanyGoods_zhu() {
		// TODO Auto-generated method stub
		List<CompanyGoods> cgs=comGoodsDao.getCompanyGoods_zhu();
		return cgs;
	}

	@Override
	public CompanyGoods getOneCompanyGoodsbyid(String cgId) {
		// TODO Auto-generated method stub
		comGoods=comGoodsDao.getOneCompanyGoodsbyid(cgId);
		return comGoods;
	}

}
