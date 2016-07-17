<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" 
                  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:c="http://java.sun.com/jsp/jstl/core">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>盈宝卫浴</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script>
function add(){
	alert("添加成功");
}
</script>

</head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" background="images/in_02.jpg">
  <tr>
    <td height="99"><table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="328" height="99" align="center" background="images/in_04.jpg"><img src="images/in_07.png" width="287" height="51" /></td>
        <td width="672" valign="middle"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="font_wr">
          <tr>
            <td height="35" align="right"><c:out value="${user_email}"></c:out>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">设为首页</a> - <a href="#">加入收藏</a> 　 </td>
          </tr>
          <tr>
            <td height="50" align="right" class="font_15"><table width="95%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="center"><strong><a href="changindex.jsp">网站首页</a></strong></td>
                <td align="center"><img src="images/shux.jpg" width="2" height="16" /></td>
                <td align="center"><strong><a href="#">关于我们</a></strong></td>
                <td align="center"><img src="images/shux.jpg" width="2" height="16" /></td>
                <td align="center"><strong><a href="#">新闻中心</a></strong></td>
                <td align="center"><img src="images/shux.jpg" width="2" height="16" /></td>
                <td align="center"><strong><a href="#">产品中心</a></strong></td>
                <td align="center"><img src="images/shux.jpg" width="2" height="16" /></td>
                <td align="center"><strong><a href="#">厂家信息</a></strong></td>
                <td align="center"><img src="images/shux.jpg" width="2" height="16" /></td>
                <td align="center"><strong><a href="#">会员中心</a></strong></td>
                <td align="center"><img src="images/shux.jpg" width="2" height="16" /></td>
                <td align="center"><strong><a href="#">联系我们</a></strong></td>
              </tr>
            </table>              </td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" background="images/abanbj_03.jpg"><img src="images/service_03.jpg" width="1000" height="180" /></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="24" background="images/in_12.jpg">&nbsp;</td>
  </tr>
</table>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="280" valign="top"><table width="260" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td width="260" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="26%" height="30" align="left" class="font_14"><strong>产品中心</strong></td>
            <td width="47%" align="left" class="font_999">Product</td>
            <td width="27%" align="right"><img src="images/in_19.jpg" width="37" height="11" /></td>
          </tr>
        </table>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="103" align="left"><img src="images/in_23.jpg" width="76" height="76" /></td>
                  <td align="center"><img src="images/in_23.jpg" width="76" height="76" /></td>
                  <td align="right"><img src="images/in_23.jpg" width="76" height="76" /></td>
                </tr>
            </table></td>
      </tr>
      <tr>
        <td valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="26%" align="left" class="font_14"><strong>新闻中心</strong></td>
            <td width="47%" align="left" class="font_999">News</td>
            <td width="27%" align="right"><img src="images/in_19.jpg" width="37" height="11" /></td>
          </tr>
          <tr>
            <td height="110" colspan="3" align="left" ><table width="100%" border="0" align="center" cellpadding="3" cellspacing="0">
              <tr>
                <td width="71%" align="left" class="xuxian"><a href="newsite.html" target="_blank">·欢洗“盈宝卫浴” TOTO全国优惠促销</a></td>
              </tr>
              <tr>
                <td align="left" class="xuxian"><a href="newsite.html" target="_blank">·为什么要选择高温瓷产品？</a></td>
              </tr>
              <tr>
                <td align="left" class="xuxian"><a href="newsite.html" target="_blank">·盈宝卫浴旗舰展厅盛装登陆无锡</a></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td valign="top"><img src="images/about_07.jpg" width="257" height="122" /></td>
      </tr>
    </table></td>
    <td width="720" valign="top"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
      <tr>
        <td width="71%" align="left" class="font_14 xuxian"><strong>添加产品</strong></td>
      </tr>
    </table>
        <table width="100%" border="0" cellpadding="0" cellspacing="20" class="hg_30">
          <tr valign="top">
            <td align="left">
			
       <div class="inputsec">
     <form action="addcompanyGoodsaction" method="post" enctype="multipart/form-data">
     <input type="hidden" value="${user_email }" name="email"/>
     <ul>
       <li><label class="fl mr2">产品名称：</label>
           <input type="text" tabindex="3" name="cgName" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请输入产品名称" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请输入合法的产品名称</div></li>
        <li><label class="fl mr2">产品分类：</label>
	   <select name="classId"><option value="1">木家具</option>
	   <option value="2">金属家具</option>
	   <option value="3">软体家具</option>
	   <option value="4">钢木家具</option>
	   <option value="6">竹家具</option>
	   </select>
       </li>
       <li><label class="fl mr2">产品长度：</label>
           <input type="text" tabindex="3" name="length" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请输入产品长度" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请输入合法的长度</div></li>
		   <li><label class="fl mr2">产品宽度：</label>
           <input type="text" tabindex="3" name="width" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请输入产品宽度" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请输入合法的产品宽度</div></li>
		   <li><label class="fl mr2">产品高度：</label>
           <input type="text" tabindex="3" name="height" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请输入产品高度" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请输入合法的产高度</div></li>
           <li><label class="fl mr2">产品厚度：</label>
           <input type="text" tabindex="3" name="thickness" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请输入产品厚度" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请输入合法的产品厚度</div></li>
		   <li><label class="fl mr2">产品价格：</label>
           <input type="text" tabindex="3" name="price" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请输入产品价格" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请输入合法的产品价格</div></li>
		   <li><label class="fl mr2">产品样图：</label>
           <input type="file" tabindex="3" name="appearenceFile" id="tel" autocomplete="off" maxlength="11"  style="ime-mode:disabled" class="txt-m fl " value="请上传你的产品样图" onClick="if(value==defaultValue){value='';this.style.color='#333'}" >
           <div style="display:none" class="msg-error">请上传正确的产品样图</div></li>
		    <li class="clr"><label class="db fl">&nbsp;</label>
	       <input class="db fl next" type="submit" value="提交" onclick="add()" onMouseOver="this.style.background='#27c42d'" onMouseOut="this.style.background='#19861d'"/>
		   </li>
		    </ul>
	 </form>
   </div>
		       
			  
			</td>
          </tr>
      </table></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="79" background="images/in_28.jpg"><table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="195" align="center"><img src="images/in_34.jpg" width="174" height="34" /></td>
        <td width="39" align="center"><img src="images/in_31.jpg" width="4" height="50" /></td>
        <td width="766" align="left" class="font_999">地址：上海延安中路829号达安广场503C   电话：021-62088509   传真：021-33592792<br />
          Copyright © 2013 - 2014 上海盈宝卫浴有限公司 版权所有</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>