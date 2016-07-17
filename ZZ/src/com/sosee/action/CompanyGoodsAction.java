package com.sosee.action;
//厂家商品的操作
import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.sosee.dao.CompanyGoodsDao;
import com.sosee.pojo.Company;
import com.sosee.pojo.CompanyGoods;
import com.sosee.service.CompanyGoodsService;
import com.sosee.service.CompanyService;
import com.sun.net.httpserver.Authenticator.Success;

@SuppressWarnings("serial")
public class CompanyGoodsAction extends ActionSupport{
	private CompanyGoods comGoods;
	private CompanyGoodsDao comGoodsDao;
	private CompanyGoodsService comGoodsService;
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
	private List<CompanyGoods> cglists;//商品集合
	private File appearenceFile;
	private String email;
	private Company com;
	private CompanyService comService;
	
	public Company getCom() {
		return com;
	}
	public void setCom(Company com) {
		this.com = com;
	}
	public CompanyService getComService() {
		return comService;
	}
	public void setComService(CompanyService comService) {
		this.comService = comService;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public File getAppearenceFile() {
		return appearenceFile;
	}
	public void setAppearenceFile(File appearenceFile) {
		this.appearenceFile = appearenceFile;
	}
	public List<CompanyGoods> getCglists() {
		return cglists;
	}
	public void setCglists(List<CompanyGoods> cglists) {
		this.cglists = cglists;
	}
	public CompanyGoods getComGoods() {
		return comGoods;
	}
	public void setComGoods(CompanyGoods comGoods) {
		this.comGoods = comGoods;
	}
	public CompanyGoodsDao getComGoodsDao() {
		return comGoodsDao;
	}
	public void setComGoodsDao(CompanyGoodsDao comGoodsDao) {
		this.comGoodsDao = comGoodsDao;
	}
	public CompanyGoodsService getComGoodsService() {
		return comGoodsService;
	}
	public void setComGoodsService(CompanyGoodsService comGoodsService) {
		this.comGoodsService = comGoodsService;
	}
	
	public String getCgName() {
		return cgName;
	}
	public void setCgName(String cgName) {
		this.cgName = cgName;
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public double getWidth() {
		return width;
	}
	public void setWidth(double width) {
		this.width = width;
	}
	public double getLength() {
		return length;
	}
	public void setLength(double length) {
		this.length = length;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	public double getThickness() {
		return thickness;
	}
	public void setThickness(double thickness) {
		this.thickness = thickness;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getAppearence() {
		return appearence;
	}
	public void setAppearence(String appearence) {
		this.appearence = appearence;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCgId() {
		return cgId;
	}
	public void setCgId(String cgId) {
		this.cgId = cgId;
	}
	public String saveCompanyGoods() throws IOException{
		System.out.println("增加商品");
		comGoods.setCgName(getCgName());
		comGoods.setClassId(getClassId());
		comGoods.setWidth(getWidth());
		comGoods.setHeight(getHeight());
		comGoods.setLength(getLength());
		comGoods.setThickness(getThickness());
		comGoods.setPrice(getPrice());
		String pathString=logo();
		comGoods.setAppearence(pathString);
		com=comService.getOneCompany(getEmail());
		comGoods.setId(com.getId());
		System.out.println("添加的商品信息："+comGoods.toString());
		comGoodsService.saveCompanyGoods(comGoods);
		return SUCCESS;
		
	}
	public String logo() throws IOException{
		   //String realpath=ServletActionContext.getServletContext().getRealPath("/companyLogoImages");
		   String realpath="D:/tmp";
		   System.out.println("地址为："+realpath);
		   String imageFileName=null;
		   if (getAppearenceFile()!=null) {
			   imageFileName=getCgName();
			   imageFileName=imageFileName+"_logo.png";
			   System.out.println("文件名字"+imageFileName);
			   
			   File sFile=new File(realpath);
			   if(!sFile.exists()){
				   sFile.mkdirs();
				   System.out.println("文件夹创建成功");
			   }
			   realpath=realpath+"/"+imageFileName;
			File savefile=new File(sFile,imageFileName);
			//if(!savefile.getParentFile().exists()){
			//	savefile.getParentFile().mkdirs();
			//	System.out.println("文件夹创建成功");
				//FileUtils.copyFile(getFile(), savefile);
			    //ActionContext.getContext().put("message", "文件上传成功");
			//}
			
			FileUtils.copyFile(getAppearenceFile(), savefile);
		   }
		   return realpath;
	   }
	public String deleteCompanyGoods(){
		return null;
		
	}
	public String updateCompanyGoods(){
		return null;
		
	}
	public String query_mu(){
		System.out.println("进入mu方法");
		 cglists=comGoodsService.getCompanyGoods_mu();
		 setClassId(1);
		if (!cglists.isEmpty()) {
			
			System.out.println("商品已查出 木类");
			return SUCCESS;
		}
		System.out.println("为空");
		return ERROR;
	}
	public String query_jin(){
		System.out.println("进入jin方法");
		 setClassId(2);
		 cglists=comGoodsService.getCompanyGoods_jin();
		if (!cglists.isEmpty()) {
			
			System.out.println("商品已查出 jin类");
			return SUCCESS;
		}
		System.out.println("为空");
		return ERROR;
	}
	public String query_ruan(){
		System.out.println("进入ruan方法");
		 setClassId(3);
		 cglists=comGoodsService.getCompanyGoods_ruan();
		if (!cglists.isEmpty()) {
			
			System.out.println("商品已查出 ruan类");
			return SUCCESS;
		}
		System.out.println("为空");
		return ERROR;
	}
	public String query_gang(){
		System.out.println("进入gang方法");
		 setClassId(4);
		 cglists=comGoodsService.getCompanyGoods_gang();
		if (!cglists.isEmpty()) {
			
			System.out.println("商品已查出 gang类");
			return SUCCESS;
		}
		System.out.println("为空");
		return ERROR;
	}
	public String query_zhu(){
		System.out.println("进入zhu方法");
		 setClassId(5);
		 cglists=comGoodsService.getCompanyGoods_zhu();
		if (!cglists.isEmpty()) {
			
			System.out.println("商品已查出 竹类");
			return SUCCESS;
		}
		System.out.println("为空");
		return ERROR;
	}
	public CompanyGoods getOneCompanyGoods(){
		comGoods=comGoodsService.getOneCompanyGoods(cgName);
		return comGoods;
	}
}
