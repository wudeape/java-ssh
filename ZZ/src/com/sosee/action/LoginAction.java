package com.sosee.action;
import com.opensymphony.xwork2.ActionContext;
//登录操作 判断身份
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport{
	private String email;
	private String password;
	private int DropExpiration;//身份
	private UserAction uAction;
	private CompanyAction cAction;
	
	public CompanyAction getcAction() {
		return cAction;
	}
	public void setcAction(CompanyAction cAction) {
		this.cAction = cAction;
	}
	public UserAction getuAction() {
		return uAction;
	}
	public void setuAction(UserAction uAction) {
		this.uAction = uAction;
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
	public int getDropExpiration() {
		return DropExpiration;
	}
	public void setDropExpiration(int dropExpiration) {
		DropExpiration = dropExpiration;
	}
	public String login(){
		String oString=ERROR;
		System.out.println("提取："+getEmail()+getPassword());
		switch (getDropExpiration()) {
		case 1:
			oString=uAction.Userlogin(getEmail(),getPassword());
			if (oString.equals(SUCCESS)) {
				System.out.println("买家登陆");
				oString="usersuccess";
			}
			break;
		case 2:
			oString=cAction.Companylogin(getEmail(),getPassword());
			if (oString.equals(SUCCESS)) {
				System.out.println("厂家登陆");
				oString="companysuccess";
			}
			break;
		case 3:
			oString=ERROR;
			break;
		default:
			break;
		}
		if (!oString.equals(ERROR)) {
			ActionContext.getContext().getSession().put("user_email",getEmail());
		}
		return oString;
	}
}
