<%@page import="db.RentcarDAO" %>
<%@page import="db.CarListBean" %>
<%@page import="java.util.Vector" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CarReserveMain.jsp</title>
</head>
<body>
<!-- Display popular top 3 models -->
<%
	RentcarDAO rdao = new RentcarDAO();
	
//install through Vector
	Vector<CarListBean> v = rdao.getSelectCar();	
%>
	<table width="1000">
		<tr height="20">
			<td colspan="3">
				<font size="5" color="gray"><b>Popular Cars</b></font>
			</td>
		</tr>
		<tr height="240">
		
		<% for(int i=0; i<v.size(); i++){
			CarListBean bean = v.get(i);
		%>
			<td width="333" align="center">
				<a href="RentcarMain.jsp?center=CarReserveInfo.jsp?no=<%=bean.getNo()%>">
				<img alt="" src="img/<%=bean.getImg() %>" width="300" height="200"> 
				</a><p>
				Car Name : <%=bean.getName() %>
			</td>
		<%
			}
		%>
	</table>
	<center>
	<p>
		<font size="4" color="gray"> Search your Car</font><br><br>
		<form action="RentcarMain.jsp?center=CarCategoryList.jsp" method="post">
			<font size="3" color="gray"><b>Search</b></font>&nbsp;&nbsp;
			<select name="category">
				<option value="1">Small</option>
				<option value="2">Medium</option>
				<option value="3">Big</option>
			</select>
			<input type="submit" value="Go">&nbsp;&nbsp;
		</form> 
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button onclick="location.href='RentcarMain.jsp?center=CarAllList.jsp'">All Search</button>
	</center>



</body>
</html>