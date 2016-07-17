package com.sosee.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_nationality")
public class Nationality {
  private String	nationalityId;
  private String nationality;
public Nationality() {
	super();
}
@Id
@GeneratedValue
@Column(name = "nationalityId")
public String getNationalityId() {
	return nationalityId;
}
public void setNationalityId(String nationalityId) {
	this.nationalityId = nationalityId;
}
@Column(name = "nationality")
public String getNationality() {
	return nationality;
}
public void setNationality(String nationality) {
	this.nationality = nationality;
}
  
}
