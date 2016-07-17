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
				   function ll(){
				     var val=document.getElementById("textfield7").value;
                     switch(val){
						 case "1":_end("11");sta("22");sta("33");sta("44");sta("55");break;
						 case "2":sta("11");_end("22");sta("33");sta("44");sta("55");break;
						 case "3":sta("11");sta("22");_end("33");sta("44");sta("55");break;
						 case "4":sta("11");sta("22");sta("33");_end("44");sta("55");break;
						 case "5":sta("11");sta("22");sta("33");sta("44");_end("55");break;
					 }
		             
				   }
				   function sta(strId){
                     document.getElementById(strId).style.display="none";
				   }
				   function _end(strId){
                     document.getElementById(strId).style.display="block";
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
   <div class="title"><a class="title1 db fl">厂家注册</a><a class="title2 db fl">客户注册</a></div>
   <div class="fr tit2"><span class="arr"></span></div>
   <div class="w12 step3"></div>
   <div class="inputsec">
     <form action="companyregisteraction3" method="post" enctype="multipart/form-data">
     <input type="hidden" name="mobilePhone" value="${mobilePhone }"/>
     <input type="hidden" name="password" value="${password }"/>
     <ul>
       <li><label class="fl mr2">厂家名称：</label>
           <input type="text" tabindex="3" name="companyName" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请输入厂家名称" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请输入厂家名称</div></li>
      <li><label class="fl mr2">联系人：</label>
           <input type="text" tabindex="3" name="name" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请填写联系人名称" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请填写联系人名称</div></li>
       <li><label class="fl mr2">所属分区：</label>
	   <select name="areaId" onchange="ll()" id="textfield7"><option value="1">北京</option>
	   <option value="2">上海</option>
	   <option value="3">广州</option>
	   <option value="4">衡水</option>
	   <option value="5">郑州</option>
	   </select>
       </li>
	   <li><label class="fl mr2">代理选择：</label>
	   <select name="agentId" id="11"><option value="1">北京1号代理</option>
	   <option value="2">北京2号代理</option>
	   </select>
       <select name="agentId" id="22" style="display: none;"><option value="3">上海1号代理</option>
	   <option value="4" >上海2号代理</option>
	   </select>
	   <select name="agentId" id="33" style="display: none;"><option value="5">广州1号代理</option>
	   <option value="6">广州2号代理</option>
	   </select>
	   <select name="agentId" id="44" style="display: none;"><option value="7">衡水1号代理</option>
	   <option value="8">衡水2号代理</option>
	   </select>
	   <select name="agentId" id="55" style="display: none;"><option value="9">郑州1号代理</option>
	   <option value="10">郑州2号代理</option>
	   </select>
       </li>
	   
	   <li><label class="fl mr2">邮箱地址：</label>
           <input type="text" tabindex="3" name="email" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请填写你的邮箱" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请填写正确的邮箱地址</div></li>
	   <li><label class="fl mr2">固定电话：</label>
           <input type="text" tabindex="3" name="fixedPhone" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请填写你的固定电话" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请填写正确的固话</div></li>
       <li><label class="fl mr2">QQ：</label>
           <input type="text" tabindex="3" name="qq" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="填写你的QQ号码" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请填写正确的qq</div></li>
	   <li><label class="fl mr2">所在地址：</label>
           <input type="text" tabindex="3" name="address" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="填写你的厂家地址，请与分区一致" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请填写正确的地址</div></li>
	   <li><label class="fl mr2">logo：</label>
           <input type="file" tabindex="3" name="logofile" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请上传你的logo" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请填写正确的地址</div></li>
       <li class="clr"><label class="db fl">&nbsp;</label>
       <li><label class="fl mr2">营业执照：</label>
           <input type="file" tabindex="3" name="bussiFile" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请上传你的营业执照正面" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请上传正确的营业执照</div></li>
       <li class="clr"><label class="db fl">&nbsp;</label>
	   <input class="db fl next" type="submit" value="下一步" onMouseOver="this.style.background='#27c42d'" onMouseOut="this.style.background='#19861d'"/>
      </ul>
	 </form>
   </div>
 </section>
</body>
</html>