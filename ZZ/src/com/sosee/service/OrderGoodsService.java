package com.sosee.service;

import java.util.List;

import com.sosee.pojo.OrderGoods;

public interface OrderGoodsService {
	public void saveOrderGoods(OrderGoods orderGoods);
	public void deleteOrderGoods(OrderGoods orderGoods);
	public void updateOrderGoods(OrderGoods orderGoods);
	public List<OrderGoods> getAllOrderGoods( );
	
	public List<OrderGoods> getOneOrderGoods(String orderNumber); 
}
