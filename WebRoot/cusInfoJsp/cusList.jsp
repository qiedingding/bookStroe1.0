<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
<link rel="styleSheet" href="${pageContext.request.contextPath}/background/css/body.css" type="text/css" media="all" />
	<title>客户信息表-云工厂网上书城后台管理系统</title>
  </head>
  
  <body>
  <br><br>
<br> <br> 
    	<table width="60%" align="center">
    		<caption>
					<font size="6" color="red">
						客&nbsp;户&nbsp;信&nbsp;息&nbsp;表 </font>
				</caption>
    		<tr>
    			<th width="15%">
    				编号
    			</th>
    			<th width="15%">
    				姓名
    			</th>
    			<th>
    				详细信息
    			</th>
    			<th>
    				删除
    			</th>
    		</tr>
    	
    		<c:forEach items="${users}" var="user">
    			<tr>
    			<td>
    				${user.customerId}
    			</td>
    			<td>
    				${user.customerName}
    			</td>
    			<td>
    				<a href="findUser.do?id=${user.customerId}">查看</a>
    			</td>
    			<td>
    				<a href="deleteuser.do?id=${user.customerId}"	
    				title="删除客户信息"
    				onclick="return isDelete('${user.customerName}')"
    			>删除</a>
    			</td >
    			</tr>
    		</c:forEach>
    		
    	</table>
  </body>
    <script type="text/javascript">
  	function isDelete(cusName) {
			return confirm("您确定要删除客户【"+ cusName +"】吗？\n注意，此删除【不可恢复】！");
		}
  </script>
</html>
