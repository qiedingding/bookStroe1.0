<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <link rel="styleSheet" href="${pageContext.request.contextPath}/background/css/body.css" type="text/css" media="all" />
    <title>新增图书类别</title>
  </head> 
  <body>

    <form action="<%=request.getContextPath()%>/saveBookType.do" method="post">
    <table>
    <caption>新增图书类别</caption>
    <tr>
    <td>类型号</td>
    <td><input type="text" id="bookTypeId" name="bookTypeId"> </td>
    </tr>   
     <tr>
    <td>父ID</td>
    <td><input type="text" id="parentId" name="parentId"> </td>
    </tr>    
    <tr>
    <td>书类型</td>
    <td><input type="text" id="bookTypeId" name="bookTypeId"> </td>
    </tr>   
     <tr>
    <td>图书类别名称</td>
    <td><input type="text" id="bookTypeName" name="bookTypeName"> </td>
    </tr> 
  
    <tr>
    <td>评论</td>
    <td><input type="text" id="context" name="context">  </td>
    </tr>  
    <tr>
    <td>是否可用</td>
    <td><input type="text" id="typeIsDelete" name="typeIsDelete"> </td>
    </tr> 
    </table>
    <input type="submit" value="新增类别">
    </form>
  </body>
</html>
