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
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" background="images/in_02.jpg">
  <tr>
    <td height="99"><table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="328" height="99" align="center" background="images/in_04.jpg"><img src="images/in_07.png" width="287" height="51" /></td>
        <td width="672" valign="middle"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="font_wr">
          <tr>
            <td height="35" align="right"><c:out value="${user_email }"></c:out>&nbsp;&nbsp;&nbsp;&nbsp; <a href="#">设为首页</a> - <a href="#">加入收藏</a> 　 </td>
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
        <td width="71%" align="left" class="font_14 xuxian"><strong>服务中心</strong></td>
      </tr>
    </table>
  
             <table width="100%" border="1"  >
                <tr>
                <td>订单编号</td>
                <td>合计</td>
                <td>下单人</td>
                <td>下单时间</td>
                <td>确认人</td>
                <td>确认时间</td>
                <td>状态</td>
                
                </tr>
                
                
                <c:forEach  items="${orderLists}" var="oo">
                      <tr>
                        
                         <td><c:out value="${oo.getOrderNumber()}"></c:out></td>
                         <td><c:out value="${oo.getTotal()}"></c:out></td>
                         <td><c:out value="${oo.getId()}"></c:out></td>
                         <td><c:out value="${oo.getOerderTime()}"></c:out></td>
                         <td><c:out value="${oo.getAgentId()}"></c:out></td>
                         <td><c:out value="${oo.getIdentifyingTime()}"></c:out></td>
                         <td><c:out value="${oo.getState()}"></c:out></td>
                      </tr>
                     
                </c:forEach>
                
      </table>
       
      
      
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