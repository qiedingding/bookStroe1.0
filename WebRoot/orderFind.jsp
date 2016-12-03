<%@ page language="java" import="java.util.*"   contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<style>
<!--
.wr{font-size: 12pt; line-height: 22px}
.wr1 {	FONT-SIZE: 12px; LINE-HEIGHT: 200%}
.wr2 {	FONT-SIZE: 14px; LINE-HEIGHT: 150%}
.wr3 {	FONT-SIZE: 12px}
.wr4 {	FONT-SIZE: 12px; LINE-HEIGHT: 150%}
// -->
</style>
<title>订单查询- 丁丁网上书店</title>
</head>


	<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0"
		marginwidth="0" marginheight="0">
		<%@include file="UpJsp.jsp"%>

<table width="662" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td> 
      <div align="center" class="wr4"><b><font color="#BA6119">您的订单信息</font></b></div>
    </td>
  </tr>
  <tr> 
    <td><img src="images/hb10.gif" width="662" height="41"></td>
  </tr>
  <tr> 
    <td background="images/hb01.gif" bgcolor="#FEFFEF"> 
      <table width="80%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
         
      <table width="630" border="0" cellspacing="1" cellpadding="5" align="center" bgcolor="#000000">
        <tr align="center" bgcolor="#FEFFEF"> 
          <th class="wr4" width="55">订单编号</th>
          <th class="wr4" width="145">收货人</th>
          <th class="wr4" width="70">总价</th>
          <th class="wr4" width="80">电话</th>
          <th class="wr4" width="300">地址</th>
          <th class="wr4" width="55">详细信息</th>
           <th class="wr4" width="80">订单状态</th>
        </tr>
        <c:forEach items="${orders}" var="orders">
        <tr bgcolor="#FEFFEF"> 
          <td class="wr4" width="30">${orders.oid}</td>
          <td class="wr4" width="145">${orders.shname}</td>
          <td class="wr4" width="70">${orders.sumprice}元</td>
          <td class="wr4" width="80">${orders.shtel}</td>
          <td class="wr4" width="300">${orders.shadd}</td>
          <td class="wr4" width="45"><a href="findDetailOrder.do?oid=${orders.oid}">查看</a></td>
          <td class="wr4" width="80"><c:if test="${orders.status==0}">正在处理</c:if><c:if test="${orders.status==1}">正在送货</c:if><c:if test="${orders.status==2}">收货并确认</c:if></td>
        </tr>
       </c:forEach>
        </table>
  <hr width="95%" size="1" align="center">
      
          </td>
        </tr>
        <tr>
          <td class="wr4"><img src="images/hb03.gif" width="665" height="9"></td>
        </tr>
      </table>
      <p>&nbsp;</p>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td> 
            <div align="right"><img src="images/daodu36.gif" width="593" height="58" alt="广告"></div>
          </td>
        </tr>
      </table> 
 
     <p align="center" class="wr1">
				关于书店 | 意见箱 | 联系我们
			</p>
		</td>
		</tr>
		</table>
		<table width="770" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td height="22" background="images/dd-m09.gif">
					&nbsp;
				</td>
			</tr>
		</table>
		<table border="0" cellspacing="0" cellpadding="0" align="center">
				<tr>
				<td>
					&nbsp;
				</td>
				<td class="wr1" width="10">
					&nbsp;
				</td>
				<td class="wr1">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td>
					<a href="http://www.baidu.com"><img src="images/dd-009.gif"
							width="36" height="40" alt="logo" border="0"> </a>
				</td>
				<td class="wr4" width="10">
					&nbsp;
				</td>
				<td class="wr4">
					版权所有：
					<a href="http://www.baidu.com" target="_blank">天津华信footprint文化图书有限责任公司</a>
					<br>
					地址：天津市西青区宾水西道399号 服务电话：15620925868
				</td>
			</tr>
		</table>
	</body>