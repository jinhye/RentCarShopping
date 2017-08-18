<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberLogin.jsp</title>
</head>
<body>
	<form action="MemberLoginProc.jsp" method="post">
		<table width="300" border="1" bordercolor="gray" bgcolor="A8DAD6">
			<tr height="60">
				<td align="center" colspan="2">
					<font size="6" color="gray"> Log In</font>
				</td>
			</tr>
			<tr height="40">
				<td width="120" align="center">ID</td>
				<td width="180"><input type="text" name="id" value="hello" size="15"></td>
			</tr>
			<tr height="40">
				<td width="120" align="center">PassWord</td>
				<td width="180"><input type="password" name="pass" value="hello" size="15"></td>
			</tr>
			<tr height="40">
				<td align="center" colspan="2">
					<input type="submit" value="Login">&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset">
				</td>
			</tr>
		</table>
	</form>
		<br>
		<b>If you are new here</b>&nbsp;
		<button onclick="location.href='RentcarMain.jsp?center=MemberRegister.jsp'"> Register</button>
	
	
</body>
</html>