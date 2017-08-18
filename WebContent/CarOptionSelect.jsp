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
	int no = Integer.parseInt(request.getParameter("no"));
	int qty = Integer.parseInt(request.getParameter("qty"));
	String img = request.getParameter("img");
%>

<center>
	<form action="RentcarMain.jsp?center=CarReserveResult.jsp" method="post">
		<table width="1000">
			<tr>
				<td align="center" colspan="3">
					<font size="6" color="gray"><b>Select Options</b></font>
				</td>
			</tr>
			<tr>
				<td rowspan="7" width="500">
					<img alt="" src="img/<%=img %>" width="450">
				</td>
				<td width="250" align="right"> Rental Period</td>
				<td width="250" align="center"> 
					<input type="text" name="dday">
				</td>
			</tr>
			<tr>
				<td width="250" align="right"> Rental Date</td>
				<td width="250" align="center"> 
					<input type="date" name="rday" size="15" />
				</td>
			</tr>
			<tr>
				<td width="250" align="right"> Insurance</td>
				<td width="250" align="center">
					<select name="usein">
						<option value="1">Want($10/day)</option>
						<option value="2">Won't</option>
					</select>
				</td>
			</tr>
			<tr>
				<td width="250" align="right"> Wifi</td>
				<td width="250" align="center">
					<select name="usewifi">
						<option value="1">Want($10/day)</option>
						<option value="2">Won't</option>
					</select>
				</td>
			</tr>
			<tr>
				<td width="250" align="right"> Navigation</td>
				<td width="250" align="center">
					<select name="usenavi">
						<option value="1">Want($10/day)</option>
						<option value="2">Won't</option>
					</select>
				</td>
			</tr>
			<tr>
				<td width="250" align="right"> Car seat</td>
				<td width="250" align="center">
					<select name="useseat">
						<option value="1">Want($10/day)</option>
						<option value="2">Won't</option>
					</select>
				</td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="hidden" name="no" value="<%=no %>">
					<input type="hidden" name="qty" value="<%=qty %>">
					<input type="submit" value="Reservation">
				</td>
			</tr>
		</table>
	</form>
</center>



</body>
</html>