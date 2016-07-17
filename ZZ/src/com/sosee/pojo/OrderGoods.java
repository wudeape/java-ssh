package com.sosee.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_order_goods")
public class OrderGoods {
	private String orderNumber;
	private String cgId;
	private int number;
	private double unitPrice;
	private double total;
	private int id;
	public OrderGoods() {
		super();
	}
	 @Id
	 @GeneratedValue(strategy=GenerationType.IDENTITY)
	 @Column(name = "id", nullable = false)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name="orderNumber")
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	@Column(name="cgId")
	public String getCgId() {
		return cgId;
	}
	public void setCgId(String cgId) {
		this.cgId = cgId;
	}
	@Column(name="number")
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	@Column(name="unitPrice")
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	@Column(name="total")
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "OrderGoods [orderNumber=" + orderNumber + ", cgId=" + cgId
				+ ", number=" + number + ", unitPrice=" + unitPrice
				+ ", total=" + total + "]";
	}
	
}
