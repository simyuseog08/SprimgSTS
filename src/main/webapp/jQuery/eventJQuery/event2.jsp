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
   	$("ul").hide();
    	  $("td#td1").mouseover(function(e) {
    		  $(this).css({color:"black",background:"white"});
    		  	$("#ul1").show('slow');
    		  	$("#ul1").css({position:"absolute",left:"50px"});
		});
    	  
    	  $("td#td1").mouseout(function(e) {
    		  $(this).css({color:"white",background:"black"});
    		  $("#ul1").hide();
		});
    	  
    	
    	  $("td#td2").mouseover(function(e) {
    		  $(this).css({color:"black",background:"white"});
    		  	$("#ul2").show('slow');
    		  	$("#ul2").css({position:"absolute",left:"500px"});
		});
    	  
    	  $("td#td2").mouseout(function(e) {
    		  $(this).css({color:"white",background:"black"});
    		  $("#ul2").hide();
		}); 
    	  $("iframe").hide();
    	 $(document).keypress(function(e){
        	 //$("iframe").show();
        	 //$("div").append("<font color=red>KEYDOWN["+e.keyCode+"]</font><br><font color=blue>keyDown["+String.fromCharCode(e.keyCode)+"]</font>");
         	
         	  if(e.keyCode==97){
        		$("img").animate({"marginLeft":"-=50px"},0);
        	 }
        	 
        	 if(e.keyCode==100){
         		$("img").animate({"marginLeft":"+=50px"},0);
         	 }
        	 
        	 if(e.keyCode==115){
         		$("img").animate({"marginTop":"+=50px"},0);
         	 }
        	 
        	 if(e.keyCode==119){
         		$("img").animate({"marginTop":"-=50px"},0);
         	 } 
        	 
        	 if(e.keyCode==122){
          		$("img").attr({src:'/webPro/imgFile/bea.gif'});
          	 }
        	 
        	 if(e.keyCode==98){
        		 $("img").attr({src:'/webPro/img/0.jpg'});
           	 } 
        	 
        	
         	 
    		
    	 
    	 });	
         $(document).keydown(function(e){
        	 //$("iframe").show();
        	
         });	
         $(document).keyup(function(e){
        	 //$("iframe").hide();
         });	
    	
    	
    });
</script>
<style type="text/css"> 
 td{
 	font-family: 휴먼매직체;
 	font-size: 20px;
 	color: white;
 	background-color: black;
 	text-align: center;
 }

</style> 
</head>
<body topmargin="50">
	 <table cellspacing="0" cellpadding="10" border="1" width="100%" align="center">
		<tr>
			<td id="td1">Login</td>
			<td id="td2">Member</td>
			<td id="td3">QnA</td>
			<td id="td4">FreeBoard</td>
		</tr>
	
	</table>
	
	
		<ul id="ul1">
			<li>회원가입</li>
			<li>이용약관</li>
		</ul>
		
		<ul id="ul2">
			<li>정보수정</li>
			<li>나의질문사항</li>
		</ul>
		
		
		<ul id="ul3">
			<li>질문하기</li>
			<li>답변보기</li>
		</ul>
		
		<ul id="ul4">
			<li>공지사항</li>
			<li>이벤트</li>
		</ul> 


<!-- <iframe id="frm1" width="560" height="315" src="https://www.youtube.com/embed/Yievjx2WnyA" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe> -->

<!-- <div>
  </div> -->
  
  <img src="/webPro/img/0.jpg" width="50" height="50">
  
	
	
</body>
</html>

