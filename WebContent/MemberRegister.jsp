<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberRegister.jsp</title>
</head>
<body>
	<form action="MemberRegisterProc.jsp" method="post">
		<center>
			<table border="1" bgcolor="lightyellow" width="300">
				<tr height="60">
					<td colspan="2" align="center"><b><font size="5">Join in Membership</font></b></td>
				</tr>
				<tr>
					<td width="120">ID: </td><td width="180"><input type="text" name="id" value="Hello"></td>
				</tr>
				<tr height="40">
					<td width="120">PassWord: </td><td width="180"><input type="password" name="pass" value="Hello"></td>
				</tr>
				<tr height="40">
					<td width="120">Last Name: </td><td width="180"><input type="text" name="lname" placeholder="Last Name"></td>
				</tr>
				<tr height="40">
					<td width="120">Phone: </td><td width="180"><input type="text" name="phone" placeholder="123-456-1234"></td>
				</tr>
				<tr height="40">
					<td width="120">Email: </td><td width="180"><input type="text" name="email" placeholder="abc@abc.com"></td>
				</tr>
				<tr height="40">
					<td align="center" colspan="2">
					<input type="submit" value="Register">
					&nbsp;&nbsp;&nbsp;
					<input type="reset" value="Reset"></td>
				</tr>
			</table>	
		</center>	
	</form>
</body>
</html>