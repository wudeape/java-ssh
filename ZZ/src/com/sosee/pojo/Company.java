package com.sosee.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_company")
public class Company {
	private String id;
	private String companyName;
	private String password;
	private String name;
	private int areaId;
	private String email;
	private String fixedPhone;
	private String mobilePhone;
	private String qq;
	private String address;
	private String logo;
	private int clickNumber;
	private int rank;
	private int isStick;
	private String businessLicense;
	private String agentId ;

	private int star;
	private int total;
	public Company() {
		super();
	}
	@Id
	@GeneratedValue
	@Column(name="id")
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Column(name = "companyName")
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	@Column(name = "password")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Column(name = "name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(name = "areaId")
	public int getAreaId() {
		return areaId;
	}
	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}
	@Column(name = "email")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name = "fixedPhone")
	public String getFixedPhone() {
		return fixedPhone;
	}
	public void setFixedPhone(String fixedPhone) {
		this.fixedPhone = fixedPhone;
	}
	@Column(name = "mobilePhone")
	public String getMobilePhone() {
		return mobilePhone;
	}
	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	@Column(name = "qq")
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	@Column(name = "address")
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Column(name = "logo")
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	@Column(name = "clickNumber")
	public int getClickNumber() {
		return clickNumber;
	}
	public void setClickNumber(int clickNumber) {
		this.clickNumber = clickNumber;
	}
	@Column(name = "rank")
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	@Column(name = "isStick")
	public int getIsStick() {
		return isStick;
	}
	public void setIsStick(int isStick) {
		this.isStick = isStick;
	}
	@Column(name = "businessLicense")
	public String getBusinessLicense() {
		return businessLicense;
	}
	public void setBusinessLicense(String businessLicense) {
		this.businessLicense = businessLicense;
	}
	@Column(name = "agentId")
	public String getAgentId() {
		return agentId;
	}
	public void setAgentId(String agentId) {
		this.agentId = agentId;
	}
	@Column(name = "star")
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	@Column(name = "total")
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "Company [id=" + id + ", companyName=" + companyName
				+ ", password=" + password + ", name=" + name + ", areaId="
				+ areaId + ", email=" + email + ", fixedPhone=" + fixedPhone
				+ ", mobilePhone=" + mobilePhone + ", qq=" + qq + ", address="
				+ address + ", logo=" + logo + ", clickNumber=" + clickNumber
				+ ", rank=" + rank + ", isStick=" + isStick
				+ ", businessLicense=" + businessLicense + ", agentId="
				+ agentId + ", star=" + star + ", total=" + total + "]";
	}
	
}
