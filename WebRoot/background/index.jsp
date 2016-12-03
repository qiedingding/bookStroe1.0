<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<html>
<head>
<title>云工厂网上书店后台管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>

<frameset rows="93,*" cols="*" frameborder="NO" border="0" framespacing="0">
  <frame name="topFrame" scrolling="NO" noresize src="${pageContext.request.contextPath}/background/top.jsp" >
  <frameset cols="180,*" frameborder="NO" border="0" framespacing="0" rows="*"> 
    <frame name="leftFrame" noresize scrolling="AUTO" src="${pageContext.request.contextPath}/background/left.jsp">
    <frame name="mainFrame" src="${pageContext.request.contextPath}/background/main.jsp">
  </frameset>
</frameset><noframes></noframes>
<body bgcolor="#FFFFFF" text="#000000">
</body>
</html>
