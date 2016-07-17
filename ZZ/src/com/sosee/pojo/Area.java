package com.sosee.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_area")
public class Area {
    private  int areaId;
	private String area;
	public Area() {
		super();
	}
	@Id
	@GeneratedValue
	@Column(name = "areaId")
	public int getAreaId() {
		return areaId;
	}
	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}
	@Column(name = "area")
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	@Override
	public String toString() {
		return "Area [areaId=" + areaId + ", area=" + area + "]";
	}
	
}
