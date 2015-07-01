<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Registration form</title>
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
    <script>
    function checkIt() {
        var inputForm = eval("document.inputForm");
        if(inputForm.pw.value != userinput.pw2.value)
        {
            alert("비밀번호가 다릅니다.");
            return false;
        }
    }
    
    function openConfirmid(inputForm) {
        if (inputForm.id.value == "") {
            alert("아이디를 입력하세요");
            return;
        }
        url = "confirmId.gm?id=" + inputForm.id.value ;
        
        open(url, "confirm", 
        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
    }
    
    </script>
</head>
<body>
	<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">회원가입</h3>
			 			</div>
			 			<div class="panel-body">
			    		<form name="inputForm" action="inputPro.gm" method="post">
			    			
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="id" class="form-control input-sm" placeholder="Id" required="required">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="button" name="confirm_id" class="btn btn-info btn-block" value="ID중복확인" OnClick="openConfirmid(this.form)" >
			    					</div>
			    				</div>
			    			</div>
			    			
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="pw" class="form-control input-sm" placeholder="Password" required="required">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="pw2" id="password_confirmation" class="form-control input-sm" placeholder="Confirm Password" required="required">
			    					</div>
			    				</div>
			    			</div>
			    			
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                <input type="text" name="name" class="form-control input-sm" placeholder="Name" required="required">
			    					</div>
			    				</div>
			    			</div>
			    			
			    			<div class="form-group">
			    				<input type="text" name="addr" class="form-control input-sm" placeholder="Address" required="required">
			    			</div>
			    			
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="phone" class="form-control input-sm" placeholder="Phone" required="required">
			    					</div>
			    				</div>
			    			</div>
			    			
			    			<div class="form-group">
			    				<input type="text" name="email" class="form-control input-sm" placeholder="Email Address" required="required">
			    			</div>
			    			
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="birth" class="form-control input-sm" placeholder="Birth" required="required">
			    					</div>
			    				</div>
			    			</div>
			    			<div class="form-group">
				    			여자&nbsp;<input type="radio" name="sex" id="female" value="female" required="required">&nbsp;&nbsp;
				    			남자&nbsp;<input type="radio" name="sex" id="male" value="male" required="required"> 
			    			</div>
			    			<input type="submit" value="Register" class="btn btn-info btn-block">
			    		
			    		</form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
	<script type="text/javascript">
	
	</script>
</body>
</html>
