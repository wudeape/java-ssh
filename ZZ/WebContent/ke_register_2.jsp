<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>会商宝注册</title>
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
<script type="text/javascript">
function check_password(){
	document.getElementById("password_div").style.display	= "none";
	document.getElementById("PasswordDiv").style.display	= "none";
	var a=document.getElementById("tel").value;
	var b=document.getElementById("identify").value;
    if(a.length>=6&&a.length<=18){
          if(a!=b){
              
        	  document.getElementById("PasswordDiv").style.display	= "";
               return false;
               }
          else{
        	  document.myform.submit;
              }
          
        }
    else{
    	document.getElementById("password_div").style.display	= "";
         return false;
        }
}
</script>
</head>
<body>
 <header>
   <div class="w12 header">
   <a class="db logo fl"><br><img src="images/in_07.png" width="278" height="51"  alt=""/></a>
   <div class="fr logofr"><a href="http://www.huishangbao.com/" class="blk">返回首页</a> |<a href="http://www.huishangbao.com/guestbook/" class="blk">客服中心</a><br>
如注册遇到问题请拨打：<strong style="font-size:14px;">400-080-6699</strong></div>
   </div>
 </header>
 <div class="head_border"></div>
 <section class="w12 login">
 <em class="fr">已经是会员，请&nbsp;&nbsp;<a class="db logbtn fr">前往登录</a> </em>
 </section>
 <section class="main w12">
   <div class="title"><a class="title2 db fl">厂家注册</a><a class="title1 db fl">客户注册</a></div>
   <div class="fr tit2">
         <div style="width:50%;float:left;height:20px;"></div>
		 <div style="width:50%;float:right;"><center><span class="arr"></span></center></div>
   </div>
   <div class="w12 step2"></div>
   <div class="inputsec">
     <form action="userregisteraction2" method="post">
     <input type="hidden" name="Mobilephone" value="${Mobilephone}"/>
     <ul>
       <li><label class="fl mr2">输入密码：</label>
           <input type="text" tabindex="3" name="password" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请输入6-18位字母开头密码" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div id ="password_div"style="display:none" class="msg-error">请输入6-18位字母开头密码</div></li>
       <li><label class="fl mr2">再次输入：</label><span class="fl yzm"><input type="text" class="fl txt-y" id="identify" name="password2" value="保持两次输入一致" onClick="if(value==defaultValue){value='';this.style.color='#333'}"/>
       <div style="display:none" id="PasswordDiv"  class="msg-error">两次密码输入不一致</div></li>
       <li class="clr"><label class="db fl">&nbsp;</label><input class="db fl next" type="submit" onclick="return check_password();" value="下一步" onMouseOver="this.style.background='#27c42d'" onMouseOut="this.style.background='#19861d'"/></li>
     </ul>
	 </form>
   </div>
 </section>
</body>
</html>