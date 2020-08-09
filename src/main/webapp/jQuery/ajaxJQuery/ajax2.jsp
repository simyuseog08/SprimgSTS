<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script type="text/javascript">
    function jsonProcess(p_url,p_dataType){
    	$.ajax({
    		url:p_url,
    		dataType:p_dataType,
    		success:function(data){
    			//console.log(data["NO"]+" "+data["TITLE"]);
    			//console.log(data.NO+" "+data.TITLE);
    			/* for(var i = 0; i < data.length; i++){
    			alert(data[i].NO+" "+data[i].TITLE);
    				
    			} */
    			
    		/* 	$(data).each(function(index,dom) {
					//alert(index+" "+this.NO);
					//alert(this.NO+" "+this.TITLE+" "+this.WRITER+" "+this.IMG+" "+this.HIT);
					
					
					
				}); */
				var temp = "";
				$.each(data,function(i,ddd){
					temp+="<tr><td>"+ddd.NO+"</td><td>"+ddd.TITLE+"</td><td>"+ddd.WRITER+"</td><td><img src='/webPro/img/"+ddd.IMG+"'width=50 height=50></td><td>"+ddd.HIT+"</td></tr>";
					
				});
				$("tbody#ty").html(temp);
    		}
    	});
    }
    $(document).ready(function(){
    	$("table#tb").fadeOut();
    	$("button").click(function(){
    		if($(this).text()=='Click1'){
    			$("table#tb").fadeIn(10000);
    			jsonProcess('dataValue7.jsp','json');
    		}
    		
    		if($(this).text()=='Click2'){
    			$("table#tb").fadeOut();
    			jsonProcess('dataValue8.jsp','json');
    		}
    	});
    	
    });
</script>    
</head>
<body>
  <button>Click1</button>
  <button>Click2</button>
  <br>
  
<table id="tb" cellpadding="0" cellspacing="0" border="1" width="80%" align="center">
     <thead>
       <tr><td>NO</td><td>TITLE</td><td>WRITER</td><td>IMG</td><td>HIT</td></tr>
     </thead>
     <tbody id="ty">
     </tbody>
     
  </table>
  
</body>
</html>



