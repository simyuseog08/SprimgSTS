function clockFunction(){
	var spanTag=document.getElementById("clock");
	var now = new Date();
	spanTag.innerHTML=now.getFullYear()+"/"+(now.getMonth()+1)+"/"+now.getDate()+"/"+now.getHours()+"/"+now.getMinutes()+"/"+now.getSeconds();
	setTimeout("clockFunction",1000);
	
	
}