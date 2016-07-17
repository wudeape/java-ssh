package com.sosee.action;
//管理员和买家的操作
import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;




import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sosee.dao.CompanyDao;
import com.sosee.pojo.Company;
import com.sosee.pojo.User;
import com.sosee.service.CompanyService;
import com.sosee.service.UserService;


@SuppressWarnings("serial")
public class UserAction extends ActionSupport{
	private String sex;
	private String name;
	private int nationalityId;
	private String email;
	private String password;
	private String identityCard;
	private String Mobilephone;
	private String shippingAddress;
	private File file;//身份证照片
	private String imageContentType;
	private String imageFileName;
	private String savePath;
   private User user;
   private UserService userService;
   private Company com;
   private CompanyDao comDao;
   private CompanyService comService;
   private int DropExpiration;//身份
   
   public int getDropExpiration() {
	return DropExpiration;
}
public void setDropExpiration(int dropExpiration) {
	DropExpiration = dropExpiration;
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
public File getFile() {
	return file;
}
public void setFile(File file) {
	this.file = file;
}
public String getImageContentType() {
	return imageContentType;
}
public void setImageContentType(String imageContentType) {
	this.imageContentType = imageContentType;
}
public String getImageFileName() {
	return imageFileName;
}
public void setImageFileName(String imageFileName) {
	this.imageFileName = imageFileName;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public int getNationalityId() {
	return nationalityId;
}
public void setNationalityId(int nationalityId) {
	this.nationalityId = nationalityId;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getIdentityCard() {
	return identityCard;
}
public void setIdentityCard(String identityCard) {
	this.identityCard = identityCard;
}

public String getMobilephone() {
	return Mobilephone;
}
public void setMobilephone(String mobilephone) {
	Mobilephone = mobilephone;
}
public String getShippingAddress() {
	return shippingAddress;
}
public void setShippingAddress(String shippingAddress) {
	this.shippingAddress = shippingAddress;
}
public String getName() {
	return name;
}
public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public User getUser() {
	    return user;
    }
    public void setUser(User user) {
		this.user = user;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public String getSavePath(){
		String pathString=ServletActionContext.getServletContext().getRealPath(savePath);
		return pathString;
	
	}
	public void setSavePath(String savePath){
		this.savePath=savePath;
	}
	public String saveUser() throws IOException{
	   System.out.println("进入register函数"+user.toString());
	   //user=new User();
	   //int a=(int) Math.random();
	   user.setSex(getSex());
	   user.setName(getName());
	   user.setNationalityId(getNationalityId());
	   user.setEmail(getEmail());
	   user.setPassword(getPassword());
	   String idenString=getName()+"_identityCard.png";
	   user.setIdentityCard(idenString);
	   user.setMobilephone(getMobilephone());
	   user.setShippingAddress(getShippingAddress());
	   //String realpath=ServletActionContext.getServletContext().getRealPath("/userimages");
	  String realpath="D:/userimages";
	   System.out.println("地址为："+realpath);
	   if (getFile()!=null) {
		   imageFileName=getName();
		   imageFileName=imageFileName+".png";
		   System.out.println("文件名字"+imageFileName);
		File savefile=new File(new File(realpath),imageFileName);
		if(!savefile.getParentFile().exists()){
			savefile.getParentFile().mkdirs();
			//FileUtils.copyFile(getFile(), savefile);
		    ActionContext.getContext().put("message", "文件上传成功");
		}
		FileUtils.copyFile(getFile(), savefile);
	}

	   Date date = new Date();
	
	   user.setRegisterTime(date);
	   user.setLastIp("aaa");
	   System.out.println(user.toString());
	   userService.save(user);
	  
	   return SUCCESS;
    }

	
    public void delete(){
    	
    }
    public String Userlogin(String emailsString,String passwordsString){
    	System.out.println("进入userlogin函数1:"+emailsString+passwordsString);
		boolean flag=userService.islogin(emailsString,passwordsString);
		if (flag) {
			return SUCCESS;
		}
		return ERROR;
    }
    public String register1(){
    	System.out.println("第一次买家注册");
 	   user.setMobilephone(getMobilephone());
 	   System.out.println("phone:"+user.getMobilephone());
    	return SUCCESS;
    	
    }
    public String register2(){
 	   user.setPassword(getPassword());
 	   System.out.println("phone+password:"+getMobilephone()+getPassword());
 	   return SUCCESS;
 	   
    }
    public User getOneUser(String emailString){
    	user=userService.getOneUser(emailString);
    	return user;
    }

}
