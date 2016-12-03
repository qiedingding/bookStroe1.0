<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<HTML><!-- InstanceBegin template="/Templates/Template.dwt" codeOutsideHTMLIsLocked="false" -->
<HEAD>
<META http-equiv="Content-Type" content="text/html; charset=gb2312">
<!-- InstanceBeginEditable name="doctitle" -->
<TITLE>用户登录页面</TITLE>
<LINK href="image/style.css" type="text/css" rel="stylesheet">

</HEAD>

<script>
	//用户名验证不能为空
	function user()
	{
		var u = document.getElementById("username").value;
		if(u == "")
		{
			alert("请输入会员名！");
			document.getElementById("username").focus();
			return false;
		}
		return true;
	}
	//密码验证
	function pwd()
	{
		var p = document.getElementById("pwd").value;
		if(p == "")
		{
			alert("请输入会员密码！");
			document.getElementById("pwd").focus();
			return false;
		}
		return true;
	}
	function zong()
	{
		var a = user();
		if(!a)
		{
			return false;
		}
		var b = pwd();
		if(!b)
		{
			return false
		}
		return true;
	}
</script>
<%@include file="UpJsp.jsp"%>
	<br><br><br><br><table width="662" border="0" cellspacing="0" cellpadding="0"
			align="center">
  
  <TR>
    <TD><TABLE width="50%" border="0" cellspacing="0" cellpadding="0" align="center">
  <TR>
    <TD width="21"><IMG src="image/Login_left.gif"></TD>
    <TD bgcolor="#FFFFF7" align="center" valign="middle" >
    
	<FORM action="login.do" method="post" name="myform">
	<TABLE width="96%" border="0" cellspacing="0" cellpadding="0">
  <TR>
    <TD class="register-td">会员名：</TD>
    <TD><INPUT name="userName" type="text" ></TD>
  </TR>
  <TR>
    <TD class="register-td">密&nbsp;&nbsp;码：</TD>
    <TD><INPUT name="pwd" type="password" ></TD>
  </TR>
  <TR>
    <TD colspan="2" align="center" height="50"><INPUT name="b1" type="submit" value="登录" onMouseOut="this.className='login-over'" onMouseOver="this.className='login-out'" class="login-over" onclick = "return zong()"></TD>
  </TR><TR>
     <TD colspan="2" align="center" height="50"><A href="zhuce.jsp"><IMG src="image/login-1.gif"></A></TD>
  </TR>
</TABLE>
</FORM>
</TD>
    <TD width="21"><IMG src="image/Login_right.gif"></TD>
  </TR>
</TABLE></TD>
  </TR>
  <TR>
    <TD align="center"><IMG src="image/Login_bottom.gif"></TD>
  </TR>
</TABLE></TD><!--右侧-->
    <TD>&nbsp;</TD>
  </TR>
</TABLE>


		</table>
		<tr>
			<td>
				&nbsp;
			</td>

			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<div align="center">
							<img src="images/daodu36.gif" width="593" height="58" alt="广告区">
						</div>
					</td>
				</tr>
			</table>
			<p align="center" class="wr1">
				淘书秀 | 寻书登记 | 好书快讯 | 文化沙龙 | 书店平台
				<br>
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
	</td>
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
</html>

