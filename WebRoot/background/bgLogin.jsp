<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>后台管理员登陆--云工厂</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" type="text/css" media="screen" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" media="screen" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/invalid.css" type="text/css" media="screen" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/facebox.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/jquery.wysiwyg.js"></script>
</head>
<body id="login">
<div id="login-wrapper" class="png_bg" align="center">
  <div id="login-top">
    <h1>管理员登陆</h1>
    <a href=""><img id="logo" src="resources/images/logo.png" alt="Simpla Admin logo" /></a> </div>
  <div id="login-content">
    <form action="${pageContext.request.contextPath}/adminLogin.do" method="post">
      <div class="notification" align="center" >
        <div>云工厂后台登陆 </div>
      </div>
      <p>
        <label>用户名：</label>
        <input name="name" class="text-input" type="text" />
      </p>
      <div class="clear"></div>
      <p>
        <label>密码：</label>
        <input name="pwd" class="text-input" type="password" />
      </p>
      <div class="clear"></div>
      <p id="remember-password">
        <input type="checkbox" />
       	 记住密码
      </p>
      <c:if test="${tishi!=null }">
	      <div class="clear"></div>
	      <p align="center">
	      <font color="red">用户名，密码错误！</font>
	      </p>
     </c:if>
      <div class="clear"></div>
      <p>
        <input class="button" type="submit" value="管理员登陆" />
      </p>
    </form>
  </div>
  <!-- End #login-content -->
</div>
<!-- End #login-wrapper -->
</body>
</html>
