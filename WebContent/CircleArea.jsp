<%@page import="jsp_script.Circle"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	Circle circle = new Circle();
	
	String num = request.getParameter("radius");
	double r = Integer.parseInt(num);
	
	double result = circle.getArea(r);
	out.println("이 원의 넓이는: "+ result);
	%>
	
	<form action="CircleAr.html" method="post">
	<input type="submit" value="되돌아가기"> 
	</form>
	
</body>
</html>