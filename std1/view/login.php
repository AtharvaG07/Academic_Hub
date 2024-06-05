<?php include_once('head.php'); ?>


<style>

.form-control-feedback {
  
   pointer-events: auto;
  
}
.msk-set-color-tooltip + .tooltip > .tooltip-inner { 
  min-width:180px;
	background-color:red;
}

.bg{
	width:100%;
	height:100%;
}
/* body{
	background-color: transparent;
} */

body {
  display: grid;
  place-items: center;
  background: transparent;
  text-align: center;
}

header {
  position: fixed;
  left: 0;
  right: 0;
  margin: auto;
  top: 0.5rem;
  text-align: center;
  color: #222;
}
header .social li {
  margin-top: 20px;
  list-style: none;
}
header .social li > a {
  position: relative;
  font-size: 20px;
  color: #222;
  margin: 10px;
  text-decoration: none;
  transition: all 0.3s;
}
header .social li > a:last-child {
  border: 1px solid #222;
  font-size: 16px;
  background: #222;
  color: #dde1e7;
  padding: 1px 5px;
}
header .social li a:last-child:hover {
  border-color: grey;
  background: grey;
  color: #dde1e7;
}
header .social li > a:hover {
  color: grey;
}
header .social li > a:before {
  content: "";
  position: absolute;
  bottom: -1rem;
  left: 0;
  background-color: #222;
  width: 20px;
  height: 4px;
  opacity: 0;
  transition: all 0.3s;
}
header .social li > a:hover:before {
  opacity: 1;
  background-color: grey;
}

.content {
  /* margin: 20%; */
  margin-top: 210px;
  width: 350px;
  height: 170px;
  padding: 30px 30px;
  background: #dde1e7;
  border-radius: 20px;
  box-shadow: -3px -3px 7px #ffffff73, 2px 2px 5px rgba(94, 104, 121, 0.288);
}
.content .text {
  font-size: 33px;
  font-weight: 600;
  margin-bottom: 35px;
  color: #595959;
}
.field {
  height: 50px;
  width: 100%;
  margin-top: 10px;
  display: flex;
  position: relative;
}
.field:nth-child(2) {
  margin-top: 20px;
}
.field input {
  height: 100%;
  width: 100%;
  padding-left: 45px;
  outline: none;
  border: none;
  font-size: 18px;
  margin-bottom: 20px;
            border-radius: 20px;
            box-shadow: inset 5px 5px 5px #cbced1,
                inset -5px -5px 5px #ffffff;
}
.field input:focus {
  box-shadow: inset 1px 1px 2px #babecc, inset -1px -1px 2px #ffffff73;
}
.field span {
  position: absolute;
  color: #595959;
  width: 50px;
  line-height: 50px;
}
.field label {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  left: 45px;
  pointer-events: none;
  color: #666666;
}
.field input:valid ~ label {
  opacity: 0;
}

.btn {
  margin-top: 20px;
  margin-bottom: 20px;
 position: relative;
 font-size: 17px;
 text-transform: uppercase;
 text-decoration: none;
 padding: 1em 2.5em;
 display: inline-block;
 border-radius: 6em;
 transition: all .2s;
 border: none;
 font-family: inherit;
 font-weight: 500;
 color: black;
 background-color: white;
 width: 170px;
}

.btn:hover {
 transform: translateY(-3px);
 box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
}

.btn:active {
 transform: translateY(-1px);
 box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}

.btn::after {
 content: "";
 display: inline-block;
 height: 100%;
 width: 100%;
 border-radius: 100px;
 position: absolute;
 top: 0;
 left: 0;
 z-index: -1;
 transition: all .4s;
}

.btn::after {
 background-color: #fff;
}

.btn:hover::after {
 transform: scaleX(1.4) scaleY(1.6);
 opacity: 0;
}
/* button:focus {
  border-radius: 5px;
  color: #3498db;
  box-shadow: inset 2px 2px 5px #babecc, inset -5px -5px 10px #ffffff73;
} */
.sign-up {
  margin: 10px 0;
  color: #595959;
  font-size: 16px;
}
.sign-up a {
  color: #3498db;
  text-decoration: none;
}
.sign-up a:hover {
  text-decoration: underline;
}
.modal-header{
  background-color: transparent;
}

</style>
<body onLoad="login()">
	<img src="../uploads/bg.jpg" class="bg" />
	
	<!--Success! - Insert-->
  	<div class="modal fade" id="loginFrom" tabindex="-1" role="dialog" aria-labelledby="loginFrom" aria-hidden="true">
    	<div class="modal-dialog">    
        	<!-- <div class="modal-content "> -->
        		<div class="content">
            <form  role="form" action="../index.php" method="post">

              <div class="field input-group">
                  <input type="text" name="email" class="input" required>
                  <span class="fas fa-user"></span>
                  <label class="user-label">Username</label>
              </div>

              <div class="field input-group">
                  <input type="password" name="password" class="input" required>
                  <span class="fas fa-lock"></span>
                  <label class="user-label">Password</label>
              </div>
              
            <input type="hidden" name="do" value="user_login" />
            <button type="submit" class="button btn btn-info" id="btnSubmit">Submit</button>
        </form>
      </div>
    
      </div>
		</div>
	</div>
	<!--/.Modal--> 

<script>

function login(){
//document.ready(function{	
	
	$('#loginFrom').modal({
		backdrop: 'static',
		keyboard: false
	});
	$('#loginFrom').modal('show');
};

$("form").submit(function (e) {
//MSK-000098-form submit	

	var uname = $('#email').val();
	var password = $('#password').val();
	
	if(uname == ''){
		//MSK-00099-name
		$("#btnSubmit").attr("disabled", true);
		$('#divEmail').addClass('has-error has-feedback');	
		$('#divEmail').append('<span id="spanEmail" class="glyphicon glyphicon-remove form-control-feedback msk-set-color-tooltip" data-toggle="tooltip"    title="The user name is required" ></span>');	
			
		$("#email").keydown(function() {
			//MSK-00100-name
			$("#btnSubmit").attr("disabled", false);	
			$('#divEmail').removeClass('has-error has-feedback');
			$('#spanEmail').remove();
			
		});	
		
	}
	
	if(password == ''){
		//MSK-00099-name
		$("#btnSubmit").attr("disabled", true);
		$('#divPassword').addClass('has-error has-feedback');	
		$('#divPassword').append('<span id="spanPassword" class="glyphicon glyphicon-remove form-control-feedback msk-set-color-tooltip" data-toggle="tooltip"    title="The password is required" ></span>');	
			
		$("#password").keydown(function() {
			//MSK-00100-name
			$("#btnSubmit").attr("disabled", false);	
			$('#divPassword').removeClass('has-error has-feedback');
			$('#spanPassword').remove();
			
		});	
		
	}
	
	
	if(uname == '' || password == ''){
		//MSK-000098- form validation failed
		$("#btnSubmit").attr("disabled", true);
		e.preventDefault();
		return false;
			
	}else{
		$("#btnSubmit").attr("disabled", false);
		
	}


});
</script>

<!--Warnning! - Email or Password is Incorrect-->
	<div class="modal fade" id="login_error" tabindex="-1" role="dialog" aria-labelledby="insert_alert1" aria-hidden="true">
    	<div class="modal-dialog">    
      		<div class="modal-content">
        		<div class="modal-header bg-red-active">
          			<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
          			<h4>Information...!</h4>
        		</div>
        		<div class="modal-body bgColorWhite">
        			<strong style="color:red; font-size:14px">Warnning!</strong> Email or Password is Incorrect.
        		</div>
			</div>
		</div>
	</div><!--/.Modal-->


<?php
if(isset($_GET["do"])&&($_GET["do"]=="login_error")){
//MSK-000143-6-PHP-JS-INSERT
 
	$msg=$_GET['msg'];
	
	if($msg==1){
		echo"
			<script>
			
			var myModal = $('#login_error');
			myModal.modal('show');
			
    		myModal.data('hideInterval', setTimeout(function(){
    			myModal.modal('hide');
    		}, 3000));
						
			</script>
		";
	
	}
	
}
?>

<!--redirect your own url when clicking browser back button -->
<script>
(function(window, location) {
history.replaceState(null, document.title, location.pathname+"#!/history");
history.pushState(null, document.title, location.pathname);

window.addEventListener("popstate", function() {
  if(location.hash === "#!/history") {
    history.replaceState(null, document.title, location.pathname);
    setTimeout(function(){
      location.replace("../index.php");//path to when click back button
    },0);
  }
}, false);
}(window, location));
</script>
</body>