<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%@page import="db.RentcarDAO" %>
<%@page import="db.CarListBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="rbean" class="db.CarReserveBean">
	<jsp:setProperty name="rbean" property="*" />
</jsp:useBean>

<%
	String id = (String)session.getAttribute("id");

	if(id==null){
%>
		<script>
			alert("You can reserve after login");
			location.href="RentcarMain.jsp?center=MemberLogin.jsp";
		</script>
<%
	}
	
	//Date check
	Date d1 = new Date();
	Date d2 = new Date();
	
	//Date format
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	d1 = sdf.parse(rbean.getRday());
	d2 = sdf.parse(sdf.format(d2));
	
	//Date comparision
	int compare = d1.compareTo(d2);
	
	//allow to reserve a date same day or after
	if(compare < 0){
		%>
		<script>
			alert("You cannot reserve a date before today");
			history.go(-1);
		</script>
	<%
	}
	
	//set up id value
	String id1 = (String)session.getAttribute("id");
	rbean.setId(id1);
	
	RentcarDAO rdao = new RentcarDAO();
	rdao.setReserveCar(rbean);
	
	//Car information
	CarListBean cbean = rdao.getOneCar(rbean.getNo());
	
	int totalcar = cbean.getPrice()*rbean.getQty()*rbean.getDday();
	
	int usein = 0;
	if(rbean.getUsein()==1)
		usein=10;
	int usewifi = 0;
	if(rbean.getUsewifi()==1)
		usewifi=10;
	int usenavi = 0;
	if(rbean.getUsenavi()==1)
		usenavi=10;
	int useseat = 0;
	if(rbean.getUseseat()==1)
		useseat=10;
	
	int totaloption = rbean.getQty()*rbean.getDday()*(usein+usewifi+usenavi+useseat);
	
%>
	<center>
		<table width="1000">
			<tr height="100">
				<td align="center" colspan="2">
					<font size="6" color="gray">Car Rental Completed</font>
				</td>
			</tr>
			<tr>
				<td align="right" rowspan="4">
					<img alt="" src="img/<%=cbean.getImg() %>" width="470">
				</td>
			</tr>
			<tr>
				<td align="left">
					<font size="5" color="red">Total Amount : <%=totalcar+totaloption %></font>
				</td>
			</tr>
			<tr>
				<td align="left">
					<font size="5" color="red">Car Total: <%=totalcar %></font>
				</td>
			</tr>
			<tr>
				<td align="left">
					<font size="5" color="red">Option Total: <%=totaloption %></font>
				</td>			
			</tr>
		</table>	
	</center>


</body>
</html>