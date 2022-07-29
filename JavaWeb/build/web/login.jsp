<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- CSS only -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
      crossorigin="anonymous"
    />
    <!-- JavaScript Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" type="text/css" href="login.css" />
    <title>Login</title>
    <script>
      function myFunction(){
        var x=document.getElementById("user-pw");
        if(x.type==="password"){
          x.type="text";
        }
        else{
          x.type="password";
        }
      }
      function myFunction1(){
        var x=document.getElementById("user-pw1");
        if(x.type==="password"){
          x.type="text";
        }
        else{
          x.type="password";
        }
      }
      function myFunction2(){
        var x=document.getElementById("user-pw2");
        if(x.type==="password"){
          x.type="text";
        }
        else{
          x.type="password";
        }
      }
      //an form dang ky khi click vao dang nhap
      function functionHide1(){
        var x=document.getElementById("dangky");
        var y=document.getElementById("dangnhap");
        var maulogin=document.getElementById("login");
        var mausignup=document.getElementById("signup");
            x.style.display="none";
            y.style.display="contents";
            mausignup.style.backgroundColor="#D2D8D8";
            maulogin.style.backgroundColor="#FFFFFF";
      }
      //an form dang nhap khi click vao dang ky
      function functionHide2(){
        var x=document.getElementById("dangnhap");
        var y=document.getElementById("dangky");
        var maulogin=document.getElementById("login");
        var mausignup=document.getElementById("signup");
        y.style.display="contents";
        x.style.display="none"
        maulogin.style.backgroundColor="#D2D8D8";
        mausignup.style.backgroundColor="#FFFFFF";
      }
      //kiem tra khi trong user và pass
      function kiemtra(){
          var username = document.frmlogin.username.value;
          var password = document.frmlogin.password.value;
          if(username == ""){
            document.getElementById("baoloi").style.display="";
            document.getElementById("baoloi").innerHTML="<strong>Warning!</strong> Username is empty";
            return false;
          }
          if(password == ""){
            document.getElementById("baoloi").style.display="";
            document.getElementById("baoloi").innerHTML="<strong>Warning!</strong> Passwords is empty";
          return false;
          }
          return true;
      }
    </script>
  </head>
  <body>
    <div class="container">
      <div class="row_login_signup">
        <div class="box_login_signin" id="login" onclick="functionHide1()"><a href="#">LOGIN</a></div>
        <div class="box_login_signin" id="signup" onclick="functionHide2()"><a href="#">SIGN UP</a></div>
      </div>
        <div class="logmod__tab_lgm-1" id="dangnhap">
        <div class="desc">
          <span>Enter your email and password <strong>to sign in</strong></span>
        </div>
          <div class="alert alert-warning" id="baoloi" style="display:none">
              
        </div>
        <div class="input">
          <form name="frmlogin" action="login" onsubmit="return kiemtra()" method="POST">
            <div class="input_full">
              <div class="box_input">
                <label style="font-weight:bold ;" class="string_optional" for="user-name">Username*</label>
                <input class="string_optional" autocomplete="off" maxlength="255" id="user-email" name="username" placeholder="Username" type="text" size="50">
              </div>
            </div>
            <hr>
            <div class="input_full">
              <div class="box_input">
                <label style="font-weight:bold ;" class="string_optional" for="user-pw">Password *</label>
                <input class="string_optional" autocomplete="off" maxlength="255" id="user-pw" name="password" placeholder="Password" type="password" size="50">
                <span id="show_or_hide" class="hide-password" onclick="myFunction()">Show</span>
              </div>
            </div>
            <hr>
            <div class="simform__actions">
              <input class="submit" name="commit" type="submit" value="Log In" />
              <span class="simform__actions-sidetext"><a class="special" role="link" href="#">Forgot your password?<br>Click here</a></span>
            </div> 
          </form>
        </div>
        <div class="logmod__alter">
          <div class="facebook_google">
            <a href="#">
              <div class="connect__icon" style="background-color: #283D68;"><i class="fa fa-facebook" style="font-size:24px"></i></div>
              <div class="connect__context"><span>Sign in with <strong>Facebook</strong></span></div>
            </a>
          </div>
          <div class="facebook_google">
            <a href="#">
              <div class="connect__icon" style="background-color: #B52F1F;"><i class="fa fa-google" style="font-size:24px"></i></div>
              <div class="connect__context" style="background-color: #DD4B39;"><span>Sign in with <strong>Google</strong></span></div>
            </a>
          </div>
        </div>
      </div>
        <!--dang ky-->
      <div class="logmod__tab_lgm-2" id="dangky" style="display: none;">
        <div class="desc">
          <span>Enter your personal details to <strong>create an account</strong></span>
        </div>
        <div class="input">
          <form action="signup" method="post">
            <div class="input_full">
              <div class="box_input">
                <label style="font-weight:bold ;" class="string_optional" for="user-name">Name*</label>
                <input class="string_optional" required="true" autocomplete="off" maxlength="255" id="user-email" name="name" placeholder="Name" type="text" size="50">
              </div>
            </div>
            <hr>
            <div class="input_full">
              <div class="box_input">
                <label style="font-weight:bold ;" class="string_optional" for="user-name">Username*</label>
                <input class="string_optional" required="true" autocomplete="off" maxlength="255" id="user-email" name="user" placeholder="username" type="text" size="50">
              </div>
            </div>
            <hr>
            <div class="input_full">
              <div class="box_input">
                <label style="font-weight:bold ;" class="string_optional" for="user-pw">Password *</label>
                <input class="string_optional" required="true" autocomplete="off" maxlength="255" id="user-pw1" name="pass1" placeholder="Password" type="password" size="50">
                <span id="show_or_hide"  class="hide-password" onclick="myFunction1()">Show</span>
              </div>
            </div>
            <hr>
            <div class="input_full">
              <div class="box_input">
                <label style="font-weight:bold ;" class="string_optional">REPEAT PASSWORD *</label>
                <input class="string_optional" required="true" autocomplete="off" maxlength="255" id="user-pw2" name="pass2" placeholder="Password" type="password" size="50">
                <span id="show_or_hide" class="hide-password" onclick="myFunction2()">Show</span>
              </div>
            </div>
            <hr>
            <div class="simform__actions">
              <input class="submit" name="commit" type="submit" value="Create Account" />
              <span class="simform__actions-sidetext">By creating an account you agree to our <a class="special" target="_blank" role="link" href="#"><br>Terms & Privacy</a></span>
            </div> 
          </form>
        </div>
        <div class="logmod__alter">
          <div class="facebook_google">
            <a href="#">
              <div class="connect__icon" style="background-color: #283D68;"><i class="fa fa-facebook" style="font-size:24px"></i></div>
              <div class="connect__context"><span>Create an account with  <strong>Facebook</strong></span></div>
            </a>
          </div>
          <div class="facebook_google">
            <a href="#">
              <div class="connect__icon" style="background-color: #B52F1F;"><i class="fa fa-google" style="font-size:24px"></i></div>
              <div class="connect__context" style="background-color: #DD4B39;"><span>Create an account with  <strong>Google</strong></span></div>
            </a>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
