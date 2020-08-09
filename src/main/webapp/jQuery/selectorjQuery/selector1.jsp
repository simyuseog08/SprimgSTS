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
	//alert(document.getElementsByTagName("p")[0].innerHTML);
	//alert(document.getElementById("p1").innerHTML);
	/* for(var i=0;i<$("p").length;i++){
	$($("p")[i]).html('모두짱');
	} */
	/* $($("p")[0]).click(function(){
		alert('신지혜짱');
	}); */
	
	/* $("p").click(function(){
		alert($(this).html());
	}); */
	/* $("p#p1").click(function(){
		alert('p1Tag');
	});
	$("p#p2").click(function(){
		alert('p2Tag');
	}); */
	
	
	/* $("p").eq(0).click(function(){
		alert('P1');
		$("p").eq(1).click(function(){
    		alert('P2');
    		$("p").eq(2).click(function(){
        		alert('P3');
        	});
    	});
	});
	 */
	
$("button").click(function(){
	//alert(this.firstChild.nodeValue);
	//alert($(this).html());
	if(this.firstChild.nodeValue=='Click1'){
		$($("div")[0]).append("<img src='/webPro/img/0.jpg' width=200 height=200>");
	}
	else if(this.firstChild.nodeValue=='Click2'){
		$("div").eq(1).html("<img src='/webPro/img/1.jpg' width=200 height=200>");
	}
	else if(this.firstChild.nodeValue=='Click3'){
		$("div").eq(2).html("<img src='/webPro/img/2.jpg' width=200 height=200>");
	}
	$("img").click(function() {
		$(this).hide('slow');
	});
});
	
});

	
	

</script>

</head>
<body>
	<!-- <p id="p1">오야지</p>
	<p id="p2">오야봉</p>
	<p id="p3">심유석</p>
	<p>김진광</p>
	<p>김광혁</p>
	 -->
	
	<button>Click1</button><button>Click2</button><button>Click3</button><br>
	<div></div>
	<div></div>
	<div></div>
	
</body>
</html>