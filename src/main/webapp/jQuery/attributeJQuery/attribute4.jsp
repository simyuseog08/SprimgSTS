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
     $("select#valSel").change(function() {
		alert(this.value+" "+$(this).val()); //this.value�� �ڹٽ�ũ��Ʈ , $(this).val() �������� value �� ���
	});
     
     $("input#cid").click(function() {
    	 if($(this).prop("checked")){
    		 
		$("input[name='cname']").val(["1","2","3","4"]);
    	 }else{
    		 $("input[name='cname']").val([]);
    	 }
    	 
    	 
	}).each(function(index,dom) {
		alert($(this).index);
	});
		
    });
</script>

</head>
<body>
	<select id="valSel">
		<option value="java">Java</option>
		<option value="oop">Oop</option>
		<option value="spring">Spring</option>
		
	</select>
	
	<input type="checkbox" name="cc" id="cid">��ü
  <input type="checkbox" name="cname" value="1">����
  <input type="checkbox" name="cname" value="2">��
  <input type="checkbox" name="cname" value="3">�豸
  <input type="checkbox" name="cname" value="4">�߱�
 
</body>
</html>





