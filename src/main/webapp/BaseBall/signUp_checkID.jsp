<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", Arial, Helvetica, sans-serif
}

.myLink {
	display: none
}
</style>
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script>
	function sendId(){
 		opener.sign.id1.value=$("input#id").val();
		self.close();
	};
		
	$(document).ready(function() {
		$("button#check").click(function() {
			if ($("input#id").val().length != 0) {
				$.ajax({
					url : "selectID.do",
					type : 'POST',
					dataType : 'text',
					data : {
						id : $("input#id").val()
					},
					success : function(v) {
						if(v=="true"){
							$("div#message").html("<font color='blue'>"+$("input#id").val()+"</font> ���̵�� ��� �����մϴ�. <br>"
							+"����Ϸ��� <font color='blue'><a href='javascript:sendId()'>����</a></font>�� Ŭ���ϼ���.");
						}else{
							$("div#message").html("<font color='red'>���̵� ����� �Դϴ�.</font>");
						}
					},
					error : function(e) {
						alert('error');
					}
				});
				return false;
			} else {
				$("div#message").html("<font color='red'>���̵� �Է����ּ���.</font>");
				return false;
			}
		});
	});
</script>
</head>
<body class="w3-light-grey">

	<!-- Navigation Bar -->
	<div class="w3-bar w3-white w3-border-bottom w3">
		<strong><font color='red'>���̵� �ߺ�Ȯ��</font></strong>
	</div>

	<div class="w3-col m2" style="width: 300px; margin-left: 50px;">
		<br> <label><i class="fa fa-map-marker w3-margin-right"></i>ID</label>
		<input class="w3-input w3-border" type="text" id="id"
			placeholder="���̵� �Է��ϼ���."> <br>
	</div>

	<div class="w3-col m2" style="width: 300px; margin-left: 50px;">
		<label><i class="fa fa-search"></i> Check</label>
		<button class="w3-button w3-block w3-black" id="check">Check</button>
		<br> <br>
		<div id="message" align="center"></div>
	</div>
</body>
</html>