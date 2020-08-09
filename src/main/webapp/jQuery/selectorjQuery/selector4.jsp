<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
    	/* $("tr:even").css("background-color","gray");
    	$("tr:odd").css("background-color","black"); */
    	$("div p b").css("background-color","pink");
    });
</script>    
</head>
<body>
  <div>
    <p><b>딸기</b></p>
  </div>
  <div>수박</div>
  <p>멜론</p>
  <p>참외</p>
  <p>호박</p>

<%--   <table cellpadding="0" cellspacing="0"
               border="1" width="70%" align="center">
  <c:forEach var="i" begin="1" end="100" step="1">
        <tr>
           <td>ROW INDEX${i}</td>
        </tr>
  </c:forEach>
  </table> --%>

</body>
</html>





