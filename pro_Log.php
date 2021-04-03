
<!DOCTYPE html>
<html lang="en">
<head>
<title>Mai Service</title>

<link rel="icon" type="image/png" href="assets/logo.png" />
<link href="https://fonts.googleapis.com/css?family=Muli:300,400,600,700,800" rel="stylesheet">
<link rel="stylesheet" href="user/assets/styles/bootstrap.min.css">
<link rel="stylesheet" href="user/assets/styles/homeguide.new.css">

<link rel="stylesheet" href="user/assets/styles/master.css">
<script src="user/assets/js/jquery-1.10.2.min.js"></script>
<script src="user/assets/js/underscore-min.js"></script>
<script src="user/assets/js/async.js"></script>
<script src="user/assets/js/fingerprint2.min.js" defer=""></script>

</head>
<body>

  <link rel="stylesheet" href="user/assets/styles/backgrounds.css">
  <link rel="stylesheet" type="text/css" href="assets/styles/flaticon.css">
  <link rel="stylesheet" href="assets/styles/font-awesome.min.css">
  <link rel="stylesheet" href="assets/styles/jquery-ui.css">

<div id="header"  style="background-color:papayawhip">
<div class="condtainer-fluid wide">
<nav class="navbar">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse" aria-label="Menu"><i class="fa fa-bars"></i></button>
<div class="navbar-brand">
<h3><b>Mai Service</b></h3>
</div>
</div>
<div class="collapse navbar-collapse" id="navbar-collapse">
<div class="dropdown">
<ul class="log-nav navbar-nav navbar-right">
<li class="dropdown"><a href="User/index.php" class="">Home</a></li>
<li class="dropdown"><a href="User/pro.php" class="">Join as a Pro</a></li>
<li class="dropdown"><a href="User/signup.php" class="">Sign Up</a></li>
<li class="dropdown"><a href="User/login.php" class="">Log In</a></li>
</ul>
</div>
</div>
</nav>
</div>

</div>
<div class="gray-bg clearfix">
<div id="wrapper">
<div class="w2">
<div class="page join">
<h2 class="text-center">Get In Touch With Mai Service Free Trial</h2>
<section class="info-section">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="login-holder">
    
<script>
		function onlyAlphabets(e,t)
		  {
            try {
                if (window.event) { var charCode = window.event.keyCode; }
                else if (e)
					      { var charCode = e.which;}
                else {document.getElementById('error').innerHTML=''; return true;  }
                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123)||(charCode ==32))
			    	    {  document.getElementById('error').innerHTML='';return true;}		
                else
                 document.getElementById('error').innerHTML='This is required only Alphabets!!';
					        return false;
            }
            catch (err) {
                alert(err.Description);
            }
        }
	function isNumberKey1(evt)
        {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
         {    
            document.getElementById('error2').innerHTML="This is required only numbers!!";
			    return false;
         }
         document.getElementById('error2').innerHTML='';
		   return true;
      }
      function callfunction()
        {
            var textBox = document.getElementById("password");
            var textLength = textBox.value.length;
                if(textBox.value=='' || textLength<=6)
                {
                  document.getElementById('error1').innerHTML='Please entered more than 6 characters for password';
                }
                else
                {
                    document.getElementById('error1').innerHTML='';
               
                }
               
        }
        function validate()
        {
            var textBox = document.getElementById("contact");
            var textLength = textBox.value.length;
                if(textBox.value=='' || textLength<10)
                {
                  document.getElementById('error2').innerHTML='Please entered 10 numbers';
                }
        }
        function showfocus(element) 
        {
                max = parseInt(element.dataset.max)
                if (element.value.length >= max) 
                {
                    document.getElementById("email").focus();  
                }
        }
        function check()
            {
                var pass=document.getElementById('password').value;
                var cpass=document.getElementById('cpassword').value;
                var plength=length.pass;
                var clength=length.cpass;
                if(plength!= clength || pass!=cpass)
                {
                    document.getElementById('error3').innerHTML='Password is Not matched';
                }
                else
                {
                  document.getElementById('error3').innerHTML='Password is matched'; 
                }
            }
            $(function () {
          $('[data-toggle="tooltip"]').tooltip()
        })
    </script>
    
<form action="controller/add_db.php" method="post" enctype="multipart/form-data">

                               <div class="form-group">
                                   <label for="">Name<sup style="font-size:16px;color:red">*</sup></label>
                                   <input id="name" name="name" type="text" onkeypress="return onlyAlphabets(event,this);" class="form-control" placeholder="Name" required>
                                   <p align="center" id="error" style="color:red"></p>
                                </div>

                               <div class="form-group">
                                   <label for="">Contact No.<sup style="font-size:16px;color:red">*</sup></label>
                                   <input id="contact" data-max=10 oninput="showfocus(this)"onchange="validate()"onkeypress="return isNumberKey1(this);" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  name="contact" type="text" class="form-control" placeholder="Contact" minlength="10"                                        maxlength="10" required>
                                   <p align="center" id="error2" style="color:red"></p>
                                </div>

                               <div class="form-group">
                                   <label for="">Email.<sup style="font-size:16px;color:red">*</sup></label>
                                   <input id="email"   name="email" type="email" class="form-control" placeholder="Email" required>
                               </div>

                               <div class="form-group">
                                   <label for="">City<sup style="font-size:16px;color:red">*</sup></label>
                                   <select class="form-control" name="city" id="city">
                                       <option value="Satara">Satara</option>
                                   </select>
                               </div>

                               <div class="form-group">
                                   <label for="">ID Photo(Square Size)<sup style="font-size:16px;color:red">*</sup></label>
                                   <input id="photo" name="photo" type="file" class="form-control" placeholder="Select Photo 1" required>
                               </div>
                               <div class="form-group">
                                   <label for="">Password<sup style="font-size:16px;color:red">*</sup></label>
                                   <input id="password" name="password"  onchange="callfunction()" type="password" class="form-control" placeholder="Enter 6 Character Password" minlength="4" required>
                               </div>
                               <p align="center" id="error1" style="color:red"></p>
                               <p align="center" id="error3" style="color:red"></p>
                               <div class="form-group">
                                   <label for="">Confirm Password<sup style="font-size:16px;color:red">*</sup></label>
                                   <input id="cpassword" name="cpassword" type="password" class="form-control" placeholder="Confirm Password" onkeyup='check();' minlength="6" required>
                               </div>
                            <div class="sign-btn text-center">
                                   <input type="submit" name="btn_Pro_Reg" value="Sign Up" class="btn btn-lg btn-gradient-01">
                               </div>
                               </form> 
</div>
</div>
</div>
</div>
</section>
</div>
</div>

</div>
</div>

<script src="user/assets/js/jquery-ui.min.js"></script>
<script src="user/assets/js/bootstrap.min.js"></script>
<script src="user/assets/js/moment-with-locales.min.js"></script>
<script src="user/assets/js/blazy.min.js"></script>

</body>
</html>