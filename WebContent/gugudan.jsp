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
	%>
		<table border="1">
			<tr bgcolor="#ccccff">
				<%
					for(int i=2;i<=9;i++)
					{
				%>
					<td><%= i+"단" %></td>
				<%
					}
				%>
			</tr>	
			<%
				for(int i=1;i<=9;i++){
			%>
				<tr>
			<%		
					for(int j=2;j<=9;j++){
			%>		
					<td><%=j+"x"+i+"="+j*i %></td>
			<%
					}
			%>
				</tr>
			<% 
				}
			%>
		
		
		</table>
	
	
	</body>
	
</html>
