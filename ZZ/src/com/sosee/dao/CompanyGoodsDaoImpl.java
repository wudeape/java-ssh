package com.sosee.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sosee.pojo.CompanyGoods;

public class CompanyGoodsDaoImpl extends HibernateDaoSupport implements CompanyGoodsDao{
    private CompanyGoods comGoods;
    
	public CompanyGoods getComGoods() {
		return comGoods;
	}

	public void setComGoods(CompanyGoods comGoods) {
		this.comGoods = comGoods;
	}

	@Override
	public void saveCompanyGoods(CompanyGoods comgoods) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(comgoods);
	}

	@Override
	public void deleteCompanyGoods(CompanyGoods comgoods) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(comgoods);
	}

	@Override
	public void updateCompanyGoods(CompanyGoods comgoods) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(comgoods);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CompanyGoods> getAllCompanyGoods() {
		// TODO Auto-generated method stub
		List<CompanyGoods> cgs=this.getHibernateTemplate().find("from CompanyGoods ");
		return cgs;
	}

	@SuppressWarnings("unchecked")
	@Override
	public CompanyGoods getOneCompanyGoods(String cgName) {
		// TODO Auto-generated method stub
		List<CompanyGoods> cgs=this.getHibernateTemplate().find("from CompanyGoods c where c.cgName=?",cgName);
		if (cgs.size()!=0) {
			comGoods=cgs.get(0);
			System.out.println("看结果："+comGoods.toString());
		}
		return comGoods;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CompanyGoods> getCompanyGoods_mu() {
		// TODO Auto-generated method stub
		List<CompanyGoods> cgs=this.getHibernateTemplate().find("from CompanyGoods c where c.classId=1");
		if (cgs.size()>0) {
			System.out.println("查到数据库木类");
			return cgs;
		}
		System.out.println("未查到数据库木类");
		return cgs;
	}

	@Override
	public List<CompanyGoods> getCompanyGoods_jin() {
		// TODO Auto-generated method stub
		List<CompanyGoods> cgs=this.getHibernateTemplate().find("from CompanyGoods c where c.classId=2");
		if (cgs.size()>0) {
			
			return cgs;
		}
		
		return cgs;
	}

	@Override
	public List<CompanyGoods> getCompanyGoods_ruan() {
		// TODO Auto-generated method stub
		List<CompanyGoods> cgs=this.getHibernateTemplate().find("from CompanyGoods c where c.classId=3");
		if (cgs.size()>0) {
			
			return cgs;
		}
		
		return cgs;
	}

	@Override
	public List<CompanyGoods> getCompanyGoods_gang() {
		// TODO Auto-generated method stub
		List<CompanyGoods> cgs=this.getHibernateTemplate().find("from CompanyGoods c where c.classId=4");
		if (cgs.size()>0) {
			
			return cgs;
		}
		
		return cgs;
	}

	@Override
	public List<CompanyGoods> getCompanyGoods_zhu() {
		// TODO Auto-generated method stub
		List<CompanyGoods> cgs=this.getHibernateTemplate().find("from CompanyGoods c where c.classId=6");
		if (cgs.size()>0) {
			
			return cgs;
		}
		
		return cgs;
	}

	@SuppressWarnings("unchecked")
	@Override
	public CompanyGoods getOneCompanyGoodsbyid(String cgId) {
		// TODO Auto-generated method stub
		List<CompanyGoods> cgs=this.getHibernateTemplate().find("from CompanyGoods c where c.cgId=?",cgId);
		if (cgs.size()!=0) {
			comGoods=cgs.get(0);
			System.out.println("看结果："+comGoods.toString());
		}
		return comGoods;
	}

}
