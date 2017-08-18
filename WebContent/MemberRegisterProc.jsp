<%@page import="db.RentcarDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberRegisterProc.jsp</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String lname = request.getParameter("lname");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");

	//
	RentcarDAO rdao = new RentcarDAO();
	rdao.MemberRegister(id, pass, lname, phone, email);
	
	response.sendRedirect("RentcarMain.jsp?center=MemberLogin.jsp");

%>
</body>
</html>