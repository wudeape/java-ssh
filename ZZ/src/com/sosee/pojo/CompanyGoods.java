package com.sosee.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_company_goods")
public class CompanyGoods {
	
	private String cgName;
	private int classId;
	private double width;
	private double length;
	private double height;
	private double thickness;
	private double price;
	private String appearence;
	private String id;
	private String cgId;
	public CompanyGoods() {
		super();
	}
	@Column(name = "cgName",length=40)
	public String getCgName() {
		return cgName;
	}
	public void setCgName(String cgName) {
		this.cgName = cgName;
	}
	@Column(name = "classId",length=10)
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	@Column(name = "width",length=20)
	public double getWidth() {
		return width;
	}
	public void setWidth(double width) {
		this.width = width;
	}
	@Column(name = "length",length=20)
	public double getLength() {
		return length;
	}
	public void setLength(double length) {
		this.length = length;
	}
	@Column(name = "height",length=20)
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	@Column(name = "thickness",length=20)
	public double getThickness() {
		return thickness;
	}
	public void setThickness(double thickness) {
		this.thickness = thickness;
	}
	@Column(name = "price",length=20)
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Column(name = "appearence",length=20)
	public String getAppearence() {
		return appearence;
	}
	public void setAppearence(String appearence) {
		this.appearence = appearence;
	}
	@Column(name = "id",length=40)
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "cgId",length=40)
	public String getCgId() {
		return cgId;
	}
	public void setCgId(String cgId) {
		this.cgId = cgId;
	}
	@Override
	public String toString() {
		return "CompanyGoods [cgName=" + cgName + ", classId=" + classId
				+ ", width=" + width + ", length=" + length + ", height="
				+ height + ", thickness=" + thickness + ", price=" + price
				+ ", appearence=" + appearence + ", id=" + id + ", cgId="
				+ cgId + "]";
	}
	
}
