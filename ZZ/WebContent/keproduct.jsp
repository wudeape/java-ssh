<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" 
                  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>盈宝卫浴</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script>
function check(evt,cid){
  var obj = window.event?event.srcElement:evt.target;

  document.getElementById("clas_id").value=cid;

  var d=document.getElementById(cid).value;
  document.getElementById("number").value=d;
  var e=document.getElementById("number").value;
  if(e>0){
	  alert("订单成功");
	  document.myform.submit;
	  }
  else{
      alert("输入数量");
      return false;
	  }
 
  
  
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
            <td height="35" align="right"><c:out value="${user_email}"></c:out>&nbsp;&nbsp;&nbsp;<a href="#">设为首页</a> - <a href="#">加入收藏</a> 　 </td>
          </tr>
          <tr>
            <td height="50" align="right" class="font_15"><table width="95%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="center"><strong><a href="keindex.jsp">网站首页</a></strong></td>
                <td align="center"><img src="images/shux.jpg" width="2" height="16" /></td>
                <td align="center"><strong><a href="#">关于我们</a></strong></td>
                <td align="center"><img src="images/shux.jpg" width="2" height="16" /></td>
                <td align="center"><strong><a href="#">新闻中心</a></strong></td>
                <td align="center"><img src="images/shux.jpg" width="2" height="16" /></td>
                <td align="center"><strong><a href="userGoodsaction">产品中心</a></strong></td>
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
    <td align="center" background="images/abanbj_03.jpg"><img src="images/proban_03.jpg" width="1000" height="180" /></td>
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
        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="26%" height="30" align="left" class="font_14"><strong>产品分类</strong></td>
            <td width="47%" align="left" class="font_999">Product list</td>
            <td width="27%" align="right"><a href="#"><img src="images/in_19.jpg" width="37" height="11" border="0px"/></a></td>
          </tr>
        </table></td>
      </tr>
      <tr valign="top" class="hg_30">
        <td align="left"><table width="100%" border="0" align="center" cellpadding="2" cellspacing="0">
            
            <tr>
              <td align="left" class="xuxian" style="padding-left:30px;"><a href="userGoodsaction" >·木家具
              </a></td>
              </tr>
            <tr>
              <td align="left" class="xuxian" style="padding-left:30px;"><a href="userGoodsaction2" >·金属家具 </a></td>
            </tr>
            <tr>
              <td align="left" class="xuxian" style="padding-left:30px;"><a href="userGoodsaction3" >·软体家具 </a></td>
            </tr>
            <tr>
              <td align="left" class="xuxian" style="padding-left:30px;"><a href="userGoodsaction4" >·钢木家具 </a></td>
            </tr>
            <tr>
              <td align="left" class="xuxian" style="padding-left:30px;"><a href="userGoodsaction5" >·竹家具</a></td>
            </tr>

            
        </table></td>
      </tr>
      <tr>
        <td valign="top">&nbsp;</td>
      </tr>
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
                <td width="71%" align="left" class="xuxian"><a href="newsite.jsp" target="_blank">·欢洗“盈宝卫浴” TOTO全国优惠促销</a></td>
              </tr>
              <tr>
                <td align="left" class="xuxian"><a href="newsite.jsp" target="_blank">·为什么要选择高温瓷产品？</a></td>
              </tr>
              <tr>
                <td align="left" class="xuxian"><a href="newsite.jsp" target="_blank">·盈宝卫浴旗舰展厅盛装登陆无锡</a></td>
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
        <td width="71%" align="left" class="font_14 xuxian">
        <c:choose>
        <c:when test="${classId==1 }"><strong>木家具 </strong></c:when>
       
         <c:when test="${classId==2 }"><strong>金属家具 </strong></c:when>
          <c:when test="${classId==3 }"><strong>软体家具 </strong></c:when>
           <c:when test="${classId==4 }"><strong>钢木家具 </strong></c:when>
           <c:otherwise><strong>竹家具 </strong></c:otherwise>
            </c:choose>
        </td>
      </tr>
    </table>
    <form name="myform" action="userbuyaction" method="post">
    <input type="hidden" value="${user_email}" name="email"/>
    <input type="hidden" value="0" id="clas_id" name="cgId"/>
    <input type="hidden" value="0" id="number" name="number"/>
        <table width="100%" border="0" cellpadding="0" cellspacing="20" class="hg_30">
          <tr valign="top">
            <td align="left">
            <table width="100%" border="2" cellspacing="0" cellpadding="5">
            <c:forEach items="${cglists}" var="a" >
			            
						   <tr >
						         
               					 <td align="center"><a href="productsite.jsp" target="_blank"><img src="${a.getAppearence() }" width="180" height="180" border="0" /></a></td>
               				     <td align="center">商品名称：<span><c:out value="${a.getCgName() }"/></span></td>
               				     <td align="center">单价：$<span><c:out value="${a.getPrice() }"/></span></td>
               				     <td align="center">数量：<span><input type="text" value="填写购买数量" id="${a.getCgId() }"/></span></td>
               				     <td align="center"><input type="submit"  id="" onclick="return check(event,${a.getCgId()});" value="购买"/></td>
               				</tr>
               				
               				
              		
						 
						   
						
						</c:forEach> 
              
              <tr>
                <td height="50" colspan="3" align="center">&nbsp;</td>
              </tr>
            </table></td>
          </tr>
      </table>
      </form>
      </td>
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