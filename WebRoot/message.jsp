<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<title>消息提示页面-云丁丁网上商城</title>
	
	</head>

	<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0"
		marginwidth="0" marginheight="0">
		<%@include file="UpJsp.jsp"%>
	<table width="662" border="0" cellspacing="0" cellpadding="0" align="center">
 
  <tr> 
  <p align="center">
			${msg}</p>
			<hr>
			  <p align="center">
				<br>
				<br>${returnPath}
				系统将于<span id="BackSecs" style="color: #F00; size: 10;"></span>后自动返回
				<br/>或者点<a href="${pageContext.request.contextPath}/${returnPath}"><font color="#FF0000" size="5">这里</font></a>去首页

		
		</tr>
		</p><hr>
      </table> 
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
					<script>function countDown(Secs) 
					{
					    BackSecs.innerText=Secs+"秒";
					    if(Secs>0) {
					        setTimeout("countDown("+Secs+"-1)",1000);
					    }
					    else {
					  
					   window.top.location.href='${pageContext.request.contextPath}/${returnPath}';
					    	
					    }
					}
					countDown(5);
					</script>
</html>
