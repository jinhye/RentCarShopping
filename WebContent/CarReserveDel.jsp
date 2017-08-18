<%@page import="db.RentcarDAO" %>
<%@page import="db.CarListBean" %>
<%@page import="java.util.Vector" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int reserveno = Integer.parseInt(request.getParameter("reserveno"));
	
	
	RentcarDAO rdao = new RentcarDAO();
	rdao.carRemoveReserve(reserveno);
	
	response.sendRedirect("CarReserveView.jsp");
%>
</body>
</html>