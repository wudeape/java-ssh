package com.sosee.service;

import java.util.List;

import com.sosee.dao.OrderDao;
import com.sosee.pojo.Order;

public class OrderServiceImpl implements OrderService {
    private OrderDao orderDao;
    private Order order;
    
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public OrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	@Override
	public void saveOrder(Order orderr) {
		// TODO Auto-generated method stub
         orderDao.saveOrder(orderr);
	}

	@Override
	public void deleteOrder(Order orderr) {
		// TODO Auto-generated method stub
         orderDao.deleteOrder(orderr);
	}

	@Override
	public void updateOrder(Order orderr) {
		// TODO Auto-generated method stub
        orderDao.updateOrder(orderr);
	}

	@Override
	public List<Order> getAllOrder() {
		// TODO Auto-generated method stub
	    List<Order> orders=orderDao.getAllOrder();
		return orders;
	}

	@Override
	public Order getOneOrder(String orderNumber) {
		// TODO Auto-generated method stub
		order=orderDao.getOneOrder(orderNumber);
		return order;
	}

	@Override
	public List<Order> getOrderById(String idString) {
		// TODO Auto-generated method stub
		List<Order> orders=orderDao.getOrderById(idString);
		return orders;
	}

}
