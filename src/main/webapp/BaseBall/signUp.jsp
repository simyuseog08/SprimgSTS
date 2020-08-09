<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>BaseBall shop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script src="../script/singUpCheck.js" charset="utf-8"></script>
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", Arial, Helvetica, sans-serif
}

.myLink {
	display: none
}
</style>

<script>
	$(document)
			.ready(
					function() {
						$("button#checkID")
								.click(
										function() {
											window
													.open("signUp_checkID.jsp",
															"���̵� üũ",
															"left=300,top=200,width=400,height=350");
											return false;
										});
						$("button#zipSearch")
								.click(
										function() {
											window
													.open(
															"signUp_searchZipcode.jsp",
															"�����ȣ Ȯ��",
															"left=300,top=200,width=500,height=600");
											return false;
										});

						$("select#email3")
								.change(
										function() {
											if ($(
													"select#email3 option:selected")
													.val() == "direct") {
												$("input#email2").attr(
														"disabled", false);
												return false;
											} else if ($(
													"select#email3 option:selected")
													.val() == "empty") {
												$("input#email2").attr(
														"disabled", "disabled");
												$("input#email2").val('');
												return false;
											} else {
												$("input#email2").attr(
														"disabled", "disabled");
												$("input#email2")
														.val(
																$(
																		"select#email3 option:selected")
																		.val());
												return false;
											}
										});

						$("button#signUp")
								.click(
										function() {
											if ($("input#id1").val().length == 0) {
												$("div#message")
														.html(
																"<font color='red'>���̵� �Է����ּ���.</font>");
												return false;
											} else {
												$("input#id").val(
														$("input#id1").val());
											}

											if ($("input#password").val().length < 4
													|| $("input#password")
															.val().length > 12
													|| $("input#password")
															.val() != $(
															"input#password2")
															.val()) {
												$("div#message")
														.html(
																"<font color='red'>��й�ȣ�� Ȯ�����ּ���. <br> ��й�ȣ�� 4-12�ڷ� �Է����ּ���.</font>");
												return false;
											}

											if ($("input#name").val().length == 0) {
												$("div#message")
														.html(
																"<font color='red'>�̸��� �Է����ּ���.</font>");
												return false;
											}
											
											if($("input#birthday").val().length==0){
												$("div#message")
												.html(
														"<font color='red'>��������� �Է����ּ���.</font>");
										return false;
											}

											if ($("input#zipcode1").val().length == 0) {
												$("div#message")
														.html(
																"<font color='red'>�����ȣ �� �ּҸ� �Է����ּ���.</font>");
												return false;
											} else {
												$("input#zipcode")
														.val(
																$(
																		"input#zipcode1")
																		.val()
																		+ "-"
																		+ $(
																				"input#zipcode2")
																				.val());
												$("input#address")
														.val(
																$(
																		"input#address1")
																		.val()
																		+ " "
																		+ $(
																				"input#address2")
																				.val());
											}

											if ($("input#email1").val().length == 0
													|| $("input#email2").val().length == 0) {
												$("div#message")
														.html(
																"<font color='red'>�̸��� �ּҸ� �Է����ּ���.</font>");
												return false;
											} else {
												$("input[name='email']")
														.val(
																$(
																		"input#email1")
																		.val()
																		+ "\@"
																		+ $(
																				"input#email2")
																				.val());
											}

											if (isNaN($("input#tel1").val())
													|| $("input#tel1").val().length == 0
													|| $("input#tel1").val().length > 4
													|| isNaN($("input#tel2")
															.val())
													|| $("input#tel2").val().length == 0
													|| $("input#tel2").val().length > 4
													|| isNaN($("input#tel3")
															.val())
													|| $("input#tel3").val().length == 0
													|| $("input#tel3").val().length > 4) {
												$("div#message")
														.html(
																"<font color='red'>��ȭ��ȣ�� Ȯ�����ּ���.</font>");
												return false;
											} else {
												$("input[name='tel']")
														.val(
																$("input#tel1")
																		.val()
																		+ "-"
																		+ $(
																				"input#tel2")
																				.val()
																		+ "-"
																		+ $(
																				"input#tel3")
																				.val());
											}

											if (isNaN($("input#cp1").val())
													|| $("input#cp1").val().length == 0
													|| $("input#cp1").val().length > 4
													|| isNaN($("input#cp2")
															.val())
													|| $("input#cp2").val().length == 0
													|| $("input#cp2").val().length > 4
													|| isNaN($("input#cp3")
															.val())
													|| $("input#cp3").val().length == 0
													|| $("input#cp3").val().length > 4) {
												$("div#message")
														.html(
																"<font color='red'>��ȭ��ȣ�� Ȯ�����ּ���.</font>");
												return false;
											} else {
												$("input[name='cp']")
														.val(
																$("input#cp1")
																		.val()
																		+ "-"
																		+ $(
																				"input#cp2")
																				.val()
																		+ "-"
																		+ $(
																				"input#cp3")
																				.val());
											}
											alert('ok');
											$("form#sign").submit();
										});
						if (!Modernizr.inputtypes.date) {
						    $(function () {
						        $(".datefield").datepicker();
						    });
						}
					});
</script>
<body class="w3-light-grey">

	<!-- Navigation Bar -->
	<div class="w3-bar w3-white w3-border-bottom w3-xlarge">
		<a href="BaseMain.jsp"
			class="w3-bar-item w3-button w3-text-red w3-hover-bule"><b>
			���ư���</b></a>
	</div>
</body>
<body>
	<div class="w3-bar w3-white">
		<div class="w3-content" style="max-width: 700px;">
			<br>
			<div class="w3-row-padding">
				<h1>ȸ������</h1>
				<br> <br>
				<form action="insertMember.do" id="sign" name="sign" method="post">
					<div class="w3-col m7">
						<label><i class="fa fa-map-marker w3-margin-right"></i>���̵�</label>
						<input class="w3-input w3-border" type="text" placeholder="ID"
							id="id1" name="id1" disabled="disabled"> <br> <input
							type="hidden" id="id" name="id">
					</div>
					<div class="w3-col m4" style="margin-left: 55px">
						<label><i class="fa fa-map-marker w3-margin-right"></i>���̵�
							üũ</label>
						<button class="w3-button w3-block w3-light-grey" id="checkID">CHECK</button>
					</div>
					<div class="w3-col">
						<label><i class="fa fa-map-marker w3-margin-right"></i>��й�ȣ</label>
						<input class="w3-input w3-border" type="password"
							placeholder="PASSWORD" id="password" name="password"> <br>
					</div>
					<div class="w3-col">
						<label><i class="fa fa-map-marker w3-margin-right"></i>��й�ȣ
							Ȯ��</label> <input class="w3-input w3-border" type="password"
							placeholder="PASSWORD" id="password2" name="password2"><br>
					</div>

					<div class="w3-col">
						<label><i class="fa fa-map-marker w3-margin-right"></i>�̸�</label>
						<input class="w3-input w3-border" type="text" placeholder="NAME"
							id="name" name="name"><br> <br> <br>
					</div>

					<div class="w3-col">
						<label><i class="fa fa-map-marker w3-margin-right"></i>�������</label>
						<input class="w3-input w3-border" type="date"
							placeholder="YYYY-MM-DD" id="birthday" name="birthday"><br>
						<br> <br>
					</div>

					<div class="w3-col m3">
						<label><i class="fa fa-map-marker w3-margin-right"></i>�����ȣ
							| �ּ�</label> <input class="w3-input w3-border" type="text"
							placeholder="ZIP" id="zipcode1" name="zipcode1"
							disabled="disabled">
					</div>

					<div class="w3-col m3" style="margin-left: 20px">
						<br> <input class="w3-input w3-border" type="text"
							placeholder="CODE" id="zipcode2" name="zipcode2"
							disabled="disabled"> <br> <input type="hidden"
							name="zipcode" id="zipcode">
					</div>

					<div class="w3-col m4" style="margin-left: 92px">
						<label><i class="fa fa-map-marker w3-margin-right"></i>�����ȣ
							ã��</label>
						<button class="w3-button w3-block w3-light-grey" id="zipSearch">SEARCH</button>
					</div>

					<div class="w3-col">
						<input class="w3-input w3-border" type="text"
							placeholder="ADDRESS" id="address1" name="address1"
							disabled="disabled"> <br>
					</div>

					<div class="w3-col">
						<input class="w3-input w3-border" type="text"
							placeholder="ADDRESS" id="address2" name="address2"> <br>
						<br> <br> <input type="hidden" name="address"
							id="address">
					</div>

					<div class="w3-col m4">
						<label><i class="fa fa-map-marker w3-margin-right"></i>�̸���</label>
						<input class="w3-input w3-border" placeholder="EMAIL" type="text"
							name="email1" id="email1">
					</div>

					<div class="w3-col m3" style="margin-left: 20px">
						<br> <input class="w3-input w3-border" placeholder="DOMAIN"
							type="text" name="email2" id="email2" disabled="disabled">
					</div>

					<div class="w3-col m4" style="margin-left: 36px">
						<br> <select class="w3-input w3-border" name="email3"
							id="email3">
							<option selected="selected" value="empty">�����ϼ���</option>
							<option value="direct">�����Է��ϼ���</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="gmail.com">gmail.com</option>
						</select> <br> <input type="hidden" name="email">
					</div>

					<div class="w3-col m3">
						<label><i class="fa fa-map-marker w3-margin-right"></i>��ȭ��ȣ</label>
						<input class="w3-input w3-border" placeholder="0000" type="text"
							name="tel1" id="tel1">
					</div>

					<div class="w3-col m4" style="margin-left: 28px">
						<br> <input class="w3-input w3-border" placeholder="0000"
							type="text" name="tel2" id="tel2">
					</div>

					<div class="w3-col m4" style="margin-left: 28px">
						<br> <input class="w3-input w3-border" placeholder="0000"
							type="text" name="tel3" id="tel3"> <br> <input
							type="hidden" name="tel">
					</div>

					<div class="w3-col m3">
						<label><i class="fa fa-map-marker w3-margin-right"></i>�޴���ȭ</label>
						<input class="w3-input w3-border" placeholder="000" type="text"
							name="cp1" id="cp1">
					</div>

					<div class="w3-col m4" style="margin-left: 28px">
						<br> <input class="w3-input w3-border" placeholder="0000"
							type="text" name="cp2" id="cp2">
					</div>

					<div class="w3-col m4" style="margin-left: 28px">
						<br> <input class="w3-input w3-border" placeholder="0000"
							type="text" name="cp3" id="cp3"> <input type="hidden"
							name="cp"> <input type="hidden" name="admin" value="0">
					</div>
				</form>

				<div class="w3-col">
					<br>
					<div id="message"></div>
					<br>
					<button class="w3-button w3-block w3-black" id="signUp">SIGN
						UP</button>
					<br>
				</div>
			</div>
		</div>
	</div>

</body>
</html>