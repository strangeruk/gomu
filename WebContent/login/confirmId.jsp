<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>ID 중복확인</title>
<link href="style.css" rel="stylesheet" type="text/css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
body { 
	background: #092756;
}
.centered-form{
	margin-top: 60px;
}

.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}
    </style>
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
        }
        $( document ).ready(function() {
          var iframe_height = parseInt($('html').height()); 
          window.parent.postMessage( iframe_height, 'http://bootsnipp.com');
        });
    </script>


<body>
<c:if test="${check == 1 }" >
	<div class="form-group">
		<center><font color="white">${id}는(은) 이미 사용중인 아이디입니다.</font></center>
	</div>

<form name="checkForm" method="post" action="confirmId.gm">
	<div class="form-group">
		<center><font color="white">다른 아이디를 입력하세요.</font></center>
	</div>
	<div class="col-xs-6 col-sm-6 col-md-6">
		<div class="form-group" text-align="center">
			<input type="text" name="id"  size="10" class="form-control input-sm" required="required">
		</div>
		<div class="form-group">
			<input type="submit" class="btn btn-info btn-block" value="ID중복확인">
		</div>
	</div>
</form>
</c:if>

<c:if test="${check != 1 }" >
	<div class="form-group">
		<center><font color="white">입력하신 ${id}는(은) 사용하실 수 있는 ID입니다.</font></center>
	</div>
	<div class="col-xs-6 col-sm-6 col-md-6">
		<div class="form-group">
			<input type="button" value="닫기" class="btn btn-info btn-block" onclick="setid()">
		</div>
	</div>
</c:if>
</body>
</html>
<script language="javascript">

  function setid()
    {		
    	opener.document.inputForm.id.value="${id}";
		self.close();
		}

</script>