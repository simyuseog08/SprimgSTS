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
     	//$("p").text("hi");
		/* $("p").each(function(index) {
			switch (index) {
			case 0:
				$(this).text("A");
				break;
			case 1:
				$(this).text("B");
				break;
			case 2:
				$(this).text("C");
				break;

			default:
				break;
			}
		}); */
		
		$("p").text("aaaaa");
		
		//alert($("p").length);
		 $("p").each(function() {
			alert($(this).text().length);
			//alert($(this).attr("id"));
		}); 
		
    });
</script>

</head>
<body>
	<p id="p1"></p>
	<p id="p2"></p>
	<p id="p3"></p>
 
</body>
</html>





