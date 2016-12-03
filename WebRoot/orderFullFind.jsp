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
		<title>子订单查询- 丁丁网上书店</title>
	</head>

	<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0"
		marginwidth="0" marginheight="0">
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
						<b><font color="#BA6119">您的订单详细信息</font> </b>
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
					<table width="80%" border="0" cellspacing="0" cellpadding="0"
						align="center">
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
					</table>

					<table width="600" border="0" cellspacing="1" cellpadding="5"
						align="center" bgcolor="#000000">
						<tr align="center" bgcolor="#FEFFEF">
							<th class="wr4" width="30">
								序号
							</th>
							<th class="wr4" width="145">
								订单号
							</th>
							<th class="wr4" width="70">
								图书编号
							</th>
							<th class="wr4" width="60">
								书本名称
							</th>
							<th class="wr4" width="60">
								数量（本）
							</th>
							<th class="wr4" width="60">
								单价（元）
							</th>
							<th class="wr4" width="90">
								总价（元）
							</th>
						</tr>
						<c:forEach items="${orders}" var="orders" varStatus="a">
							<tr bgcolor="#FEFFEF">
								<td class="wr4" width="30">
									${a.count}
								</td>
								<td class="wr4" width="145">
									${orders.oid}
								</td>
								<td class="wr4" width="70">
									${orders.bookId}
								</td>
								<td class="wr4" width="60">
									${orders.bookName}
								</td>
								<td class="wr4" width="60">
									${orders.bookNum}
								</td>
								<td class="wr4" width="60">
									${orders.bookPrice}
								</td>
								<td class="wr4" width="90">
									${orders.bookNum*orders.bookPrice}
								</td>
							</tr>
						</c:forEach>
					</table>
					
					<table width="600" border="0" cellspacing="0" cellpadding="0"
						align="center">

						<tr>
							<td class="wr1" colspan="2" >
								<b>订单信息</b>
							</td>
						</tr>
							<tr>
								<td class="wr3">
									<b>收货人姓名</b>：
								</td>
								<td>
									${orderMain.shname}
								</td>
							</tr>
							<td>
								&nbsp;
							</td>
							<tr>
								<td class="wr3">
									<b>联系电话</b>：
								</td>
								<td>
									${orderMain.shtel}
								</td>

							</tr>
							
							<tr>
								<td class="wr3">
									<b>收货人详细通讯地址</b>：
								</td>
								<td>
									${orderMain.shadd}
								</td>
							</tr>
							<tr>
								<td class="wr3">
									<b>订单备注</b>：
								</td>
								<td>
									${orderMain.context}
								</td>
							</tr>
							<tr align="center">
								<td class="wr3">
								<a href="findSomeOrder.do?id=${user.customerId}"><input type="button" value="返回" ></a>
								</td>
								<td>
							
								</td>
							</tr>
					</table>


					<p>
						&nbsp;
					</p>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<div align="right">
									<img src="images/daodu36.gif" width="593" height="58" alt="广告">
								</div>
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