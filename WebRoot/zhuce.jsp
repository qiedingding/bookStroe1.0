<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>

<HTML>
	<!-- InstanceBegin template="/Templates/Template.dwt" codeOutsideHTMLIsLocked="false" -->
	<HEAD>
		<TITLE>用户注册页面</TITLE>
		<LINK href="image/style.css" type="text/css" rel="stylesheet">

	</HEAD>
	<script>
//验证邮箱
function users1() {

	var zhi1 = document.getElementById("email").value;
	if (zhi1 == "") {
		alert("email不能为空！");
		return false;
	}
	var ax = /^\w+([-+.]\w+)*@\w+([-.]\\w+)*\.\w+([-.]\w+)*$/;
	var sk = ax.exec(zhi1);
	if (!sk) {
		alert("邮箱输入不正确！");
		return false;
	}
	/*
		else
	{
		window.open("checkmail.html","_blank","height = 10, width = 100");
	}
	 */
	return true;
}
//验证用户名
function users2() {
	var zhi2 = document.getElementById("username").value;
	if (zhi2 == "") {
		alert("用户名不能空！");
		return false;
	}
	var jie = zhi2.substring(0, 1);
	var zimu = /^[A-Za-z]+$/;
	var result = zimu.exec(jie);
	if (!result) {
		alert("必须以字母开头，请重新输入！");
		return;
	}
	if (zhi2.length < 6) {
		alert("用户名长度不能小于6位！");
		return false;
	}
	return true;
}
//验证密码
function pwd1() {
	var pwd = document.getElementById("psw").value;
	if (pwd == "") {
		alert("密码不能为空！");
		document.getElementById("psw").focus();
		return false;
	}
	if (pwd.length < 6) {
		alert("密码长度不能小于6位！");
		document.getElementById("psw").focus();
		return false;
	}
	return true;
}
//重置密码验证！
function pwd2() {
	var pwda = document.getElementById("psw").value;
	var pwds = document.getElementById("repeatpsw").value;
	if (pwds != pwda) {
		alert("重置密码错误！");
		document.getElementById("repeatpsw").value = "";
		document.getElementById("psw").value = "";
		document.getElementById("repeatpsw").focus();
		return false;
	}
	return true;
}
//邮箱验证通过显示通过窗口
function emailopen() {
	var fan = users1();
	if (!fan) {
		return false;
	} else {
		window.open("checkmail.html", "_blank", "height = 10, width = 100");
	}
}
//用户名验证通过后显示窗口
function useropen()
	{
		var fan = users2();
		if(!fan)
		{
			return false;
		}else
		{
			window.open("checkuser.html","_blank","height = 10, width = 100");
		}
	}
	//总的验证方法
	function zong()
	{
		var s1 = users1();
		if(!s1)
		{
			return false;
		}
		var s2 = users2();
		if(!s2)
		{
			return false;
		}
		var s3 = pwd1();
		if(!s3)
		{
			return false;
		}
		var s4 = pwd2();
		if(!s4)
		{
			return false;
		}
		if(!s1 || !s2 || !s3 ||!s4)
		{
			return false;
		}
		return true;
	}
</script>
	</head>
	<%@include file="UpJsp.jsp"%>
	<table width="500" border="0" cellspacing="0" cellpadding="0"
		align="center">
		<TR>
			<TD background="image/register-line.gif" width="3"></TD>
			<TD>
				<FORM action="saveUser.do" method="post" name="zhuce">
					<TABLE width="760" border="0" cellspacing="0" cellpadding="0"
						align="center">
						<TR>
							<TD class="register-bold">
								会员信息：
								<IMG src="image/dot_line_1.gif" align="absmiddle">
							</TD>
						</TR>
						<TR>
							<TD>
								<TABLE width="96%" border="0" cellspacing="0" cellpadding="0"
									align="center">
									<TR>
										<TD width="30">
											<IMG src="image/register-arrow.gif">
										</TD>
										<TD class="register-td">
											会&nbsp;员&nbsp;名：
										</TD>
										<TD>
											<INPUT name="userName" type="text" class="register-input">
										</TD>
										<TD>
											<INPUT name="check2" type="button" value=" "
												class="register-check" onclick="useropen()">
											&nbsp;&nbsp;会员名须以字母开头，至少6位
										</TD>
									</TR>
									<TR>
										<TD width="30">
											<IMG src="image/register-arrow.gif">
										</TD>
										<TD class="register-td">
											密&nbsp;&nbsp;&nbsp;&nbsp;码：
										</TD>
										<TD>
											<INPUT name="pwd" type="password" class="register-input">
										</TD>
										<TD>
											<DIV id="fpwd">
												密码设置至少6位
											</DIV>
										</TD>
									</TR>
									<TR>
										<TD width="30">
											<IMG src="image/register-arrow.gif">
										</TD>
										<TD class="register-td">
											重复密码：
										</TD>
										<TD>
											<INPUT name="repeatpsw" type="password"
												class="register-input">
										</TD>
										<TD>
											<DIV id="frepeatpwd"></DIV>
										</TD>
									</TR>
								</TABLE>
							</TD>
						</TR>
						<TR>
							<TD>
								<DIV class="register-bold">
									<IMG src="image/dot_line_2.gif" align="absmiddle">
								</DIV>
								<DIV align="center">
									<INPUT name="B1" type="submit" value="&nbsp;"
										onMouseOut="this.className='register-over'"
										onMouseOver="this.className='register-out'"
										class="register-over" onclick="return zong()">
								</DIV>
							</TD>
						</TR>
					</TABLE>
				</FORM>
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


