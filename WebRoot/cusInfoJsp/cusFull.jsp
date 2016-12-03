<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
  <link rel="styleSheet" href="${pageContext.request.contextPath}/background/css/body.css" type="text/css" media="all" />
	<title>客户详细信息表-云工厂网上书城后台管理系统</title>
<style type="text/css">

</style>
	
  </head>
  
  <body>
<br><br>
<br> <br>   		<table width="60%" align="center">
    		<caption>
					<font size="6" color="red">
						用&nbsp;户&nbsp;详&nbsp;细&nbsp;信&nbsp;息&nbsp;表 </font>
				</caption>
    		<tr>
    			<td width="30%">
    				客户编号
    			</td>
    			<td width="60%">
    				${user.customerId}
    			</td>
    		</tr>
    		<tr>
    			<td >
    				累积消费
    			</td>
    			<td>
    				${user.customerId}
    			</td>
    		</tr>
    		<tr>
    			<td>
    				电话
    			</td>
    			<td>
    				${user.tel}
    			</td>
    		</tr>
    		<tr>
    			<td>
    				地址
    			</td>
    			<td>
    				${user.address}
    			</td>
    		</tr>
    		
    		<tr>
    			<td>
    				年龄
    			</td>
    				<td>
    				${user.age}
    			</td>
    		</tr>
    		<tr>
    			<td>
    				QQ
    			</td>
    			<td>
    				${user.qq}
    			</td >
    		</tr>
    		<tr>
    			<td>
    				<font size="6" ><b><a href="findAllUser.do">返回</a></b></font>
    			</td >
    		</tr>
    	</table>
  </body>
</html>
