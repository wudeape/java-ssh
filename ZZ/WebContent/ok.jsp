<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>迪家网注册</title>
<link rel="stylesheet" href="css/style.css"  type="text/css">
<script type="text/javascript">
document.createElement("section");
document.createElement("article");
document.createElement("footer");
document.createElement("header");
document.createElement("hgroup");
document.createElement("nav");
document.createElement("menu");
</script>
</head>
<body>
 <header>
   <div class="w12 header">
   <a class="db logo fl"><img src="images/logo.jpg" width="327" height="94"  alt=""/></a>
   <div class="fr logofr"><a href="http://www.huishangbao.com/" class="blk">返回首页</a> |<a href="http://www.huishangbao.com/guestbook/" class="blk">客服中心</a><br>
如注册遇到问题请拨打：<strong style="font-size:14px;">400-080-6699</strong></div>
   </div>
 </header>
 <div class="head_border"></div>
 <section class="w12 login">
 <em class="fr">已经是会员，请&nbsp;&nbsp;<a class="db logbtn fr">前往登录</a> </em>
 </section>
 <section class="main w12">
   <div class="title"><a class="title1 db fl">厂家注册</a><a class="title2 db fl">客户注册</a></div>
   <div class="fr tit2"><span class="arr"></span></div>
   <div class="w12 step4"></div>
   <div class="success">
     <ul>
     <%-- <li><img src="${pageContext.request.contextPath}/<s:property value="'userimages/'+imageFileName"/>"></li> --%>
       <li class="suc1">恭喜您注册成功</li>
	   <li></li>
       <li class="suc2"><a href="login.jsp" class="db mr4 fl">去登录</a><a class="db fl">返回主页</a></li>
     </ul>
   </div>
 </section>
</body>
</html>