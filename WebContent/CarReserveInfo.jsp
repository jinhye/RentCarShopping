<%@page import="db.RentcarDAO" %>
<%@page import="db.CarListBean" %>
<%@page import="java.util.Vector" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CarReserveInfo.jsp</title>
</head>
<body>
<%
	int no = Integer.parseInt(request.getParameter("no"));

	//Access to Database
	RentcarDAO rdao = new RentcarDAO();
	CarListBean bean = rdao.getOneCar(no);

%>
<center>
	<form action="RentcarMain.jsp?center=CarOptionSelect.jsp" method="post">
		<table width="1000">
			<tr>
				<td align="center" colspan="3">
					<font size="6" color="gray"><b>Select a car</b></font>
				</td>
			</tr>
			<tr>
				<td rowspan="6" width="500">
					<img alt="" src="img/<%=bean.getImg() %>" width="450">
				</td>
				<td width="250" align="right"> Car Name</td>
				<td width="250" align="center"> <%=bean.getName() %></td>
			</tr>
			<tr>
				<td width="250" align="right"> Number of Cars</td>
				<td width="250" align="center"> 
					<select name="qty">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
					</select>
				</td>
			</tr>
			<tr>
				<td width="250" align="right"> Use People</td>
				<td width="250" align="center"> <%=bean.getUsepeople() %></td>
			</tr>
			<tr>
				<td width="250" align="right"> Rental Price</td>
				<td width="250" align="center"> C$ <%=bean.getPrice() %> /day</td>
			</tr>
			<tr>
				<td width="250" align="right"> Brand</td>
				<td width="250" align="center"> <%=bean.getCompany() %></td>
			</tr>
			<tr>
				<td width="250" align="center" colspan="2">
					<input type="hidden" name="no" value="<%=bean.getNo() %>">
					<input type="hidden" name="img" value="<%=bean.getImg() %>">
					<input type="submit" value="Option and Rental">
				</td>
			</tr>
		</table>
		<br><br><br>
		<font size="5" color="gray">View the car information</font>
		<p>
		<%=bean.getInfo() %>
	</form>
</center>
</body>
</html>