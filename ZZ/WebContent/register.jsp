<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
</head>
<body>
<a href="login.jsp">返回首页</a><br>
<!-- <form action="useraction" method="post">
    <table align="center">
    <caption><h3>用户注册</h3></caption>
        <tr>
            <td>用户名：<input type="text" name="userName"/></td>
        </tr>
        <tr>
            <td>密&nbsp;&nbsp;码：<input type="text" name="password"/></td>
        </tr>
        <tr align="center">
            <td><input type="submit" value="注册"/><input type="reset" value="重填" /></td>
        </tr>
    </table>
</form> -->
<button id="btn_company" onclick=""> 厂家注册</button>   <button id="btn_user" onclick=""> 销售商注册</button>
<div id="div_user" >
<s:form action="registeraction" namespace="/" enctype="multipart/form-data" method="post">
            <s:radio label="性别" list="#{'男':'男','女':'女'}" value="'1'" name="sex"></s:radio>
   		
   			<s:textfield name="name" label="登录名"></s:textfield>
   			<s:textfield name="nationalityId" label="国籍编码"></s:textfield>
   			<s:textfield name="email" label="邮箱"></s:textfield>
   			
   			<s:password name="password" label="密码"></s:password>
   			
   			 <s:textfield name="identityCard" label="身份证件照"></s:textfield>
   			 
   			<s:file name="file" label="身份证件照"></s:file> 
   			<s:textfield name="Mobilephone" label="移动电话"></s:textfield>
   			<s:textfield name="shippingAddress" label="收货地址"></s:textfield>
   			<%-- <s:textfield name="lastIp" label="最后登录ip"></s:password>
   			<s:textfield name="lastTime" label="最后登录时间"></s:password>
   		    <s:textfield name="registerTime" label="注册时间"></s:password>
   		   		
   			<s:select label="学历" name="education" list="#{'研究生':'研究生','本科':'本科','专科':'专科','高中':'高中'}" headerKey="" headerValue="请选择"></s:select>
   			<s:textfield name="birthday" label="出生日期"></s:textfield>
   			<s:textfield name="telephone" label="电话号码"></s:textfield>
   			<s:checkboxlist list="{'足球','篮球','乒乓球','羽毛球'}" name="hobbies" label="兴趣爱好"></s:checkboxlist>
   			<s:file name="image" label="照片"></s:file>
   			<s:textarea name="remark" label="简介"></s:textarea> --%>
   			<s:submit value="注册"></s:submit>
   			<s:reset value="重置"></s:reset>

    </s:form>
</div>
<div id="div_company" >

</div>
</body>
</html>