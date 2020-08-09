<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
   div{
     width: 100px;
     height: 100px;
     margin: 5px;
     float: left;
     border: 2px red solid;
     text-align: center; 
   }
   span {
	  color: red;
   }
</style>
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
    	$("button#btn1").click(function(){
    		$("div").each(function(index,dom){
    			if($(this).is("#stop")){
    				$("span").text("StopColor!");
    				return false;
    			}
    		$(this).css("background-color","pink");    			
    		});
    		
    	});
    	$("button#btn3").click(function(){
    		$("div").css("background-color","white");   		
    		
    	});
    	$("button#btn2").click(function(){
    		$("div").each(function(index,dom){
    			switch (index) {
				case 0:
					$(dom).css("background-color","blue");
					break;
				case 1:					
					$(dom).css("background-color","red");
					break;
				case 2:					
					$(dom).css("background-color","cyan");
					break;
				case 3:					
					$(dom).css("background-color","orange");
					break;
				case 4:					
					$(dom).css("background-color","green");
					break;
				case 5:					
					$(dom).css("background-color","yellow");
					break;
				case 6:					
					$(dom).css("background-color","gray");
					break;
				case 7:					
					$(dom).css("background-color","black");
					break;
					
	
				}
    		});
    	});
    });
</script>    
</head>
<body>
  <button id="btn1">ChangeColor</button>
  <button id="btn2">MultiColor</button>
  <button id="btn3">Clear</button><br>
  <div></div>
  <div></div>
  <div></div>
  <div></div>
  <div></div>
  <div id="stop">StopHear</div>
  <div></div>
  <div></div>
  <span></span>
</body>
</html>








