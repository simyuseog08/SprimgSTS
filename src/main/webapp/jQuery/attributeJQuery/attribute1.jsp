<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
    	$("img").click(function(){
    		$(this).attr("src",$("img").eq(1).attr("src"));
    	});
    	
    });
</script>    
</head>
<body>
   <img alt="" src="/webPro/img/0.jpg" width="100" height="100">
   <img alt="" src="/webPro/img/1.jpg" width="100" height="100">
   <img alt="" src="/webPro/img/2.jpg" width="100" height="100">
   <img alt="" src="/webPro/img/3.jpg" width="100" height="100">
   <img alt="" src="/webPro/img/4.jpg" width="100" height="100">

</body>
</html>





