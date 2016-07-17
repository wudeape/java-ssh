package com.sosee.pojo;

public class Goods {
	private int classId;
	private String className;
	private String describe;
	public Goods() {
		super();
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	@Override
	public String toString() {
		return "Goods [classId=" + classId + ", className=" + className
				+ ", describe=" + describe + "]";
	}
	
}
