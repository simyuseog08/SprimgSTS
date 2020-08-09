<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="2">
		<thead>
			<tr>
				<th>No</th>
				<th>Item</th>
			</tr>
			<c:forEach var="i" items="${list }" varStatus="cnt">
				<tr>
					<td>${cnt.count }</td>
					<td><a href="locationHit.do?no=${cnt.count}&job=info&page=5">${i}</a></td>
				</tr>
			
			</c:forEach>
		</thead>
		
		
	
	</table>

</body>
</html>