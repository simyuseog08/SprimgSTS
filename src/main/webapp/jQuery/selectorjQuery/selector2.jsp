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
    		//alert('�������ٺ�!');
    		//$("span#sp1").text('�������ٺ�!');
    		//$("span#sp1").text("<font color=blue>�������ٺ�!</font>");
    		//$("span#sp1").html("<font color=blue>�������ٺ�!</font>");
    		//$("span#sp1").append("<font color=blue>�������ٺ�!</font>");
    		$("<font color=blue>�������ٺ�!</font>").appendTo("#sp1");
    		
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
   <input type="button" id="btn1" value="�������">
   <input type="button" id="btn2" value="������">
   <input type="button" id="btn3" value="��ȭ��">
   
   <span id="sp1">������</span>
   <span id="sp2">������</span>
   <span id="sp3">������</span> -->
   
   <ul type="disc">
     <li>�濱��</li>
     <li>��ǥ</li>
     <li>������</li>
     <li>��ö��</li>
     
   </ul><br><input type="button" value="Color" alt="cc">
            <input type="button" value="Data" alt="dc">
   

</body>
</html>











