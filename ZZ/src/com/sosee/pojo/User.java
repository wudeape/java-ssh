package com.sosee.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "t_user")
public class User {
private String id;

private String sex;
private String name;
private int nationalityId;
private String email;
private String password;
private String identityCard;
private String Mobilephone;
private String shippingAddress;
private String lastIp;
private Date lastTime;
private Date registerTime;
private int star;
private int total;


public User() {
	super();
}
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
@Column(name = "name")
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
@Column(name = "password")
public String getPassword() {
	return password;
}
public void setPassword(String pasword) {
	this.password = pasword;
}
@Column(name = "sex")
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
@Column(name = "nationalityId")
public int getNationalityId() {
	return nationalityId;
}
public void setNationalityId(int nationalityId) {
	this.nationalityId = nationalityId;
}
@Column(name = "email")
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
@Column(name = "identityCard")
public String getIdentityCard() {
	return identityCard;
}
public void setIdentityCard(String identityCard) {
	this.identityCard = identityCard;
}
@Column(name = "Mobilephone")
public String getMobilephone() {
	return Mobilephone;
}
public void setMobilephone(String mobliephone) {
	Mobilephone = mobliephone;
}
@Column(name = "shippingAddress")
public String getShippingAddress() {
	return shippingAddress;
}
public void setShippingAddress(String shippingAddress) {
	this.shippingAddress = shippingAddress;
}
@Column(name = "lastIp")
public String getLastIp() {
	return lastIp;
}
public void setLastIp(String lastIp) {
	this.lastIp = lastIp;
}
@Column(name = "lastTime" )
public Date getLastTime() {
	return lastTime;
}
public void setLastTime(Date lastTime) {
	this.lastTime = lastTime;
}
@Column(name = "registerTime")
public Date getRegisterTime() {
	return registerTime;
}
public void setRegisterTime(Date registerTime) {
	this.registerTime = registerTime;
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
	return "User [id=" + id + ", sex=" + sex + ", name=" + name
			+ ", nationlityId=" + nationalityId + ", email=" + email
			+ ", passsword=" + password + ", identityCard=" + identityCard
			+ ", Mobliephone=" + Mobilephone + ", shippingAddress="
			+ shippingAddress + ", lastIp=" + lastIp + ", registerTime="
			+ registerTime + ", lastTime=" + lastTime + ", star=" + star
			+ ", total=" + total + "]";
}


}
