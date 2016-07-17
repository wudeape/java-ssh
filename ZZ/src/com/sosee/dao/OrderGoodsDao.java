package com.sosee.dao;

import java.util.List;

import com.sosee.pojo.Order;
import com.sosee.pojo.OrderGoods;

public interface OrderGoodsDao {
	public void saveOrderGoods(OrderGoods orderGoods);
	public void deleteOrderGoods(OrderGoods orderGoods);
	public void updateOrderGoods(OrderGoods orderGoods);
	public List<OrderGoods> getAllOrderGoods( );
	
	public List<OrderGoods> getOneOrderGoods(String orderNumber); 
}
