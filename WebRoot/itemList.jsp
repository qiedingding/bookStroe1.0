<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<link rel="styleSheet"
			href="${pageContext.request.contextPath}/background/css/body.css"
			type="text/css" media="all" />

		<title>订单信息表-丁丁网上书城后台管理系统</title>
	</head>
	<body>
		<table>
			<caption>
				<font size="6" color="red"> 订&nbsp;单&nbsp;信&nbsp;息&nbsp;表 </font>
			</caption>
			<tr>
				<th width="15%">
					订单编号
				</th>
				<th width="15%">
					用户编号
				</th>
				<th width="15%">
					总价
				</th>
				<th width="15%">
					留言
				</th>
				<th>
					确认状态
				</th>

			</tr>

			<c:forEach items="${orders}" var="order">
				<tr>
					<td>
						${order.oid}
					</td>
					<td>
						${order.uid}
					</td>
					<td>
						${order.sumprice}
					</td>
					<td>
						${order.context}
					</td>
					<td>
						<form name="form1" method="post" action="updateOrder.do?id=${order.oid}">
							<p>
								<label>
									<input type="radio" name="status${order.oid}" value="0" id="status_0" 
									<c:if test="${order.status==0}"> checked</c:if> >
									正在处理
								</label>
								
								<label>
									<input type="radio" name="status${order.oid}" value="1" id="status_1"
									<c:if test="${order.status==1}"> checked</c:if>  >
									正在发货
								</label>
								<label>
									<input type="radio" name="status${order.oid}" value="2" id="status_1"
									<c:if test="${order.status==2}"> checked</c:if>  >
									收货并确认
								</label>
								
							<input type="submit" value="修改订单状态" onclick="return isDelete()" >
							</p>
						</form>
					</td>
				</tr>
			</c:forEach>

		</table>
	</body>
	<script type="text/javascript">
function isDelete() {
	return confirm("您确定要修改订单信息吗？\n注意，此修改【不可恢复】！");
}
</script>
</html>