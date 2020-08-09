<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.select{
	font-size: 15px;
	background-color: yellow;
	font-family: "휴먼매직체";
}

</style>
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
/* 	$("div p").html("Test");// $("div") = document.getElementByTagNames
	$("div").each(function(index,dom) { //dom은 div 태그 임
		//alert($(dom).html());
		//$("p").text("text"+index); //가리키는 곳이 없음
		$("p",this).text("test"+index);
		
		
	}); */
/* 	$("p b").each(function() {
		//$(this).text("Java");
		alert($(this).text());
		
		
	}); */
	$("#t5").hide();
	$("#t4").hide();
	$("p#ph").click(function() {
		$("p").addClass("select");
		$("#t5").show('slow');
		$("#t4").fadeOut(500);
	});
	
	$("p#ph2").click(function() {
		$("p").removeClass();
		$("#t5").hide();
		$("#t4").fadeIn();
	});
});
</script>
</head>
<body>
	<!-- <div><p></p></div>
	<div><p></p></div>
	<div><p></p></div> -->
	
	
	<p id="ph"><b>HELLO</b><b>jQuery</b><b>Oracle</b></p>
	<p class="select" id="ph2">Jsp</p>
	<p>Java &aop; oop</p>
	<p>Spring &aop; aop</p>
	
	
	<img id="t5" src="/webPro/img/4.jpg" width="200" height="200">
	<img id="t4" src="/webPro/img/3.jpg" width="200" height="200">
</body>
</html>