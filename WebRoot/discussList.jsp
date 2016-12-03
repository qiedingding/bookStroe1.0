<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<link rel="styleSheet"
			href="${pageContext.request.contextPath}/background/css/body.css"
			type="text/css" media="all" />

		<title>寻书信息表-丁丁网上书城后台管理系统</title>
	</head>
	<body>
		<table>
			<caption>
				<font size="6" color="red"> 评&nbsp;论&nbsp;信&nbsp;息&nbsp;表 </font>
			</caption>
			<tr>
				<th width="15%">
					评论编号
				</th>
				<th width="15%">
					书编号
				</th>
				<th width="15%">
					评论用户
				</th>
				<th>
					评论信息
				</th>
				<th>
					确认状态
				</th>

			</tr>

			<c:forEach items="${discusss}" var="discuss">
				<tr>
					<td>
						${discuss.disId}
					</td>
					<td>
						${discuss.bookId}
					</td>
					<td>
						${discuss.cusromerId}
					</td>
					<td>
						${discuss.context}
					</td>
					<td>
						<form name="form1" method="post" action="updateDiscuss.do?id=${discuss.disId}">
							<p>
								<label>
									<input type="radio" name="status${discuss.disId}" value="2" id="status_0" checked>
									通过
								</label>
								
								<label>
									<input type="radio" name="status${discuss.disId}" value="3" id="status_1">
									未通过
								</label>
							<input type="submit" value="修改评论状态" onclick="return isDelete()" >
							</p>
						</form>
					</td>
				</tr>
			</c:forEach>

		</table>
	</body>
	<script type="text/javascript">
function isDelete() {
	return confirm("您确定要修改评论信息吗？\n注意，此删除【不可恢复】！");
}
</script>
</html>