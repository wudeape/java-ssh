package com.sosee.action;
//有关于厂家的操作

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Request;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sosee.dao.CompanyDao;
import com.sosee.pojo.Company;
import com.sosee.service.CompanyService;

@SuppressWarnings("serial")
public class CompanyAction extends ActionSupport {
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
	private String[] agentId ;

	private int star;
	private int total;
   private Company com;
   private CompanyDao comDao;
   private CompanyService comService;
   private File logofile;//照片
   private File bussiFile;//营业执照
   
   public File getBussiFile() {
	return bussiFile;
}
public void setBussiFile(File bussiFile) {
	this.bussiFile = bussiFile;
}
public File getLogofile() {
	return logofile;
}
public void setLogofile(File logofile) {
	this.logofile = logofile;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getCompanyName() {
	return companyName;
}
public void setCompanyName(String companyName) {
	this.companyName = companyName;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getAreaId() {
	return areaId;
}
public void setAreaId(int areaId) {
	this.areaId = areaId;
}
public String getFixedPhone() {
	return fixedPhone;
}
public void setFixedPhone(String fixedPhone) {
	this.fixedPhone = fixedPhone;
}
public String getMobilePhone() {
	return mobilePhone;
}
public void setMobilePhone(String mobilePhone) {
	this.mobilePhone = mobilePhone;
}
public String getQq() {
	return qq;
}
public void setQq(String qq) {
	this.qq = qq;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getLogo() {
	return logo;
}
public void setLogo(String logo) {
	this.logo = logo;
}
public int getClickNumber() {
	return clickNumber;
}
public void setClickNumber(int clickNumber) {
	this.clickNumber = clickNumber;
}
public int getRank() {
	return rank;
}
public void setRank(int rank) {
	this.rank = rank;
}
public int getIsStick() {
	return isStick;
}
public void setIsStick(int isStick) {
	this.isStick = isStick;
}
public String getBusinessLicense() {
	return businessLicense;
}
public void setBusinessLicense(String businessLicense) {
	this.businessLicense = businessLicense;
}

public String[] getAgentId() {
	return agentId;
}
public void setAgentId(String[] agentId) {
	this.agentId = agentId;
}
//public String getAgentId() {
//	return agentId;
//}
//public void setAgentId(String agentId) {
//	this.agentId = agentId;
//}
public int getStar() {
	return star;
}
public void setStar(int star) {
	this.star = star;
}
public int getTotal() {
	return total;
}
public void setTotal(int total) {
	this.total = total;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Company getCom() {
	return com;
}
public void setCom(Company com) {
	this.com = com;
}
public CompanyDao getComDao() {
	return comDao;
}
public void setComDao(CompanyDao comDao) {
	this.comDao = comDao;
}
public CompanyService getComService() {
	return comService;
}
public void setComService(CompanyService comService) {
	this.comService = comService;
}
   public String Companylogin(String emailsString,String passowrdsString){
	System.out.println("进入companylogin函数1:"+emailsString+passowrdsString);
	   boolean flag=comService.islogin(emailsString,passowrdsString);
	   if (flag) {
			return SUCCESS;
		}
		return ERROR;
  }
   public String saveCompany() throws IOException{
	   
	   com.setCompanyName(getCompanyName());
	   com.setPassword(getPassword());
	   com.setName(getName());
	   com.setAreaId(getAreaId());
	   com.setEmail(getEmail());
	   com.setFixedPhone(getFixedPhone());
	   com.setMobilePhone(getMobilePhone());
	   com.setQq(getQq());
	   com.setAddress(getAddress());
	   //String realpath=ServletActionContext.getServletContext().getRealPath("/Companyimages");
	   String logoString=getName()+"_logo.png";
	   com.setLogo(logoString);
	   logo();//存储logo
	   //savephoto();
	   com.setClickNumber(0);
	   com.setRank(0);
	   com.setIsStick(0);
	   String businessLicenseString=getName()+"_bl.png";
	   com.setBusinessLicense(businessLicenseString);
	   bussiness();//存储营业执照
	   String[] aidString=getAgentId();
	   com.setAgentId(aidString[getAreaId()-1]);
	   com.setStar(5);
	   com.setTotal(0);
       
       comService.save(com);
       com.toString();
	   return SUCCESS;
	   
   }
   //存储logo照片
   public void logo() throws IOException{
	   //String realpath=ServletActionContext.getServletContext().getRealPath("/companyLogoImages");
	   String realpath="D:/companyLogoImages";
	   System.out.println("地址为："+realpath);
	   String imageFileName=null;
	   if (getLogofile()!=null) {
		   imageFileName=getName();
		   imageFileName=imageFileName+"_logo.png";
		   System.out.println("文件名字"+imageFileName);
		   File sFile=new File(realpath);
		   if(!sFile.exists()){
			   sFile.mkdirs();
			   System.out.println("文件夹创建成功");
		   }
		File savefile=new File(sFile,imageFileName);
		//if(!savefile.getParentFile().exists()){
		//	savefile.getParentFile().mkdirs();
		//	System.out.println("文件夹创建成功");
			//FileUtils.copyFile(getFile(), savefile);
		    //ActionContext.getContext().put("message", "文件上传成功");
		//}
		
		FileUtils.copyFile(getLogofile(), savefile);
	   }
   }
   //存储营业执照
   public void bussiness() throws IOException{
	   //String realpath=ServletActionContext.getServletContext().getRealPath("/companyBLImages");
	   String realpath="D:/companyBLImages";
	   System.out.println("地址为："+realpath);
	   String imageFileName=null;
	   if (getBussiFile()!=null) {
		   imageFileName=getName();
		   imageFileName=imageFileName+"_bl.png";
		   System.out.println("文件名字"+imageFileName);
		File savefile=new File(new File(realpath),imageFileName);
		if(!savefile.getParentFile().exists()){
			savefile.getParentFile().mkdirs();
			System.out.println("文件夹创建成功");
			//FileUtils.copyFile(getFile(), savefile);
		    //ActionContext.getContext().put("message", "文件上传成功");
		}
		FileUtils.copyFile(getLogofile(), savefile);
	   }
   }
   public void savephoto() throws IOException{
	   String root = ServletActionContext.getServletContext().getRealPath("/upload");
       File file=getLogofile();
       InputStream is = new FileInputStream(file);
       String naString=file.getName()+"_logo.png";
       OutputStream os = new FileOutputStream(new File(root, naString));
       
       System.out.println("fileFileName: " + getName());
       // 因为file是存放在临时文件夹的文件，我们可以将其文件名和文件路径打印出来，看和之前的fileFileName是否相同
       System.out.println("file: " + file.getName());
       System.out.println("file: " + file.getPath());
       
       byte[] buffer = new byte[500];
       int length = 0;
       
       while(-1 != (length = is.read(buffer, 0, buffer.length)))
       {
           os.write(buffer);
       }
       
       os.close();
       is.close();
       
   }
   public String register1(){
	   System.out.println("第一次厂家注册");
	   com.setMobilePhone(getMobilePhone());
	   System.out.println("phone:"+com.getMobilePhone());
	   
	   return SUCCESS;
	   
   }
   public String register2(){
	   com.setPassword(getPassword());
	   System.out.println("phone+password:"+getMobilePhone()+getPassword());
	   return SUCCESS;
	   
   }
   public String deleteCompany(){
	return null;
	   
   }
   public String updateCompany(){
	return null;
	   
   }
   public String Company(){
	return null;
	   
   }
   public Company getOnecCompany(String emailsString){
	   com=comService.getOneCompany(emailsString);
	   return com;
   }
   
}
