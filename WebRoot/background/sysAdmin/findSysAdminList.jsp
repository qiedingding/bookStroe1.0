<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>丁丁网上书 城   - 管理员信息</title>
    <link rel="styleSheet" href="${pageContext.request.contextPath}/background/css/body.css" type="text/css" media="all" />
  </head>
  
  <body>
  	<table>
  		<caption>云工厂网上书城管理员信息列表</caption>
  		<tr>
  			<th>管理员编号</th>
  			<th>管理员名称</th>
  			<th>权限</th>
  			<th>更改权限</th>
  			<th>删除</th>
  		</tr>
  		<c:forEach var="ad" items="${admins}" > 
  			<tr onmouseout="this.bgColor='white'" onmouseover="this.bgColor='#66CCFF'">
	  			<td>${ad.adminId}</td>
	  			<td>${ad.name}</td>
	  			<td>${ad.pwd}</td>
  			<c:if test="${admin.type == 1}" var="result" >
  				<td><a href="${pageContext.request.contextPath}/findOneAdmin.do?adminId=${ad.adminId}">权限设置</a>
  				</td>
  				<td><a href="${pageContext.request.contextPath}/deleteAdmin.do?adminId=${ad.adminId}" 
  					title="删除管理员" onclick="return isDelete('${ad.name}')">删除</a></td>
  			</c:if>
  			<c:if test="${!result}">
				<td>无权限</td>
  				<td>无权限</td>
  			</c:if>
		</c:forEach>
		<tr>
			<c:if test="${admin.type == 1}" var="res">
	  			<td colspan="3">
	  				<a href="${pageContext.request.contextPath}/background/sysAdmin/saveSysAdmin.jsp">新增</a>
	  			</td>
			</c:if>
			<c:if test="${!res}">
				<td>无新增权限</td>
	  		</c:if>
		</tr>
		
  	</table>
  </body>
  <script type="text/javascript">
  	function isDelete(adminName) {
  		return confirm("确定删除【" + adminName + "】吗？");
  	}
  	var bookStates = '${requestScope.bookStates}';
  	function goNowPage(nowPage) {
  		var url = "${pageContext.request.contextPath}/FindAllBookInfoServlet?nowPage=" + nowPage + "&bookStates=" + bookStates;
  		window.location = url;
  	}
  	function changeStates(myStates){
  		bookStates = myStates;
  		goNowPage(1);
  	}
  	function init() {
  		var init = "sY";
  		if(bookStates == '1') {
  			init = "wSJ";
  		}else if(bookStates == '2') {
  			init = "ySJ";
  		}else if(bookStates == '3') {
  			init = "bKY";
  		}
  		document.getElementById(init).style.background = '#66CCFF';
  		document.getElementById("selectNowPage").value = "${nowPage}";
  	}
  </script>
</html>
