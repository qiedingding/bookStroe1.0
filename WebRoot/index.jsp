<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
	<head>
		<style>
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
	FONT-SIZE: 14px
}

.wr4 {
	FONT-SIZE: 12px;
	LINE-HEIGHT: 150%
}
</style>
		<title>丁丁网上书店 - 我的第一個項目</title>
	</head>
	<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0"
		marginwidth="0" marginheight="0">
		<%@include file="UpJsp.jsp"%>

		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr valign="top">
				<td width="446">
					<table width="95%" border="0" cellspacing="0" cellpadding="0"
						align="center">
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<img src="images/daodu37.gif" width="337" height="48" alt="广告区">
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<img src="images/ff.gif" width="417" height="189" alt="广告区">
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<h2>
									<font color="#008B38" face="楷体_GB2312"><u>科学家传记、经典科普书…全部５折</u>
									</font>
								</h2>
							</td>
						</tr>
					</table>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td background="images/daodu33.gif" height="32" width="14%">
								&nbsp;
							</td>
							<td background="images/daodu33.gif" height="32" width="86%">
								<img src="images/dd-m13.gif" width="90" height="32" alt="专题推荐">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<hr size="1">
							</td>
						</tr>
					</table>

					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr valign="top">
							<td width="222">
								<table width="100%" border="0" cellspacing="0" cellpadding="5">

									<tr>

										<td class="wr4">

											<p>
												<a href="showOneBookInfo.do?bookId=${books1[1].bookId}">
													<img
														src="${pageContext.request.contextPath}/images/dd-006.gif"
														width=" 72" height="91" border="1" align="left" vspace="5"
														hspace="5" alt="专题推荐"><b><font color="#C77B03">
												</a>
												<a href="showOneBookInfo.do?bookId=${books1[1].bookId}">
													${books1[1].bookName} </a> （${books[1].author} 著）
												</font></b>
												<br>
												原价：${books1[1].price}元
												<br>
												<img src="images/d.gif" width="15" height="13">
												<a href="gwc.do?gwcType=addBook&bookId=${books1[2].bookId}">
													<img src="images/xc.gif" width="15" height="13">购买 </a>
											</p>
											<br>
											<p>
												简介：${books1[2].context}
											</p>
										</td>
									</tr>
								</table>
								<td bgcolor="#CCCCCC" width="1">
									<img src="images/point.gif" width="1" height="1">
								</td>
								<td width="223">
									<table width="100%" border="0" cellspacing="0" cellpadding="5">
										<tr>
											<td class="wr4">
												<p>
													<a href="showOneBookInfo.do?bookId=${books1[1].bookId}">
														<img
															src="${pageContext.request.contextPath}/images/dd-006.gif"
															width="72" height="91" border="1" align="left" vspace="5"
															hspace="5" alt="专题推荐"> </a>
													<font color="#C77B03">□ <b> <a
															href="showOneBookInfo.do?bookId=${books1[1].bookId}">
																${books1[2].bookName} </a> （${books[2].author} 著）</b> </font>
													<br>
													原价：${books1[2].price}元
													<br>
													<img src="images/xc.gif" width="15" height="13">
													<a href="gwc.do?gwcType=addBook&bookId=${books1[1].bookId}">
														<img src="images/xc.gif" width="15" height="13">购买 </a>
												</p>
												<br>
												<p>
													简介：${books1[1].context}。
												</p>
											</td>
										</tr>
									</table>
								</td>
						</tr>
					</table>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<hr size="1">
							</td>
						</tr>
					</table>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr valign="top">
							<td width="222">
								<table width="100%" border="0" cellspacing="0" cellpadding="5">
									<tr>

										<td class="wr4">
											<p>
												<a href="showOneBookInfo.do?bookId=${books1[3].bookId}">
													<img
														src="${pageContext.request.contextPath}/images/dd-006.gif"
														width="72" height="91" border="1" align="left" vspace="5"
														hspace="5" alt="专题推荐"> </a><b> <font color="#C77B03">□
														<a href="showOneBookInfo.do?bookId=${books1[3].bookId}">
															${books1[1].bookName} </a>（${books1[3].author} 著）</font> </b>
												<br>
												原价：${books1[3].price}元
												<br>
												<img src="images/xc.gif" width="15" height="13">
												<a href="gwc.do?gwcType=addBook&bookId=${books1[3].bookId}">
													<img src="images/xc.gif" width="15" height="13">购买 </a>

											</p>
											<br>
											<p>
												简介：${books1[3].context}。
											</p>
										</td>
									</tr>
								</table>
							</td>
							<td bgcolor="#CCCCCC" width="1">
								<img src="images/point.gif" width="1" height="1">
							</td>
							<td width="223">
								<table width="100%" border="0" cellspacing="0" cellpadding="5">
									<tr>

										<td class="wr4">
											<p>
												<a href="showOneBookInfo.do?bookId=${books1[3].bookId}">
													<img
														src="${pageContext.request.contextPath}/images/dd-006.gif"
														width="72" height="91" border="1" align="left" vspace="5"
														hspace="5" alt="专题推荐"> </a><b> <font color="#C77B03">□
														<a href="showOneBookInfo.do?bookId=${books1[3].bookId}">
															${books1[1].bookName} </a>（${books1[3].author} 著）</font> </b>
												<br>
												原价：${books1[3].price}元
												<br>
												<img src="images/xc.gif" width="15" height="13">
												<a href="gwc.do?gwcType=addBook&bookId=${books1[3].bookId}">
													<img src="images/xc.gif" width="15" height="13">购买 </a>

											</p>
											<br>
											<p>
												简介：${books1[3].context}。
											</p>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="60" valign="top">
								<div align="center">
									<img src="images/dd-008.gif" width="426" height="51" alt="广告区">
								</div>
							</td>
						</tr>
					</table>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td background="images/daodu33.gif" height="32" width="14%">
								&nbsp;
							</td>
							<td background="images/daodu33.gif" height="32" width="86%">
								<img src="images/dd-m12.gif" width="90" height="32" alt="行家推荐">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<hr size="1">
							</td>
						</tr>
					</table>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr valign="top">
							<td width="222">
								<table width="100%" border="0" cellspacing="0" cellpadding="5">
									<tr>

										<td class="wr4">
											<p>
												<a href="showOneBookInfo.do?bookId=${books1[3].bookId}">
													<img
														src="${pageContext.request.contextPath}/images/dd-006.gif"
														width="72" height="91" border="1" align="left" vspace="5"
														hspace="5" alt="专题推荐"> </a><b> <font color="#C77B03">□
														<a href="showOneBookInfo.do?bookId=${books1[3].bookId}">
															${books1[1].bookName} </a>（${books1[3].author} 著）</font> </b>
												<br>
												原价：${books1[3].price}元
												<br>
												<img src="images/xc.gif" width="15" height="13">
												<a href="gwc.do?gwcType=addBook&bookId=${books1[3].bookId}">
													<img src="images/xc.gif" width="15" height="13">购买 </a>

											</p>
											<br>
											<p>
												简介：${books1[3].context}。
											</p>
										</td>
									</tr>
								</table>
							</td>
							<td bgcolor="#CCCCCC" width="1">
								<img src="images/point.gif" width="1" height="1">
							</td>
							<td width="223">
								<table width="100%" border="0" cellspacing="0" cellpadding="5">
									<tr>

										<td class="wr4">
											<p>
												<a href="showOneBookInfo.do?bookId=${books1[3].bookId}">
													<img
														src="${pageContext.request.contextPath}/images/dd-006.gif"
														width="72" height="91" border="1" align="left" vspace="5"
														hspace="5" alt="专题推荐"> </a><b> <font color="#C77B03">□
														<a href="showOneBookInfo.do?bookId=${books1[3].bookId}">
															${books1[1].bookName} </a>（${books1[3].author} 著）</font> </b>
												<br>
												原价：${books1[3].price}元
												<br>
												<img src="images/xc.gif" width="15" height="13">
												<a href="gwc.do?gwcType=addBook&bookId=${books1[3].bookId}">
													<img src="images/xc.gif" width="15" height="13">购买 </a>

											</p>
											<br>
											<p>
												简介：${books1[3].context}。
											</p>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<hr size="1">
							</td>
						</tr>
					</table>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr valign="top">
							<td width="222">
								<table width="100%" border="0" cellspacing="0" cellpadding="5">
									<tr>

										<td class="wr4">
											<p>
												<a href="showOneBookInfo.do?bookId=${books1[3].bookId}">
													<img
														src="${pageContext.request.contextPath}/images/dd-006.gif"
														width="72" height="91" border="1" align="left" vspace="5"
														hspace="5" alt="专题推荐"> </a><b> <font color="#C77B03">□
														<a href="showOneBookInfo.do?bookId=${books1[3].bookId}">
															${books1[1].bookName} </a>（${books1[3].author} 著）</font> </b>
												<br>
												原价：${books1[3].price}元
												<br>
												<img src="images/xc.gif" width="15" height="13">
												<a href="gwc.do?gwcType=addBook&bookId=${books1[3].bookId}">
													<img src="images/xc.gif" width="15" height="13">购买 </a>

											</p>
											<br>
											<p>
												简介：${books1[3].context}。
											</p>
										</td>
									</tr>
								</table>
							</td>
							<td bgcolor="#CCCCCC" width="1">
								<img src="images/point.gif" width="1" height="1">
							</td>
							<td width="223">
								<table width="100%" border="0" cellspacing="0" cellpadding="5">
									<tr>

										<td class="wr4">
											<p>
												<a href="showOneBookInfo.do?bookId=${books1[3].bookId}">
													<img
														src="${pageContext.request.contextPath}/images/dd-006.gif"
														width="72" height="91" border="1" align="left" vspace="5"
														hspace="5" alt="专题推荐"> </a><b> <font color="#C77B03">□
														<a href="showOneBookInfo.do?bookId=${books1[3].bookId}">
															${books1[1].bookName} </a>（${books1[3].author} 著）</font> </b>
												<br>
												原价：${books1[3].price}元
												<br>
												<img src="images/xc.gif" width="15" height="13">
												<a href="gwc.do?gwcType=addBook&bookId=${books1[3].bookId}">
													<img src="images/xc.gif" width="15" height="13">购买 </a>

											</p>
											<br>
											<p>
												简介：${books1[3].context}。
											</p>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>

				</td>
				<td width="1" bgcolor="#005c69">
					<p>
						<img src="images/point.gif" width="1" height="1">
					</p>
				</td>

				<td width="150">
					<form action="login.do">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="10">
									<img src="images/dd-m2.gif" width="10" height="22">
								</td>
								<td bgcolor="#3AA6BF">
									<div align="center">
										<font color="#FFF1C9" class="wr3"><b><font
												color="#FDF6DF">会员登录</font> </b> </font>
									</div>
								</td>
								<td width="10" align="right">
									<img src="images/dd-m3.gif" width="10" height="22">
								</td>
							</tr>
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td background="images/dd-m6.gif" class="wr1">
									会员名
									<input type="text" name="userName" size="10">
								</td>
							</tr>

							<tr>
								<td background="images/dd-m6.gif" class="wr1">
									密 码
									<input type="text" name="pwd" size="10">
								</td>
							</tr>

							<tr>
								<td background="images/dd-m6.gif" class="wr1" valign="bottom">
									<div align="center">
										<input type="image" src="images/daodu18.gif" width="55"
											height="21" alt="登录" border="0">
										<a href="zhuce.jsp"><img src="images/dd-m1.gif" width="76"
												height="21" alt="新会员注册" border="0"> </a>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top" height="20">
									<img src="images/dd-m4.gif" width="151" height="8">
								</td>
							</tr>
						</table>
					</form>
					<table width="100%" border="0" cellspacing="0" cellpadding="3">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="5">
									<tr>
										<td>
											<div align="center">
												<img src="images/dd-m18.gif" width="115" height="57">
											</div>
										</td>
									</tr>
								</table>

							</td>
						</tr>
						<tr>
							<td bgcolor="#3AA6BF">
								<div align="center">
									<img src="images/dd-m14.gif" width="83" height="22" alt="最新推荐">
								</div>
							</td>
						</tr>
						<tr>
							<td class="wr4" bgcolor="#F5F2E3">
								<c:forEach items="${books1}" var="book">
									<b> <a href="showOneBookInfo.do?bookId=${book.bookId}">${book.bookName}
									</a> <br> </b>
								</c:forEach>
								<p align="center">
									<a href="#">更多……</a>
								</p>

							</td>
						</tr>
						<tr>
							<td bgcolor="#3AA6BF">
								<div align="center">
									<img src="images/dd-m16.gif" width="81" height="22" alt="云工厂排行">
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#F5F2E3" class="wr4">
								<ol>
									<c:forEach items="${books1}" var="book">
										<b><li>
												<a href="showOneBookInfo.do?bookId=${book.bookId}">${book.bookName}
												</a>
											</li>
										</b>
									</c:forEach>
								</ol>
								<p align="center">
									<a href="#">更多……</a>
								</p>
							</td>
						</tr>
						<tr>
							<td bgcolor="#3AA6BF">
								<div align="center">
									<a href="#" name="save"><img src="images/dd-m19.gif"
											width="143" height="23" alt="寻书公告" border="0"> </a>
								</div>
							</td>
						</tr>
						<tr>
							<td bgcolor="#F5F2E3" class="wr4">
								<p>
									以下图书已有，请需要的朋友下订单购买：
									<br>
								</p>
								<p>
									<img src="images/x1.gif" width="3" height="3">
									鱼龙传
									<br>
									<img src="images/x1.gif" width="3" height="3">
									JAVA疯狂讲义
									<br>
									<img src="images/x1.gif" width="3" height="3">
									明朝那些事儿
									<br>
									<img src="images/x1.gif" width="3" height="3">
									支离破碎
									<br>
									<img src="images/x1.gif" width="3" height="3">
									像少年啦飞驰
								</p>
								<p>
									您有什么想买而买不到的书，请在这里登记，我们将努力为您寻找。请提供尽可能多的信息。
								</p>
								<form name="seekBook" method="post"
									action="${pageContext.request.contextPath}/saveSeekBook.do"
									onsubmit="return seekCheck()">
									<table width="100%" border="0" cellspacing="0" cellpadding="0"
										class="wr1">
										<tr>
											<td width="38%">
												<div align="right">
													书名
												</div>
											</td>
											<td width="62%">
												<input name="seekName" size=10 class="textbox">
											</td>
										</tr>
										<tr>
											<td width="38%">
												<div align="right">
													作者
												</div>
											</td>
											<td width="62%">
												<input name="seekAuthor" size=10 class="textbox">
											</td>
										</tr>
										<tr>
											<td width="38%">
												<div align="right">
													出版社
												</div>
											</td>
											<td width="62%">
												<input name="seekPbName" size=10 class="textbox">
											</td>
										</tr>
										<tr>
											<td width="38%">
												<div align="right">
													Email
												</div>
											</td>
											<td width="62%">
												<input name="seekEmail" size=10 class="textbox">
											</td>
										</tr>
										<tr>
											<td width="38%">
												<div align="right">
													描述
												</div>
											</td>
											<td width="62%">
												<textarea name="seekContext" cols="10" class="textbox"></textarea>
											</td>
										</tr>
										<tr>
											<td width="38%"></td>
											<td width="62%">
												<input type="submit" name="Submit" value="发出">
											</td>
										</tr>
									</table>
								</form>
							</td>
						</tr>
						<tr>
							<td bgcolor="#F5F2E3">
								&nbsp;
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
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
	<script type="text/javascript">

function seekCheck() {
	var context = document.getElementById("seekContext").value;
	var email = document.getElementById("seekEmail").value;
	var seekName = document.getElementById("seekName").value;
	var seekAuthor = document.getElementById("seekAuthor").value;
	var seekPress = document.getElementById("seekPress").value;

	if (email == "") {
		alert("邮箱不能为空");
		return false;
	}
	var ax = /^\w+([-+.]\w+)*@\w+([-.]\\w+)*\.\w+([-.]\w+)*$/;
	var sk = ax.exec(email);
	if (!sk) {
		alert("邮箱输入不正确！");
		return false;
	}
	if (context == "") {
		alert("描述不能为空");
		return false;
	}
	if (email.length > 30) {
		alert("邮箱长度不能多于30位");
		return false;
	}
	if (seekName.length > 50) {
		alert("书名长度不能多于50字");
		return false;
	}
	if (seekAuthor.length > 30) {
		alert("作者长度不能多于30字");
		return false;
	}
	if (seekPress.length > 10) {
		alert("出版社长度不能多于10字");
		return false;
	}

	alert("发送成功");

	return true;
}
</script>
</html>
