<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RentcarMain.jsp</title>
</head>
<body>
<center>
	<%
		String center = request.getParameter("center");
	
		if(center == null){
			center = "Center.jsp";
		}
	%>
	
	<table width="1000">
		<!-- Top section -->
		<tr height="100" align="center">
			<td align="center"><jsp:include page="Top.jsp" /></td>
		</tr>
		
		<!-- Center section -->
		<tr height="500" align="center">
			<td align="center"><jsp:include page="<%=center %>" /></td>
		</tr>
		
		<!-- Bottom section -->
		<tr height="100" align="center">
			<td align="center"><jsp:include page="Bottom.jsp" /></td>
		</tr>
		
		
	</table>
	
	
	
	
	
	
	
</center>
</body>
</html>