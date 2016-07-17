package com.sosee.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "t_order")
public class Order {
	private String orderNumber;
	private double total;
	private String id;
	private Date oerderTime;
	private int agentId;
	private Date identifyingTime;
	private int state;
	public Order() {
		super();
	}
	@Id
	@Column(name="orderNumber")
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	@Column(name="total")
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	@Column(name="id")
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Column(name="oerderTime")
	public Date getOerderTime() {
		return oerderTime;
	}
	public void setOerderTime(Date oerderTime) {
		this.oerderTime = oerderTime;
	}
	@Column(name="agentId")
	public int getAgentId() {
		return agentId;
	}
	public void setAgentId(int agentId) {
		this.agentId = agentId;
	}
	@Column(name="identifyingTime")
	public Date getIdentifyingTime() {
		return identifyingTime;
	}
	public void setIdentifyingTime(Date identifyingTime) {
		this.identifyingTime = identifyingTime;
	}
	@Column(name="state")
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Order [orderNumber=" + orderNumber + ", total=" + total
				+ ", id=" + id + ", oerderTime=" + oerderTime + ", agentId="
				+ agentId + ", identifyingTime=" + identifyingTime + ", state="
				+ state + "]";
	}
	
}
