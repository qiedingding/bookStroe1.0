<%@ page language="java" import="java.util.*"   contentType="text/html; charset=utf-8"%>

<html>
<head>
<style>
<!--
.wr{font-size: 12pt; line-height: 22px}
.wr1 {	FONT-SIZE: 12px; LINE-HEIGHT: 200%}
.wr2 {	FONT-SIZE: 14px; LINE-HEIGHT: 150%}
.wr3 {	FONT-SIZE: 12px}
.wr4 {	FONT-SIZE: 12px; LINE-HEIGHT: 150%}
// -->
</style>

<title>${book.bookName} (作者：${book.author})- 丁丁网上书城</title>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
  	  <%@include file="UpJsp.jsp" %>
      <table width="519" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td>&nbsp;</td>
        </tr>
      
        <tr> 
          <td class="wr4"> 
            <p><img src="images/hb11.gif" width="519" height="40"></p>
            </td>
        </tr>
        <tr>
          <td class="wr1" background="images/hb02.gif" bgcolor="#FFFBEF"> 
            <table width="500" border="0" cellspacing="0" cellpadding="5" align="center">
              <tr valign="top"> 
                <td width="160"><img src="${pageContext.request.contextPath}/images/dd-006.gif" width="150" height="219"></td>
          		<td class="wr2"> 
                  <p><font color="#9C0000">${book.bookName}<b>(作者：${book.author})</b></font></p>
          		  <table width="100%" border="0" cellspacing="0" cellpadding="5">
                    <tr>
                      <td class="wr2"><font face="楷体_GB2312">　${book.context} </font></td>
                    </tr>
                    <tr> 
                      <td class="wr1">【原价】<font color=" #FF0000"> ${book.price+20}</font> 元<br>【特价】<font color=" #FF0000"> ${book.price}</font> 元
                       　
                        <a href="gwc.do?gwcType=addBook&bookId=${book.bookId}">
                     	 <img src="images/xc.gif" width="15" height="13">购买
       					 </a>              
                    	  　<img src="images/c.gif" width="15" height="11">收藏</td>
                    
                    </tr>
                  </table>      <table width="100%" border="0" cellspacing="0" cellpadding="5">
                    <tr valign="top"> 
                      <td width="40%" class="wr4">【作者】${book.author}</td>
                      <td width="60%" class="wr4">【出版社】${book.pbName}</td>
                    </tr>
                    <tr valign="top"> 
                      <td width="40%" class="wr4">
                        【库存状况】</td>
                    </tr>
                  </table>
          </td>
        </tr>
      </table>
      <hr width="95%" size="1" align="center">
      <table width="95%" border="0" cellspacing="0" cellpadding="5" align="center">
        <tr>
          <td class="wr4"> 
                  <p><font color="#9C0000">【内容简介】</font><br></p>
          		  <p> ${book.context}</p>
            </td>
        </tr>
      </table>
      <hr width="95%" size="1" align="center">
            <table width="95%" border="0" cellspacing="0" cellpadding="5" align="center">
       			
              <tr> 
                <td class="wr1"><font color="#9C0000">【读者评论】</font></td>
            </tr>
               <c:if test="${empty discuss }">
                <tr> 
	                <td class="wr1"> 
	                  <p>本书还没有评论</p>
	                  </td>
	              </tr>
                     </c:if>

							<c:if test="${empty discuss ==false}">
								<c:forEach items="${discuss }" var="dis" begin="0" end="1">
									<tr>
										<td class="wr1">
											<p>
												主题：好东西大家一起分享 作者：${dis.cusromerId } 发表日期：2012-5-12


												<br>
												内容
											</p>
											<p align="center">
												<font color="red" size="2">
											
											${dis.context }
											</font>
											</p>
										</td>

									</tr>
								</c:forEach>
							</c:if>
							<tr>
								<td class="wr1">
									<p align="center">
										&lt;&lt;
										<a
											href="${pageContext.request.contextPath }/showAllDiscuss.do?bookId=${book.bookId}">浏览全部评论</a>
										&gt;&gt; &lt;&lt;
										<a
										href="${pageContext.request.contextPath }/writeDiscuss.do?bookId=${book.bookId}">发表评论
									</a>&gt;&gt;
									</p>
								</td>
							</tr>
						</table>
              	 
      <hr width="95%" size="1" align="center">
      
          </td>
        </tr>
        <tr>
          <td class="wr4"><img src="images/hb03.gif" width="519" height="9"></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td> 
            <div align="right"><img src="images/daodu36.gif" width="593" height="58" alt="广告"></div>
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