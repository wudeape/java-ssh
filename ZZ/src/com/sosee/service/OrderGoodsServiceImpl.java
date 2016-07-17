package com.sosee.service;

import java.util.List;

import com.sosee.dao.OrderGoodsDao;
import com.sosee.pojo.OrderGoods;

public class OrderGoodsServiceImpl implements OrderGoodsService {
    private OrderGoods orderGoods;
    private OrderGoodsDao orderGoodsDao;
    
	public OrderGoods getOrderGoods() {
		return orderGoods;
	}

	public void setOrderGoods(OrderGoods orderGoods) {
		this.orderGoods = orderGoods;
	}

	public OrderGoodsDao getOrderGoodsDao() {
		return orderGoodsDao;
	}

	public void setOrderGoodsDao(OrderGoodsDao orderGoodsDao) {
		this.orderGoodsDao = orderGoodsDao;
	}

	@Override
	public void saveOrderGoods(OrderGoods orderGoodss) {
		// TODO Auto-generated method stub
       orderGoodsDao.saveOrderGoods(orderGoodss);
	}

	@Override
	public void deleteOrderGoods(OrderGoods orderGoodss) {
		// TODO Auto-generated method stub
		orderGoodsDao.deleteOrderGoods(orderGoodss);
	}

	@Override
	public void updateOrderGoods(OrderGoods orderGoodss) {
		// TODO Auto-generated method stub
        orderGoodsDao.updateOrderGoods(orderGoodss);
	}

	@Override
	public List<OrderGoods> getAllOrderGoods() {
		// TODO Auto-generated method stub
		List<OrderGoods> oList=orderGoodsDao.getAllOrderGoods();
		return oList;
	}

	@Override
	public List<OrderGoods> getOneOrderGoods(String orderNumber) {
		// TODO Auto-generated method stub
		List<OrderGoods> oList=orderGoodsDao.getOneOrderGoods(orderNumber);
		return oList;
	}

}
