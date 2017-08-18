<%@page import="db.RentcarDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberLoginProc.jsp</title>
</head>
<body>
<%

	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	//confirm member ID and Password
	RentcarDAO rdao = new RentcarDAO();
	
	//present if a member
	int result = rdao.getMember(id, pass);
	
	if(result == 0){
%>
		<script>
			alert("Your ID or Password are invalid");
			location.href="RentcarMain.jsp?center=MemberLogin.jsp";
		</script>
<%
	}else{
		//if logged in
		session.setAttribute("id", id);
		response.sendRedirect("RentcarMain.jsp");
	}
%>
</body>
</html>