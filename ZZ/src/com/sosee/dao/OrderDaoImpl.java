package com.sosee.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sosee.pojo.Order;

public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao {
    private Order order;
    
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	@Override
	public void saveOrder(Order order) {
		// TODO Auto-generated method stub
          this.getHibernateTemplate().save(order);
	}

	@Override
	public void deleteOrder(Order order) {
		// TODO Auto-generated method stub
          this.getHibernateTemplate().delete(order);
	}

	@Override
	public void updateOrder(Order order) {
		// TODO Auto-generated method stub
          this.getHibernateTemplate().update(order);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> getAllOrder() {
		// TODO Auto-generated method stub
		List<Order> orders=this.getHibernateTemplate().find("from Order o");
		return orders;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Order getOneOrder(String orderNumber) {
		// TODO Auto-generated method stub
		List<Order> orders=this.getHibernateTemplate().find("from Order o where o.orderNumber=?",orderNumber);
		if (orders.size()>0) {
			order=orders.get(0);
		}
		return order;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> getOrderById(String idString) {
		// TODO Auto-generated method stub
		List<Order> orders=this.getHibernateTemplate().find("from Order o where o.id=?",idString);
		
		return orders;
	}

}
