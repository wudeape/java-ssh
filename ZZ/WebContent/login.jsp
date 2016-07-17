<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>用户登录</TITLE><LINK 
href="images/Default.css" type=text/css rel=stylesheet><LINK 
href="images/xtree.css" type=text/css rel=stylesheet><LINK 
href="images/User_Login.css" type=text/css rel=stylesheet>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<META content="MSHTML 6.00.6000.16674" name=GENERATOR>
<script type="text/javascript">
function aa(){
	document.getElementById("AccountMsg").style.display	= "none";
	document.getElementById("PasswordMsg").style.display = "none";
	document.getElementById("AllMsg").style.display	= "none";

	var a=document.getElementById("TxtUserName").value;
	var b=document.getElementById("TxtPassword").value;
	
	if(a==null||a==""){
		
		document.getElementById("AccountMsg").style.display	= "";
		document.myform.email.focus();
		return false;
		}
	else{
		
		if(b==null||b==""){
			
			document.getElementById("PasswordMsg").style.display	= "";
			document.myform.password.focus();
			return false;
			}
		else{
			
			document.myform.submit();
			}
		
		}

}
</script>
</HEAD>
<BODY id=userlogin_body>
<form action="loginaction" method="post" name="myform">
<DIV></DIV>
<DIV id=user_login>
<DL>
  <DD id=user_top>
  <UL>
    <LI class=user_top_l></LI>
    <LI class=user_top_c></LI>
    <LI class=user_top_r></LI></UL>
  <DD id=user_main>
  <UL>
    <LI class=user_main_l></LI>
    <LI class=user_main_c>
    <DIV class=user_main_box>
    <UL>
      <LI class=user_main_text>邮箱： </LI>
      <LI class=user_main_input><INPUT class=TxtUserNameCssClass id=TxtUserName 
      maxLength=20 name=email> </LI></UL>
    <UL>
      <LI class=user_main_text>密 码： </LI>
      <LI class=user_main_input><INPUT class=TxtPasswordCssClass id=TxtPassword 
      type=password name=password> </LI></UL>
    <UL>
      <LI class=user_main_text>身份选择： </LI>
      <LI class=user_main_input><SELECT id=DropExpiration name=DropExpiration> 
        <OPTION value=1 selected>客户</OPTION> <OPTION value=2>厂商</OPTION> 
        <OPTION value=3>管理员</OPTION></SELECT> </LI>
       
        </UL>
        <ul>
        <li><div id="AccountMsg" style="display:none">邮箱不能为空
        </div></li>
        <li><div id="PasswordMsg" style="display:none">密码不能为空
        </div></li>

         <li>
         
            
            <div id="AllMsg" style="display: none;" >用户名或者密码输入错误
             </div>
           
         </li>
       
       
        </ul>
        </DIV></LI>
        
    <LI class=user_main_r><INPUT class=IbtnEnterCssClass id=IbtnEnter 
    style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
    onclick='return aa();' 


        
    type=image src="images/user_botton.gif" > </LI></UL>
  <DD id=user_bottom>
  <UL>
    <LI class=user_bottom_l></LI>
    <LI class=user_bottom_c><SPAN style="MARGIN-TOP: 40px">如果没有账号，前往<a href="chang_register_1.jsp">注册</a></SPAN> </LI>
    <LI class=user_bottom_r></LI></UL></DD></DL>
   
    </DIV><SPAN id=ValrUserName 
style="DISPLAY: none; COLOR: red"></SPAN><SPAN id=ValrPassword 
style="DISPLAY: none; COLOR: red"></SPAN><SPAN id=ValrValidateCode 
style="DISPLAY: none; COLOR: red"></SPAN>
<DIV id=ValidationSummary1 style="DISPLAY: none; COLOR: red"></DIV>

<DIV></DIV>
</form></BODY></HTML>