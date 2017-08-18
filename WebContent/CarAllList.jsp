<%@page import="db.RentcarDAO" %>
<%@page import="db.CarListBean" %>
<%@page import="java.util.Vector" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CarAllList.jsp</title>
</head>
<body>
<center>
	<table width="1000">
<%
	RentcarDAO rdao = new RentcarDAO();
	Vector<CarListBean> v = rdao.getAllCar();
	
	//display 3 items on each row
	int j=0;
	for(int i=0; i<v.size(); i++){
		CarListBean bean = v.get(i);
		if(j%3==0){
%>
			<tr height="200">
<%		} %>
				<td width="333" align="center">
					<a href="RentcarMain.jsp?center=CarReserveInfo.jsp?no=<%=bean.getNo()%>">
						<img alt="" src="img/<%=bean.getImg() %>" width="300" height="200">
					</a><p>
					<font size="3" color="gray"><b>Car Name : <%=bean.getName() %></b></font><br>
					<font size="3" color="gray"><b>Rental Price : <%=bean.getPrice() %></b></font>
				</td>
<%			j=j+1; 
	}
%>

	</table>
</center>
</body>
</html>