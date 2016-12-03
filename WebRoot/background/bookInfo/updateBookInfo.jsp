<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
	
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<link rel="styleSheet"
			href="${pageContext.request.contextPath}/background/css/body.css"
			type="text/css" media="all" />

		<title>My JSP 'updateBookInfo.jsp' starting page</title>
		<script type='text/javascript'
			src='${pageContext.request.contextPath}/background/js/ssld.js'>
</script>
		<script type='text/javascript' src='/bookStroe1.0/dwr/engine.js'>
</script>
		<script type='text/javascript'
			src='/bookStroe1.0/dwr/interface/next.js'>
</script>

	</head>

	<body>
	<form action="saveBookInfo.do" method="post">
	 <table>
    <caption>修改图书信息</caption>
    <tr>
    <td>书号</td>
    <td><input type="text" id="bookId" name="bookId" value="${book.bookId}"> </td>
    </tr>   
     <tr>
    <td>书名</td>
    <td><input type="text" id="bookName" name="bookName" value="${book.bookName}"> </td>
    </tr>    
    <tr>
    <td>书类型</td>
    <td> 
     <select id="tag1" onchange="getNext(this.value)">
    <option value="0">请选择</option>
	<c:forEach  var="type" items="${types}">
	<option value="${type.bookTypeId}" <c:if test="${type.bookTypeId==type1}" >selected</c:if>>${type.bookTypeName}	</option>
	</c:forEach>
	
    </select>
    <select id="tag2" onchange="getN(this.value)">
   <c:forEach  var="type" items="${types1}">
	<option value="${type.bookTypeId}" <c:if test="${type.bookTypeId==type2}" >selected</c:if>>${type.bookTypeName}</option>
	</c:forEach>
    </select> 
    
    
    <select id="tag3" name="tag3">
   <c:forEach  var="type" items="${types2}">
	<option value="${type.bookTypeId}" <c:if test="${type.bookTypeId==type3}" >selected</c:if>>${type.bookTypeName}</option>
	</c:forEach>
    </select>
    
    </td>
    </tr>   
     <tr>
    <td>出版社</td>
    <td><input type="text" id="pbName" name="pbName" value="${book.pbName}"> </td>
    </tr> 
     <tr>
    <td>作者</td>
    <td><input type="text" id="author" name="author" value="${book.author}"> </td>
    </tr>  
    <tr>
    <td>评论</td>
    <td><input type="text" id="context" name="context" value="${book.context}">  </td>
    </tr>  
    <tr>
    <td>价格</td>
    <td><input type="text" id="price" name="price" value="${book.price}"> </td>
    </tr> 
    <tr>
    <td>是否上架</td>
    <td>
    <label>
      <input type="radio" name="radio" value="1" id="radio_0" />
      上架</label>
  
    <label>
      <input type="radio" name="radio" value="2" id="radio_1" checked="checked" />
      未上架</label>
   
    <label>
      <input type="radio" name="radio" value="3" id="radio_2" />
      不可用</label>
   
  </td>
    </tr> 
    </table>
	
		<input type="submit" value="提交">
		
	
		</form>
	</body>
</html>
