package com.sosee.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_agent")
public class Agent {
	private int agentId ;
	private String a_name;
	private String contract;
	private String areaId;
	private String sex;
	private String Mobilephone;
	public Agent() {
		super();
	}
	@Id
	@GeneratedValue
	@Column(name = "agentId")
	public int getAgentId() {
		return agentId;
	}
	public void setAgentId(int agentId) {
		this.agentId = agentId;
	}
	@Column(name = "a_name")
	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
	}
	@Column(name = "contract")
	public String getContract() {
		return contract;
	}
	public void setContract(String contract) {
		this.contract = contract;
	}
	@Column(name = "areaId")
	public String getAreaId() {
		return areaId;
	}
	public void setAreaId(String areaId) {
		this.areaId = areaId;
	}
	
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getMobilephone() {
		return Mobilephone;
	}
	public void setMobilephone(String mobilephone) {
		Mobilephone = mobilephone;
	}
	@Override
	public String toString() {
		return "Agent [agentId=" + agentId + ", a_name=" + a_name
				+ ", contract=" + contract + ", areaId=" + areaId + ", sex="
				+ sex + ", Mobilephone=" + Mobilephone + "]";
	}
	
}
