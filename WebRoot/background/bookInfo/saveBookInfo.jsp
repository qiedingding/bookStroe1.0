<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> <link rel="styleSheet" href="${pageContext.request.contextPath}/background/css/body.css" type="text/css" media="all" />
    <title>新增图书</title>
      <script type='text/javascript' src='/bookStroe1.0/dwr/engine.js'></script>
  	  <script type='text/javascript' src='/bookStroe1.0/dwr/interface/next.js'></script>
	 <script type='text/javascript' src='${pageContext.request.contextPath}/background/js/ssld.js'></script>
	
	</head> 
  <body>

    <form action="${pageContext.request.contextPath}/saveBookInfo.do" method="post">
    <table>
    <caption>新增图书信息</caption>
    <tr>
    <td>书号</td>
    <td><input type="text" id="bookId" name="bookId"> </td>
    </tr>   
     <tr>
    <td>书名</td>
    <td><input type="text" id="bookName" name="bookName"> </td>
    </tr>    
    <tr>
    <td>书类型</td>
    <td>
    
     <select id="tag1" onchange="getNext(this.value)">
    <option value="0">请选择</option>
	<c:forEach  var="type" items="${types}">
	<option value="${type.bookTypeId}">${type.bookTypeName}</option>
	</c:forEach>
	
    </select>
    <select id="tag2" onchange="getN(this.value)">
    <option value="0">请选择</option>
    </select> 
    
    
    <select id="tag3" name="tag3"><option value="0">请选择</option></select>
    
    
    <br>
    <input type="text" id="bookTypeId" name="bookTypeId"> </td>
    </tr>
     <tr>
    <td>出版社</td>
    <td><input type="text" id="pbName" name="pbName"> </td>
    </tr> 
     <tr>
    <td>作者</td>
    <td><input type="text" id="author" name="author"> </td>
    </tr>  
    <tr>
    <td>评论</td>
    <td><input type="text" id="context" name="context">  </td>
    </tr>  
    <tr>
    <td>价格</td>
    <td><input type="text" id="price" name="price"> </td>

    </tr> 
    <tr>
    <td>是否可用</td>
   <td>
    <label>
      <input type="radio" name="radio" value="1" id="radio_0" checked="checked" />
      上架</label>
  
    <label>
      <input type="radio" name="radio" value="2" id="radio_1" />
      未上架</label>
   
    <label>
      <input type="radio" name="radio" value="3" id="radio_2" />
      不可用</label>
   
  </td>
    </tr>
    </table>
    <input type="submit" value="新增图书">
    </form>
  </body>
</html>
