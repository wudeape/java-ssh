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
function check_phone(){
	document.getElementById("PhoneDiv").style.display	= "none";
	document.getElementById("CheckDiv").style.display	= "none";
	var a=document.getElementById("tel").value;
	var b=document.getElementById("checkbox1").checked;
    if(a.length==11){
          if(!b){
              
        	  document.getElementById("CheckDiv").style.display	= "";
               return false;
               }
          else{
        	  document.myform.submit;
              }
          
        }
    else{
    	document.getElementById("PhoneDiv").style.display	= "";
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
 <em class="fr">已经是会员，请&nbsp;&nbsp;<a href="login.jsp" class="db logbtn fr">前往登录</a> </em>
 </section>
 <section class="main w12">
   <div class="title"><a href="chang_register_1.jsp" class="title2 db fl">厂家注册</a><a class="title1 db fl">客户注册</a></div>
   <div class="fr tit2">
         <div style="width:50%;float:left;height:20px;"></div>
		 <div style="width:50%;float:right;"><center><span class="arr"></span></center></div>
   </div>
   <div class="w12 step1"></div>
   <div class="inputsec">
     <form action="userregisteraction" method="post">
     <ul>
       <li><label class="fl mr2">手机号码：</label>
           <input type="text" tabindex="3" name="Mobilephone" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请输入11位手机号码" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" id="PhoneDiv" class="msg-error">请输入11位手机号码</div></li>
       <li><label class="fl mr2">验证码：</label><span class="fl yzm"><input type="text" class="fl txt-y" id="identify" name="identify" value="不区分大小写" onClick="if(value==defaultValue){value='';this.style.color='#333'}"/>
       <a class="fl mr2 mt2"><img src="images/yzm.png" width="83" height="27"  alt=""/></a><a class="fl chg">换一张</a></span>
       <div style="display:none" class="msg-error">验证码输入有误</div></li>
       <li><label class="fl mr2">校验码：</label><span class="fl yzm2"><input type="text" class="fl txt-j" id="identify" name="identify" value="请输入校验码" onClick="if(value==defaultValue){value='';this.style.color='#333'}"/>
    </span>
       <a class="db fl chg send">发送至手机</a>
       </li>
       <li><label class="fl">&nbsp;</label><p style=" line-height: 28px; "><input type="checkbox" id="checkbox1"name="checkbox1" value="1">我已阅读并同意<a style="text-decoration:underline;">《迪家服务条款协议》</a></p><div style="display:none" id="CheckDiv" class="msg-error">请选择是否同意条款</div></li>
       <li class="clr"><label class="db fl">&nbsp;</label>
	   <input class="db fl next" type="submit" value="下一步" onclonMouseOver="this.style.background='#27c42d'" onclick="return check_phone();" onMouseOut="this.style.background='#19861d'"/>
     </ul>
	 </form>
   </div>
 </section>
</body>
</html>