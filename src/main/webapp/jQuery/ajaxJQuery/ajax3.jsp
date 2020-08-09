<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>

<html lang="en">

<head>

  <meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>jQuery UI Tabs - Default functionality</title>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

  <link rel="stylesheet" href="/resources/demos/style.css">

  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <script>
  function ajaxProcess(p_url,p_dataType,p_data){
	   // alert(p_url+" "+p_dataType+" "+p_data.split(",")[1]);
	   $.ajax({
		 url:p_url,
		 type:'POST',
		 dataType:p_dataType,
		 data:{
			 value1:p_data.split(",")[0],
			 value2:p_data.split(",")[1],
		 }	 
		 ,
		 success:function(data){
			 $("div#tabs-2 p").html(data);
			 
			 
		 },error:function(error){
			 alert(error);
		 }
	  }); 
  }
  $( function() {
    $( "#tabs" ).tabs();
    $("a#a1").click(function(){
    	ajaxProcess("dataValue1.jsp","text","msg=hie");
    });
    $("a#a2").click(function(){
    	ajaxProcess("dataValue9.jsp","text","oop2,java");
    });
    $("a#a3").click(function(){
    	alert('test');
    });
  });
  </script>

</head>

<body>

 

<div id="tabs" style="width: 500px">

  <ul>

    <li><a id="a1" href="#tabs-1">Nunc tincidunt</a></li>

    <li><a id="a2" href="#tabs-2">Proin dolor</a></li>

    <li><a id="a3" href="#tabs-3">Aenean lacinia</a></li>

  </ul>

  <div id="tabs-1">

    <p></p>

  </div>

  <div id="tabs-2">

    <p></p>

  </div>

  <div id="tabs-3">

    <p></p>

    <p></p>

  </div>

</div>

 

 

</body>

</html>

