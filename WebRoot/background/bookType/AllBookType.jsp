<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <title>My JSP 'AllBookType.jsp' starting page</title>
           <link rel="styleSheet" href="${pageContext.request.contextPath}/background/css/body.css" type="text/css" media="all" />
      
  </head>
  
  <body>
   <table >
  <tr>
  	<td>bookTypeId</td>
  	<td>父目录</td>
  	<td >目录名称</td>
  	<td >评论</td>
  	<td >是否可见</td>
  						
  </tr>
  <c:forEach var="type" items= "${types}" > 
  <tr onmouseover="this.bgColor='#E6EBFF'" onmouseout="this.bgColor='#FFF'"> 
     <td>${type.bookTypeId}</td> 
     <td>${type.parentId}</td>  
     <td>${type.bookTypeName}</td>
     <td>${type.context}</td> 
     <td>
	<c:if test="${type.typeIsDelete==1}">已上架</c:if>
	<c:if test="${type.typeIsDelete==2}">未上架</c:if>
	<c:if test="${type.typeIsDelete==3}">不可用</c:if>
	</td>
    
 </c:forEach>
   <tr><td align="left">
   						<a href="background/bookType/saveBookType.jsp">新增类别</a></td>
  						<td align="left"></td>
  						<td align="left"></td>
						<td align="left"></td>
                         <td colspan="5" align="right">
                         <a href="findAllType.do?flag=first">首页</a>&nbsp;
                         <a href="findAllType.do?flag=previous">上一页</a>&nbsp;
                         <a href="findAllType.do?flag=next">下一页</a>&nbsp;
                         <a href="findAllType.do?flag=	last ">最后页</a>&nbsp;  
                         </td>
                  </tr>
  </table>

  </body>
</html>
