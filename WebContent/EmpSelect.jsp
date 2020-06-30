<%@page import="edu.emp.EmpDTO"%>
<%@page import="edu.emp.EmpDAO"%>
<%@page import="java.util.ArrayList"%>
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
		EmpDAO empDAO = new EmpDAO();
		ArrayList<EmpDTO> dtos = empDAO.empSelect();
		
		for(int i=0; i<dtos.size();i++){
			EmpDTO dto = dtos.get(i);
			String empno = dto.getEmpno();
			String ename = dto.getEname();
			String job = dto.getJob();
			String mgr = dto.getMgr();
			String hiredate = dto.getHiredate();
			String sal = dto.getSal();
			String comm = dto.getComm();
			String deptno = dto.getDeptno();
			
			
			out.println("사원번호 : " + empno + ", 사원이름 : " + ename + ", 직위 : " + job + ", 엠쥐알 : " + mgr + ",  입사날짜 : " + hiredate + ",  급여 : " + sal + ",  성과급 : " + comm + ", 부서번호 : " + deptno + "<br />" );
		}
		%>
	
		
	
	
	</body>
</html>