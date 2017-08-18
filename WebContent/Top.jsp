<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Top.jsp</title>
</head>
<body>
<center>
<%
	String id = (String)session.getAttribute("id");

	if(id==null){
		id="GUEST";
	}
%>
	<table width="1000">
		<tr height="50">
			<td colspan="4">
				<a href="RentcarMain.jsp">
				<img alt="" src="img/logo.png" height="65">
				</a>
			</td>
			<td align="right" width="300">
				Welcome <b><%=id %></b> &nbsp;&nbsp;
				
			<%
				if(id.equals("GUEST")){
			%>
					<button onclick="location.href='RentcarMain.jsp?center=MemberLogin.jsp'"> Login</button>
					<button onclick="location.href='RentcarMain.jsp?center=MemberRegister.jsp'"> Register</button>
			<%
				}else{
			
			%>		<button onclick="location.href='RentcarMain.jsp?center=MemberLogout.jsp'">Log out</button>
			<%
				}
			%>			
			</td>
		</tr>
		<tr height="40">
			<td align="center" width="200" bgcolor="red">
				<font color="white" size="4"><a href="RentcarMain.jsp?center=CarReserveMain.jsp" style="text-decoration:none">Reservation</a></font>
			</td>
			<td align="center" width="200" bgcolor="red">
				<font color="white" size="4"><a href="RentcarMain.jsp?center=CarReserveView.jsp" style="text-decoration:none">Confirmation</a></font>
			</td>
			<td align="center" width="200" bgcolor="red">
				<font color="white" size="4"><a href="#" style="text-decoration:none">Board</a></font>
			</td>
			<td align="center" width="200" bgcolor="red">
				<font color="white" size="4"><a href="#" style="text-decoration:none">Event</a></font>
			</td>
			<td align="center" width="200" bgcolor="red">
				<font color="white" size="4"><a href="#" style="text-decoration:none">Customer Service</a></font>
			</td>	
		
	</table>

</center>
</body>
</html>