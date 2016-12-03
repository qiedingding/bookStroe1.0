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
	FONT-SIZE: 14px;
	color: navy;
}

.wr4 {
	FONT-SIZE: 12px;
	LINE-HEIGHT: 150%
}
//
-->
</style>
		<title>订单信息 - 云工厂网上书店</title>
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
						<b><font color="#BA6119">您的购物车详细信息</font> </b>
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

					<c:if test="${ gwc.bookItems==null}">
						<tr align="center" bgcolor="#FEFFEF">
							<td>
								<b>您还没有购买商品，点<a
									href="${pageContext.request.contextPath}/initIndex.do">这里购买！</a>
								</b>
							</td>
						</tr>
					</c:if>
					<c:if test="${ gwc.bookItems!=null}">
						<table width="600" border="0" cellspacing="1" cellpadding="5"
							align="center" bgcolor="#000000">
							<tr align="center" bgcolor="#FEFFEF">
								<th class="wr4" width="30">
									序号
								</th>
								<th class="wr4" width="145">
									书名
								</th>
								<th class="wr4" width="70">
									数量
								</th>
								<th class="wr4" width="80">
									价格
								</th>
								<th class="wr4" width="80">
									小计
								</th>

							</tr>

							<c:forEach items="${ gwc.bookItems}" var="item">
								<tr bgcolor="#FEFFEF" align="center">

									<td class="wr4" width="30">
										${item.value.bookId}
									</td>
									<td class="wr4" width="145">
										${item.value.bookName}
									</td>
									<td class="wr4" width="70">
										${item.value.num}

									</td>
									<td class="wr4" width="80">
										${item.value.price}
									</td>
									<td class="wr4" width="80">
										${item.value.price*item.value.num}
									</td>


								</tr>
							</c:forEach>
							</c:if>

						</table>
				总价：${ gwc.sumPirce}
					<form action="gwc.do?gwcType=order" method="post">
							<table width="600" border="0" cellspacing="0" cellpadding="0"
								align="center">

								<tr>
									<td class="wr1" colspan="2">
										&nbsp;
									</td>
								</tr>
								<tr>
									<td class="wr1" colspan="2">
										<font color="#FF0000">请正确填写如下信息，以便我们及时准确地处理订单。</font>
									</td>

									<td>
										&nbsp;
									</td>
									<tr>
										<td class="wr3">
											<b>购买用户名称：</b>
										</td>
										<td>
											<input name="customerName" readonly
												value="${user.customerName}">
										</td>
									</tr>
									<td>
										&nbsp;
									</td>
									<tr>
										<td class="wr3">
											<b>收货人姓名</b>：
										</td>
										<td>
											<input name="shname">
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
											<input name="shtel">
										</td>

									</tr>
									<td>
										&nbsp;
									</td>
									<tr>
										<td class="wr3">
											<b>收货人详细通讯地址</b>：
										</td>
										<td>
											<textarea rows="4" cols="40" name="shadd"></textarea>
										</td>
									</tr>
									<tr>
										<td class="wr3">
											<b>订单备注</b>：
										</td>
										<td>
											<textarea rows="4" cols="40" name="context"></textarea>
										</td>
									</tr>
							</table>
							<table width="74" border="0" cellspacing="0" cellpadding="1"
								align="center" height="21">
								<tr>
									<td background="images/h08.gif" class="wr4">
										<div align="center">
											<input type="submit" value="提交订单" />

										</div>
									</td>
								</tr>
							</table>
				</td>
			</tr>
			</form>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<div align="right">
							<img src="images/daodu36.gif" width="593" height="58" alt="广告区">
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

</html>
