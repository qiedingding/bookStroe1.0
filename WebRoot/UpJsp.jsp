<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
a {
	text-transform: none;
	text-decoration: none;
}

a:hover {
	text-decoration: underline
}
</style>
<table width="770" border="0" cellpadding="0" cellspacing="0"
	align="center">
	<tr>
		<td rowspan="2" width="152">
			<a href="${pageContext.request.contextPath}/initIndex.do"><img
					src="images/logo.gif" width="152" height="84" alt="丁丁上书店"
					border="0"> </a>
		</td>
		<td>
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td height="53" width="62">
						<img src="images/dd00-h.gif" width="62" height="53">
					</td>
					<td height="53">
						<a href="showOneBookInfo.do?bookId=9999999"><img
								src="images/daodu34.gif" width="281" height="44" alt="广告区">
						</a>
					</td>
					<td valign="bottom" height="53" width="50">
						<div align="center">
							<img src="images/daodu03.gif" width="27" height="25" alt="购物车">
							<br>
							<span class="wr1"> <a
								href="${pageContext.request.contextPath}/gwc.jsp"> 购物车</a> </span>
						</div>
					</td>
					<td valign="bottom" height="53" width="65">
						<div align="center">
							<img src="images/daodu02.gif" width="28" height="25" alt="订单查询">
							<br>
							<span class="wr1"> <c:if test="${empty user}" var="result">
									<a href="denglu.jsp"> 订单查询 </a>
								</c:if> <c:if test="${!result}">
									<a href="findSomeOrder.do?id=${user.customerId}"> 订单查询 </a>
								</c:if> </span>
						</div>
					</td>
					<td valign="bottom" height="53" width="65">
						<div align="center">
							<img src="images/daodu04.gif" width="26" height="25" alt="我的书架">
							<br>
							<span class="wr1">我的空间</span>
						</div>
					</td>
					<td valign="bottom" height="53" width="65">
						<div align="center">
							<img src="images/dd-10.gif" width="27" height="25" alt="我的帐户">
							<br>
							<span class="wr1">购书服务</span>
						</div>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td valign="bottom" nowrap>
			<a href="${pageContext.request.contextPath}/initIndex.do"><img
					src="images/daodu05.gif" width="116" height="31" alt="首页"
					border="0"> </a><a href="findBookByType.do?bookType=23"><img
					src="images/daodu06.gif" width="86" height="31" alt="小说" border="0">
			</a><a href="findBookByType.do?bookType=24"><img
					src="images/daodu07.gif" width="63" height="31" alt="文艺" border="0">
			</a><a href="findBookByType.do?bookType=25"><img
					src="images/daodu08.gif" width="95" height="31" alt="旺旺" border="0">
			</a><a href="findBookByType.do?bookType=26"><img
					src="images/daodu09.gif" width="81" height="31" alt="科技" border="0">
			</a><a href="findBookByType.do?bookType=27"><img
					src="images/daodu10.gif" width="77" height="31" alt="社会人文"
					border="0"> </a><a href="findBookByType.do?bookType=28"><img
					src="images/daodu11.gif" width="76" height="31" alt="少儿" border="0">
			</a>
		</td>
	</tr>
</table>
<table width="770" border="0" cellpadding="0" cellspacing="0"
	align="center" height="28">
	<tr>
		<td background="images/wenhua01.gif" class="wr1" width="147">
			<div align="center">
				<font face="Arial, Helvetica, sans-serif" color="#FFFFFF"><b>www.footprint.com</b>
				</font>
			</div>
		</td>
		<td background="images/wenhua01.gif" valign="bottom" class="wr1"
			width="406">
			<div align="right">
				<font color="#FFFFFF" size="2"> <marquee direction="left"
						onmouseout="this.scrollAmount =2"
						onmouseover="this.scrollAmount = 0" scrollamount=2.5>
						<b><font size="3" color="#AC1000">丁丁网上书城 </font>欢迎您 <font
							size="3" color="#AC1000">我的第一个完整项目</font> 如果喜欢 请收藏 欢迎下次再来</b>
					</marquee> </font>
			</div>
		</td>
		<td background="images/wenhua01.gif" valign="bottom" width="55">
			&nbsp;
		</td>

		<td background="images/wenhua01.gif" valign="bottom" width="260"
			class="wr1">
			<div align="right">
				<font color="#FFFFFF"><b> <c:if test="${user ==null}">
							<a href="denglu.jsp">登录 </a>
							<a href="zhuce.jsp">注册 </a>

						</c:if> <c:if test="${user !=null}">
							<font color="#FFFFFF" face="Arial, Helvetica, sans-serif">
								${user.customerName} </font>
							<font face="Arial, Helvetica, sans-serif" color="#As1000">欢迎您回来！&nbsp;</font>
							<a href="removeUser.do"> <font color="#FFFFFF"
								face="Arial, Helvetica, sans-serif">退出&nbsp;</font> </a>
				</b>
			</div>
		</td>
		</c:if>


	</tr>
</table>
<table width="770" border="0" cellpadding="0" align="center"
	cellspacing="0">
	<tr valign="top">
		<td width="170">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="10">
						<img src="images/point.gif" width="1" height="1">
					</td>
				</tr>
			</table>
			<table width="153" border="0" cellspacing="0" cellpadding="0"
				align="center">
				<tr>
					<td width="9">
						<img src="images/a1.gif" width="10" height="22">
					</td>
					<td bgcolor="#8BB083">
						<div align="center">
							<img src="images/wenhua06.gif" width="40" height="22">
							<img src="images/wenhua05.gif" width="67" height="22" alt="购物车">
						</div>
					</td>
					<td width="9" align="right">
						<img src="images/a2.gif" width="10" height="22">
					</td>
				</tr>
			</table>
			<table width="153" border="0" cellspacing="0" cellpadding="0"
				align="center">
				<tr>
					<td background="images/a3.gif" class="wr1">
						<table width="100%" border="0" cellspacing="0" cellpadding="5">



							<tr>
								<td class="wr4">
									有
									<font color="#FF0000">${gwc.mysize}</font> 种商品在购物车内
									<br>
									总计：￥
									<font color="#FF0000">${ gwc.sumPirce}</font> 元
									<br>
									<a href="${pageContext.request.contextPath}/gwc.jsp">查看购物车清单</a>
									/
									<c:if test="${empty user}" var="result">
										<a href="denglu.jsp">/结帐 &gt;&gt;&gt;</a>
									</c:if>
									<c:if test="${!result}">
										<a href="order.jsp"> 结帐</a>
									</c:if>
									<br>


									收藏夹里有
									<font color="#FF0000">n</font> 件商品
								</td>
							</tr>

						</table>
					</td>
				</tr>
				<tr>
					<td valign="top" height="20">
						<img src="images/a4.gif" width="153" height="6">
					</td>
				</tr>
			</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="3"
				align="center">
				<tr>
					<td colspan="2" bgcolor="#8BB083" class="wr2">
						<p align="center">
							<b><font color="#AC1000">[图书搜索]</font> </b>
						</p>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table width="90%" border="0" cellspacing="0" cellpadding="0"
							align="center">
							<form action="findSomeBook.do" method="post" name="scan">
								<tr>
									<td class="wr4">
										&nbsp;
									</td>
								</tr>
								<tr>
									<td class="wr4">
										书名：
										<input type="text" name="bookName" size="10">
										<br>
									</td>
								</tr>
								<tr>
									<td class="wr4">
										作者：
										<input type="text" name="author" size="10">
										<br>
									</td>
								</tr>
								<tr>
									<td height="30" valign="top">
										<input type="image" src="images/changxiao09.gif" alt="搜索"
											width="45" height="18" border="0" onclick="return isScan()">
										<a href="groupFind.jsp"><img src="images/changxiao10.gif"
												width="59" height="18" border="0" alt="组合搜索"> </a>
									</td>
								</tr>
							</form>
						</table>
					</td>
				</tr>
			</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="3"
				align="center">
				<tr>
					<td bgcolor="#3AA6BF" colspan="2">
						<div align="center">
							<img src="images/dd-m17.gif" width="82" height="23" alt="分类浏览">
						</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#F5F2E3" class="wr1" colspan="2">
						<p>
							<b>小说</b>：
							<a href="findBookByType.do?bookType=23">中国小说 </a>|
							<a href="findBookByType.do?bookType=24">外国小说</a>|
							<a href="findBookByType.do?bookType=25">文艺小说 </a>|
							<a href="findBookByType.do?bookType=26">经典小说 </a>
							<br>
							<b>文学</b>：
							<a href="findBookByType.do?bookType=27">中国文学 </a>|
							<a href="findBookByType.do?bookType=28">外国文学</a>|
							<a href="findBookByType.do?bookType=29">文言文 </a>|
							<a href="findBookByType.do?bookType=30">白话文 </a>
							<br>
							<b>传记</b>：
							<a href="findBookByType.do?bookType=31">名人传记</a>|
							<a href="findBookByType.do?bookType=32">俗人传记</a>|
							<a href="findBookByType.do?bookType=33">中国传记</a>|
							<a href="findBookByType.do?bookType=34">外国传记 </a>
							<br>
							<b>青春文学</b>：
							<a href="findBookByType.do?bookType=35">纪念</a>|
							<a href="findBookByType.do?bookType=36">怀念</a>|
							<a href="findBookByType.do?bookType=37">讽刺</a>

							<br>
							<b>中小学教材</b>：
							<a href="findBookByType.do?bookType=38">中学教材 </a>|
							<a href="findBookByType.do?bookType=39">小学教材</a>|
							<a href="findBookByType.do?bookType=40">高中教材</a>

							<br>
							<b>考试</b>：
							<a href="findBookByType.do?bookType=41">托福 </a>|
							<a href="findBookByType.do?bookType=42">雅思</a>

							<br>
							<b>外语</b>：
							<a href="findBookByType.do?bookType=43">四六级 </a>|
							<a href="findBookByType.do?bookType=44">英语1</a>

							<br>
						</p>
					</td>
				</tr>
				<tr>
					<td bgcolor="#3AA6BF" colspan="2">
						<div align="center">
							<img src="images/dd-m15.gif" width="81" height="21" alt="更多书店">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div align="right">
							<input type="text" name="textfield4" value="书店检索" size="15">
						</div>
					</td>
					<td width="37">
						<img src="images/dd-m08.gif" width="37" height="21" alt="检索">
					</td>
				</tr>
			</table>
			<table width="150" border="0" cellspacing="0" cellpadding="0"
				align="center">
				<tr>
					<td>
						<div align="center" class="wr1">
							<font color="#68A3A1"><b>西安钟楼新华书店</b> </font>
						</div>
					</td>
				</tr>
				<tr>
					<td height="1" bgcolor="#000000">
						<img src="${pageContext.request.contextPath}/images/point.gif"
							width="1" height="1">
					</td>
				</tr>
				<tr>
					<td>
						<div align="center" class="wr1">
							<font color="#68A3A1"><b>西安外文书店</b> </font>
						</div>
					</td>
				</tr>
				<tr>
					<td height="1" bgcolor="#000000">
						<img src="images/point.gif" width="1" height="1">
					</td>
				</tr>
				<tr>
					<td>
						<div align="center" class="wr1">
							<font color="#68A3A1"><b>影音第一站</b> </font>
						</div>
					</td>
				</tr>
				<tr>
					<td height="1" bgcolor="#000000">
						<img src="images/point.gif" width="1" height="1">
					</td>
				</tr>
				<tr>
					<td>
						<div align="center" class="wr1">
							<font color="#68A3A1"><b>西安解放路图书大厦</b> </font>
						</div>
					</td>
				</tr>
				<tr>
					<td height="1" bgcolor="#000000">
						<img src="images/point.gif" width="1" height="1">
					</td>
				</tr>
				<tr>
					<td class="wr1">
						<div align="center">
							<font color="#68A3A1"><b>天德图书</b> </font>
						</div>
					</td>
				</tr>
				<tr>
					<td height="1" bgcolor="#000000">
						<img src="images/point.gif" width="1" height="1">
					</td>
				</tr>
				<tr>
					<td>
						<div align="center" class="wr1">
							<font color="#68A3A1"><b>音乐天地图书</b> </font>
						</div>
					</td>
				</tr>
				<tr>
					<td height="1" bgcolor="#000000">
						<img src="images/point.gif" width="1" height="1">
					</td>
				</tr>
				<tr>
					<td>
						<div align="center" class="wr1">
							<font color="#68A3A1"><b>西安晚报社书店</b> </font>
						</div>
					</td>
				</tr>
				<tr>
					<td height="1" bgcolor="#000000">
						<img src="images/point.gif" width="1" height="1">
					</td>
				</tr>
			</table>
			<p align="center" class="wr1">
				<img src="${pageContext.request.contextPath}/images/logo1.gif"
					width="100" height="35" alt="书店LOGO">
			</p>
			<hr>
			<p align="center" class="wr1">
				<img src="${pageContext.request.contextPath}/images/logo2.gif"
					width="100" height="35" alt="书店LOGO">
			</p>
			<hr>
			<p align="center" class="wr1">
				<img src="${pageContext.request.contextPath}/images/logo3.gif"
					width="100" height="35" alt="书店LOGO">
			</p>
			<hr>
			<p align="center" class="wr1">
				<img src="${pageContext.request.contextPath}/images/logo4.gif"
					width="100" height="35" alt="书店LOGO">
			</p>
			<hr>

		</td>
		<td width="3" bgcolor="#8F8F8F">
			<img src="images/point.gif" width="1" height="1">
		</td>
		<td>
			<script type="text/javascript">
function isScan() {
	var name = document.getElementById("bookName").value;
	var author = document.getElementById("author").value;
	if (name == "" && author == "") {
		document.getElementById("author").value = "^z";
	}

}
</script>