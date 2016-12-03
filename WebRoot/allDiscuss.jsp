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
	LINE-HEIGHT: 150%
}

.wr3 {
	FONT-SIZE: 12px
}

.wr4 {
	FONT-SIZE: 12px;
	LINE-HEIGHT: 150%
}
//
-->
</style>
		<title>所有读者评论 - 丁丁网上书店</title>
		
	</head>
	<%@include file="UpJsp.jsp"%>
		<table width="662" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td>
					&nbsp;
				</td>
			</tr>
			<tr>
				<td>
					<div align="center" class="wr4">
						<b><font color="#BA6119">关于<a
								href="showOneBookInfo.do?bookId=${bookId}">《${bookName}》</a>一书的读者评论</font>
						</b>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<img src="images/hb10.gif" width="662" height="41">
				</td>
			</tr>
			<tr>
				<td background="images/hb01.gif" bgcolor="#FEFFEF">
					<table width="600" border="0" cellspacing="0" cellpadding="0"
						align="center">
						<tr>
							<td colspan="2">
								&nbsp;
							</td>
						</tr>
						<c:forEach items="${discuss}" var="dis" varStatus="sta">
							<tr>
								<td height="1" bgcolor="#000000" colspan="2">
									<img src="images/point.gif" width="1" height="1">
								</td>
							</tr>
							<tr>
								<td width="300" class="wr1" bgcolor="#FEF6C8">
									&nbsp;
								</td>
								<td width="300" class="wr1" bgcolor="#FEF6C8">
									&nbsp;
								</td>
							</tr>
							<tr>
								<td class="wr1" width="300">
									作者：${dis.cusromerId}
								</td>

							</tr>
							<tr>
								<td class="wr1" colspan="2">
									内容：
									<p align="center" class="wr1">
										${dis.context}
									</p>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<hr>
								</td>
							</tr>

						</c:forEach>
						<tr>
							<td colspan="2" class="wr1">
								<div align="center">
									&lt;
									<a
										href="${pageContext.request.contextPath }/writeDiscuss.do?bookId=${bookId}&bookName=${bookName}">发表评论
									</a>&gt;
								</div>
							</td>
						</tr>
					</table>

				</td>
			</tr>
			<tr>
				<td>
					<img src="images/hb05.gif" width="662" height="10">
				</td>
			</tr>
		</table>
		<tr>
			<td>
				&nbsp;
			</td>

			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<div align="center">
							<img src="images/daodu36.gif" width="593" height="58" alt="广告区">
						</div>
					</td>
				</tr>
			</table>
			<p align="center" class="wr1">
				淘书秀 | 寻书登记 | 好书快讯 | 文化沙龙 | 书店平台
				<br>
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
</html>
