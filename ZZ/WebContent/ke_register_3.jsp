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
   <div class="w12 step3"></div>
   <div class="inputsec">
     <form action="userregisteraction3" method="post" enctype="multipart/form-data">
     <input type="hidden" name="Mobilephone" value="${Mobilephone }"/>
     <input type="hidden" name="password" value="${password }"/>
     <ul>
      <li><label class="fl mr2">联系人：</label>
           <input type="text" tabindex="3" name="name" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请填写联系人名称" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请填写联系人名称</div></li>
       <li><label class="fl mr2">性别：</label><input type="radio" name="sex" value="男"/>男&nbsp;
	   <input type="radio" name="sex" value="女"/>女</li>
       <li><label class="fl mr2">国籍选择：</label>
	   <select name="nationalityId">
	   <option value="1">中国</option>
	   <option value="2">美国</option>
	   <option value="3">俄罗斯</option>
	   <option value="4">法国</option>
	   <option value="5">韩国</option>
	   </select>
       </li>
	   <li><label class="fl mr2">邮箱地址：</label>
           <input type="text" tabindex="3" name="email" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请填写你的邮箱" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请填写正确的邮箱地址</div></li>
	   <li><label class="fl mr2">身份证：</label>
           <input type="file" tabindex="3" name="file" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请上传正确的身份证件照</div></li>
	   <li><label class="fl mr2">收货地址：</label>
           <input type="text" tabindex="3" name="shippingAddress" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请填写你的收货地址" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请填写正确的收货地址</div></li>
       <li class="clr"><label class="db fl">&nbsp;</label><input class="db fl next" type="submit" value="下一步" onMouseOver="this.style.background='#27c42d'" onMouseOut="this.style.background='#19861d'"/></li>
     </ul>
	 </form>
   </div>
 </section>
</body>
</html>