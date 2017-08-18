<%@page import="db.RentcarDAO" %>
<%@page import="db.CarViewBean" %>
<%@page import="db.CarReserveBean" %>
<%@page import="java.util.Vector" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CarReserveView.jsp</title>
</head>
<body>
<%
	int reserveno = (Integer)session.getAttribute("reserveno");
	String id = (String)session.getAttribute("id");
	if(id == null){
%>
		<script>
			alert("You are not logged in");
			location.href="RentcarMain.jsp?center=MemberLogin.jsp";
		</script>
<%
	}
	
	//call id logged in
	RentcarDAO rdao = new RentcarDAO();
	Vector<CarViewBean> v = rdao.getAllReserve(id);
%>
<center>
	
		<h3>Car Rental Confirmation</h3>
	<table width="1000" border="1">
		<tr height="40">
			<td width="160" align="center">Photo</td>
			<td width="150" align="center">Name</td>
			<td width="150" align="center">Date</td>
			<td width="60" align="center">Duration</td>
			<td width="100" align="center">Price</td>
			<td width="60" align="center">Q'ty</td>
			<td width="60" align="center">Insurance</td>
			<td width="60" align="center">Wifi</td>
			<td width="60" align="center">Baby Seat</td>
			<td width="60" align="center">Navigation</td>
			<td width="80" align="center">Delete</td>
		</tr>
<%
	for(int i=0; i<v.size(); i++){
		CarViewBean bean = v.get(i);
%>
		<tr height="70" bordercolor="blue">
			<td width="160" align="center"><img alt="" src="img/<%=bean.getImg() %>" width="120" height="70"></td>
			<td width="150" align="center"><%=bean.getName() %></td>
			<td width="150" align="center"><%=bean.getRday() %></td>
			<td width="60" align="center"><%=bean.getDday() %></td>
			<td width="100" align="center"><%=bean.getPrice() %></td>
			<td width="60" align="center"><%=bean.getQty() %></td>
			<td width="60" align="center"><%=bean.getUsein() %></td>
			<td width="60" align="center"><%=bean.getUsewifi() %></td>
			<td width="60" align="center"><%=bean.getUseseat() %></td>
			<td width="60" align="center"><%=bean.getUsenavi() %></td>
			<td width="80" align="center"><button onclick="location.href='CarReserveDel.jsp?reserveno=<%=bean.getReserveno()%>'">Delete</button></td>
		</tr>
<% 
	}

%>
	
	</table>
</center>


</body>
</html>