<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
  <link rel="styleSheet" href="${pageContext.request.contextPath}/background/css/body.css" type="text/css" media="all"/>
 
	<title>寻书信息表-丁丁网上书城后台管理系统</title>
  </head>
  <body>
  <table >
    		<caption>
					<font size="6" color="red">
						寻&nbsp;书&nbsp;信&nbsp;息&nbsp;表 </font>
					</caption>
    		<tr>
    			<th width="15%">
    				寻书编号
    			</th>
    			<th width="15%">
    				书名
    			</th>
    			<th width="15%">
    				作者
    			</th>
    			<th>
    				出版社
    			</th>
    			<th>
    				邮箱
    			</th>
    			<th>
    				其他
    			</th>
    			<th>
    				删除
    			</th>
    		</tr>
    	
    		<c:forEach items="${seeks}" var="seeks">
    			<tr>
    			<td>
    				${seeks.seekId}
    			</td>
    			<td>
    				${seeks.seekName}
    			</td>
    			<td>
    				${seeks.seekAuthor}
    			</td>
    			<td>
    				${seeks.seekPbName}
    			</td>
    			<td>
    				${seeks.seekEmail}
    			</td>
    			<td>
    				${seeks.seekContext}
    			</td>
    			<td>
    				<a href="deleteSeek.do?id=${seeks.seekId}"	
    				title="删除寻书信息"
    				onclick="return isDelete()"
    			>删除</a>
    			</td >
    			</tr>
    		</c:forEach>
    		
    	</table>
  </body>
    <script type="text/javascript">
  	function isDelete() {
			return confirm("您确定要删除寻书信息吗？\n注意，此删除【不可恢复】！");
		}
  </script>
</html>