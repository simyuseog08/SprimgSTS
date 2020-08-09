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
    	/* $("input[type='button']").click(function(){
    		//alert('신지혜바보!');
    		//$("span#sp1").text('신지혜바보!');
    		//$("span#sp1").text("<font color=blue>신지혜바보!</font>");
    		//$("span#sp1").html("<font color=blue>신지혜바보!</font>");
    		//$("span#sp1").append("<font color=blue>신지혜바보!</font>");
    		$("<font color=blue>신지혜바보!</font>").appendTo("#sp1");
    		
    	}); */
    	/* $("span").each(function(){
    		alert($(this).text('red'));
    	}); */
    	
    	$("input[type='button']").click(function(){
    		//alert(this.alt);
    		//alert($(this).attr("value","haha"));
    		/* alert($($("li")[0]).text());
    		alert($("li").eq(0).text()); */
    		$("li").each(function(i,edom){
    			//alert(i+" "+ $(edom).text());
    			switch (i) {
				case 0:
					$(edom).css("color",'green');
					break;
				case 1:
					$(edom).css("color",'blue');
					break;
				case 2:
					$(edom).css("color",'pink');
					break;
				case 3:
					$(edom).css("color",'cyan');
					break;	

				default:
					break;
				}
    		});
    	
    	});
    });
</script>    
</head>
<body>
   <!-- <input type="text"> 
   <input type="button" id="btn1" value="요셉오빠">
   <input type="button" id="btn2" value="진광이">
   <input type="button" id="btn3" value="인화야">
   
   <span id="sp1">지성이</span>
   <span id="sp2">형진이</span>
   <span id="sp3">명준이</span> -->
   
   <ul type="disc">
     <li>충엽이</li>
     <li>승표</li>
     <li>지원이</li>
     <li>민철이</li>
     
   </ul><br><input type="button" value="Color" alt="cc">
            <input type="button" value="Data" alt="dc">
   

</body>
</html>











