<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
  <head>
    <title>云工厂网上书城</title>
    <link rel="styleSheet" href="${pageContext.request.contextPath }/background/css/save.css" type="text/css" media="all" />
  </head>
  <body>
	<form action="${pageContext.request.contextPath }/updateAdmin.do" method="post">
		<table>
			<caption>云工厂网上书城-管理员设置权限</caption>
			<tr>
				<td>管理员编号：</td>
				<td><input name="adminId" size="40" value="${requestScope.admin.adminId}" readonly></td>
			</tr>
			<tr>
				<td>管理员名称：</td>
				<td><input name="adminName" size="40" value="${requestScope.admin.name}" readonly></td>
			</tr>
			<tr>
				<td>管理员权限：</td>
				<td>
					<input type="radio" name="states" value="1" 
					<c:if test="${requestScope.admin.type == 1 }">
						checked
					</c:if>
					>超级管理员
					<input type="radio" name="states" value="0"
					<c:if test="${requestScope.admin.type == 0 }">
						checked
					</c:if>
					>普通管理员
				</td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="保存"></td>
				<td><input type="reset" name="reset" value="重置"></td>
			</tr>
		</table>
	</form>
  </body>
</html>
