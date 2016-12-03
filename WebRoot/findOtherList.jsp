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
		<title>图书查询信息 - 丁丁网上书店</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	</head>
	<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0"
		marginwidth="0" marginheight="0">

		<%@include file="UpJsp.jsp"%>
		
			<c:if test="${empty books}">
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					align="center">
					<tr bgcolor="#FEFF99">
						<div align="center">
							<p>
								&nbsp;
							</p>
							<p>
								&nbsp;
							</p>
							<font size="3" color="#FF0000"> <c:if test="${status}">请输入书名或者作者进行查询<br>
								</c:if> <c:if test="${status==false}">	抱歉，没有查找到您所需要的书籍！<br></c:if>
									<br> 请您换个关键字继续查询！<br>
									<br> 或者返回首页的<a href="initIndex.do">寻书公告</a>告知我们您需要的书籍！ 
							
							</font>
							<p>
								&nbsp;
							</p>
							<p>
								&nbsp;
							</p>
							<p>
								&nbsp;
							</p>
						</div>
					</tr>
				</table>
			</c:if>

			<c:if test="${empty books ==false}">
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					align="center">

					<c:forEach items="${books}" var="book">
						<tr bgcolor="#FEFF99">
							<td width="100">
								<div align="center">
									<a href="showOneBookInfo.do?bookId=${book.bookId}"><img
											src="${pageContext.request.contextPath}/images/dd-006.gif"
											width="72" height="91" border="0"> </a>
								</div>
							</td>
							<td width="449">
								<p>
									<span class="wr2"><font color="#CE3431"><b> <a
												href="showOneBookInfo.do?bookId=${book.bookId}">
													${book.bookName}</a>（ ${book.author}著）<br> </b> </font> </span><span
										class="wr4">定价：${book.price}元 <a
										href="GwcServlet?opType=addBook&id=>"> <img
												src="images/xc.gif" width="15" height="13">购买 </a> <img
											src="images/c.gif" width="15" height="11">收藏夹</span>
								</p>
								<p class="wr4"></p>

							</td>

						</tr>
					</c:forEach>
				</table>
				<hr width="95%" align="center" size="1">


				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					align="center">
					 <tr align="right">
  						
  						
                         <td align="right">
                         <a href="findBookByType.do?bookType=${bookType}&flag=first">首页</a>&nbsp;
                         <a href="findBookByType.do?bookType=${bookType}&flag=previous">上一页</a>&nbsp;
                         <a href="findBookByType.do?bookType=${bookType}&flag=next">下一页</a>&nbsp;
                         <a href="findBookByType.do?bookType=${bookType}&flag=last ">最后页</a>&nbsp;
                         
                         
                         </td>
                  </tr>
				</table>
			</c:if>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<div align="right">
							
						</div>
					</td>
				</tr>
			</table>
			<p align="center" class="wr1">
				
			</p>
		</td>
	
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
