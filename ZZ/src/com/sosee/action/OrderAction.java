package com.sosee.action;

import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sosee.dao.OrderDao;
import com.sosee.pojo.CompanyGoods;
import com.sosee.pojo.Order;
import com.sosee.pojo.OrderGoods;
import com.sosee.service.CompanyGoodsService;
import com.sosee.service.OrderGoodsService;
import com.sosee.service.OrderService;

@SuppressWarnings("serial")
public class OrderAction extends ActionSupport{
	private Order order;
	private OrderDao orderDao;
	private OrderService orderService;
	private OrderGoods orderGoods;
	private OrderGoodsService orderGoodsService;
	private String cgId;
	private String email;
	private int number;
	private CompanyGoods comGoods;
	private CompanyGoodsService  comGoodsService;
	private List<Order> orderLists;
	
	
	public List<Order> getOrderLists() {
		return orderLists;
	}
	public void setOrderLists(List<Order> orderLists) {
		this.orderLists = orderLists;
	}
	public OrderGoods getOrderGoods() {
		return orderGoods;
	}
	public void setOrderGoods(OrderGoods orderGoods) {
		this.orderGoods = orderGoods;
	}
	public OrderGoodsService getOrderGoodsService() {
		return orderGoodsService;
	}
	public void setOrderGoodsService(OrderGoodsService orderGoodsService) {
		this.orderGoodsService = orderGoodsService;
	}
	public CompanyGoodsService getComGoodsService() {
		return comGoodsService;
	}
	public void setComGoodsService(CompanyGoodsService comGoodsService) {
		this.comGoodsService = comGoodsService;
	}
	public CompanyGoods getComGoods() {
		return comGoods;
	}
	public void setComGoods(CompanyGoods comGoods) {
		this.comGoods = comGoods;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
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
	public OrderService getOrderService() {
		return orderService;
	}
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	public String getCgId() {
		return cgId;
	}
	public void setCgId(String cgId) {
		this.cgId = cgId;
	}
	public String  userbuy(){
		System.out.println("进入userbuy:"+getNumber()+"  "+getCgId());
        String orderNumberString=null;
        orderNumberString=getEmail()+(int)(Math.random()*10000);
        comGoods=comGoodsService.getOneCompanyGoodsbyid(getCgId());
        double total=getNumber()*comGoods.getPrice();
        Date date=new Date();
        order.setOrderNumber(orderNumberString);
        order.setTotal(total);
        order.setId(getEmail());
        order.setOerderTime(date);
        order.setAgentId(1);
        order.setIdentifyingTime(date);
        order.setState(1);
        System.out.println("订单1：+"+order.toString());
        orderService.saveOrder(order);
        
        System.out.println("开始存储ordergoods");
        orderGoods.setOrderNumber(orderNumberString);
        orderGoods.setCgId(getCgId());
        orderGoods.setNumber(getNumber());
        orderGoods.setTotal(total);
        orderGoods.setUnitPrice(comGoods.getPrice());
        System.out.println("订单2：+"+orderGoods.toString());
        orderGoodsService.saveOrderGoods(orderGoods);
		return SUCCESS;
		
	}
	public String query_name(){
		System.out.println("查询订单");
		String eString=(String) ActionContext.getContext().getSession().get("user_email");
		setEmail(eString);
		System.out.println("r人"+eString+getEmail());
		orderLists=orderService.getOrderById(getEmail());
        System.out.println("订单长度："+orderLists.size());
		return SUCCESS;
	}
}
