<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<a href="empList.do">EmpList</a>
	<a href="empList.do?ename=SMITH">EmpList</a>
	<a href="empList.do?ename=SMITH&job=SALESMAN">EmpList</a>
	<a href="empList.do?job=SALESMAN">EmpList</a>
	
	<a href="empListIN.do">EMPLISTIN</a>
	<a href="empUpdate.do?empno=7369&ename=OOP">EMPUPDATE</a>
	<a href="empUpdate.do?empno=7369&ename=aop&job=student">EMPUPDATE</a>
</body>
</html>