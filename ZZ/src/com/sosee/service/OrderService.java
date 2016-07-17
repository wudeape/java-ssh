package com.sosee.service;

import java.util.List;

import com.sosee.pojo.Order;

public interface OrderService {
	public void saveOrder(Order order);
	public void deleteOrder(Order order);
	public void updateOrder(Order order);
	public List<Order> getAllOrder( );
	public List<Order> getOrderById(String idString);
	public Order getOneOrder(String orderNumber);
}
