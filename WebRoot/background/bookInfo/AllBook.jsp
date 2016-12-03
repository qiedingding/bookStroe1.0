<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AllBook.jsp' starting page</title>
     <link rel="styleSheet" href="${pageContext.request.contextPath}/background/css/body.css" type="text/css" media="all" />
	<script type="text/javascript">
	function a(s){
	var result = confirm("您确认要删除书号为<"+s+">   的图书信息么？");
	return result;
	}
	</script>
  </head>
  
  <body>

  <table >
  <tr>
  	<td>bookid</td>
  	<td>书名</td>
  	<td >类型</td>
  	<td >出版社名</td>
  	<td >作者</td>
  	<td >评论</td>
  	<td >价格</td>
    <td >出版日期</td>
  	<td >是否上架</td>
  	<td >修改</td>
  	<td >删除</td>					
  </tr>
 
  <c:forEach var="book" items= "${books}" > 
  <tr onmouseover="this.bgColor='#E6EBFF'" onmouseout="this.bgColor='#FFF'"> 
     <td>${book.bookId}</td> 
     <td>${book.bookName}</td>  
     <td>${book.bookTypeId}</td>
     <td>${book.pbName}</td> 
     <td>${book.author}</td>
     <td>${book.context}</td>
     <td>${book.price}</td>
     <td>${book.pbDate}</td>
     <td>
    <c:if test="${book.bookIsDelete==1}">已上架</c:if>
	<c:if test="${book.bookIsDelete==2}">未上架</c:if>
	<c:if test="${book.bookIsDelete==3}">不可用</c:if>
	</td>
    <td ><a href="updateBookInfo.do?bookId=${book.bookId}">修改</a></td>
  	<td ><a href="deleteBookInfo.do?bookId=${book.bookId}" onclick="return a(${book.bookId})">删除</a></td>	
 </c:forEach>
  <tr align="right">
  						<td align="left"><a href="findTopType.do">新增图书</a></td>
  						<td align="left"><a href="findAllBook.do?isDelete=1&flag=first">已上架</a></td>
  						<td align="left"><a href="findAllBook.do?isDelete=2&flag=first">未上架</a></td>
  						<td align="left"><a href="findAllBook.do?isDelete=3&flag=first">不可用</a></td>
  						<td align="left"><a href="findAllBook.do?isDelete=4&flag=first">所有</a></td>
  						<td align="left"></td>
  						<td align="left"></td>
						<td align="left"></td>
                         <td align="right">
                         <a href="findAllBook.do?flag=first">首页</a>&nbsp;
                         <a href="findAllBook.do?flag=previous">上一页</a>&nbsp;
                         <a href="findAllBook.do?flag=next">下一页</a>&nbsp;
                         <a href="findAllBook.do?flag=last ">最后页</a>&nbsp;
                         
                         
                         </td>
                  </tr>
  </table>

  </body>
</html>
