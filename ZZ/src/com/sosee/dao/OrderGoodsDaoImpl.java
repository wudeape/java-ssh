package com.sosee.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sosee.pojo.OrderGoods;

public class OrderGoodsDaoImpl extends HibernateDaoSupport implements OrderGoodsDao {
    
	@Override
	public void saveOrderGoods(OrderGoods orderGoods) {
		// TODO Auto-generated method stub
      this.getHibernateTemplate().save(orderGoods);
	}

	@Override
	public void deleteOrderGoods(OrderGoods orderGoods) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(orderGoods);
	}

	@Override
	public void updateOrderGoods(OrderGoods orderGoods) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(orderGoods);
	}

	@Override
	public List<OrderGoods> getAllOrderGoods() {
		// TODO Auto-generated method stub
		List<OrderGoods> oList=this.getHibernateTemplate().find("from OrderGoods o");
		return oList;
	}

	@Override
	public List<OrderGoods> getOneOrderGoods(String orderNumber) {
		// TODO Auto-generated method stub
		List<OrderGoods> oList=this.getHibernateTemplate().find("from OrderGoods o.orderNumber=?",orderNumber);
	    if(oList.size()>0){
	    	return oList;
	    }
		return oList;
	}

}
