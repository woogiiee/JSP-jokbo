<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- var vatName = "varValue" -->
		<c:set var = "vatName" value="varValue"></c:set>
		varName : <c:out value ="$[vatName]"/>
		<br/>
		<c:remove var = "vatName"/>
		vatName : <c:out value = "${vatName}"/></h3>
		<hr/>
		<c:catch var = "error">
			<%=2/0 %>
			${2/0}
		</c:catch>
		<br/>
		<c:out value ="${error}"/>
		<hr/>
		
		<c:if test = "${1+2==3}">
			1+2=3
		</c:if>
		
		<hr/>
<!-- 		feach가 0부터 시작해서 3씩 증가하여 30까지 for each문과 비슷
 -->		<c:forEach var = "fEach" begin="0" end="30" step="3">
			${fEach}
			</c:forEach>
			<hr/>
	<!-- 구구단 테이블 -->
		<table border ="1" align="center">
			<c:forEach var = "i" begin="1" end="9" step="1"> <!-- step이 1이면 생략가능 -->
				
				<tr>
				<c:forEach var = "j" begin="1" end="9" step="1">
					<td>${j}*${i}=${i*j}</td>
			</c:forEach>
			</tr>
			</c:forEach>
		</table>
		
		<c:set var="num1" value="5"/>
		<c:set var="num2" value="7"/>
		<c:set var="result" value="${num1 * num2 }"/>
		${num1 }과${num2 }의 곱은 ${result}
		
		<c:if test="${num eq 10 }">
		10이상입니다!<br/>
		</c:if>		
		<!--  JSTL문법 eq, ne, lt, ge, le, ge 정리
			==또는 eq
			!=또는 ne
			< 또는 lt
			> 또는 gt
			<= 또는 le
			>= 또는 ge
		 -->
		
		<c:set var ="num" value ="0"/>
		<c:choose>
			<c:when test = "${num==0 }">
			안녕!
			</c:when>
			<c:when test ="${num eq 1 }">
			잘가!
			</c:when>
			<c:otherwise>
			뭐야...?
			</c:otherwise>
			</c:choose>
		
		<%
		ArrayList<String> list = new ArrayList<String>();
			list.add("학생1");
			list.add("학생2");
			list.add("학생3");
			list.add("학생4");
			list.add("학생5");
			pageContext.setAttribute("list", list);
		%>
		
		<c:forEach items="${list}" var="item">
			${item}<br>
		</c:forEach>
		
		
		
	</body>
</html>