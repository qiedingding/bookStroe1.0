<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<style>
<!--
.wr {
	font-size: 12pt;
	line-height: 22px
}

.wr1 {
	FONT-SIZE: 12px;
	LINE-HEIGHT: 200%
}

.wr2 {
	FONT-SIZE: 14px;
	LINE-HEIGHT: 200%
}

.wr3 {
	FONT-SIZE: 12px
}

.wr4 {
	FONT-SIZE: 12px;
	LINE-HEIGHT: 150%
}
-->
</style>
		<title>丁丁网上书店后台管理系统</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	</head>

	<body bgcolor="#BDE7FD" text="#000000" leftmargin="0" topmargin="0"
		marginwidth="0" marginheight="0">
		<table width="500" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="50">
					&nbsp;
				</td>
				<td>
					<img src="images/ht01.jpg" width="65" height="65">
				</td>
				<td>
					<img src="images/ht02.jpg" width="320" height="34"
						alt="云工厂网上书店后台管理系统">
				</td>
			</tr>
		</table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0"
			bgcolor="#FE8D0B">
			<tr>
				<td class="wr2">
					<div align="center">
						丁丁科技文化图书有限责任公司 [1024*768分辨率下浏览效果最佳]
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【管理员：
						<b>${admin.name}</b>】欢迎您进入后台系统 &nbsp;&nbsp;&nbsp;&nbsp;【您的操作权限为：
						<b><c:if test="${admin.type==0}">普通管理员</c:if>
						<c:if test="${admin.type==1}">超级管理员</c:if>
						</b>】
					</div>
				</td>
			</tr>
		</table>
	</body>
</html>
