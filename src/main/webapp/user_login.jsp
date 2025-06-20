<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In | PLAYNOVA</title>

<style>
        @import url('https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;500&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Rajdhani', sans-serif;
        }

        body {
            background: linear-gradient(to bottom right, #000000, #1a1a1a);
            background: black;
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            overflow: hidden;
        }

        
        .logo img {
		      height: 80px;
		      display: block;
		    }
			
			.logo {
			    width: 800px;
			    padding:20px;
			    height: 100px;
			}

        .Box {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 90vh;
            overflow: hidden;
            z-index: 2;
            margin-top: 70px;
        }

        .container {
            position: absolute;
            width: 500px;
            height: 600px;
            display: flex;
            flex-direction: column;
        }

        .txt1 span {
            color: #fff;
            font-size: 16px;
            padding: 10px 0;
            display: flex;
            justify-content: center;
        }

        .txt1 span a {
            font-weight: 700;
            color: #fff;
            margin-left: 5px;
        }

        .header {
            color: #fff;
            font-size: 50px;
            text-align: center;
            padding: 10px 0 30px 0;
             font-family: 'Rajdhani', sans-serif;
            font-weight: 1000;
        }

        .input-feild {
            display: flex;
            gap: 10px;
        }

        .inputfield {
            font-size: 16px;
            background: rgba(255, 255, 255, 0.2);
            color: #fff;
            height: 55px;
            width: 100%;
            padding: 0 10px 0 45px;
            border: none;
            border-radius: 30px;
            outline: none;
        }

        .inputfield:hover {
            background: rgba(255, 255, 255, 0.25);
        }

        .inputfield:focus {
            background: rgba(255, 255, 255, 0.25);
        }

        ::-webkit-input-placeholder {
            color: #DADADA;
        }

        .inputbox2 {
            padding: 10px;
            width: 100%;
        }

        .inputbox2 i {
            position: relative;
            top: -38px;
            left: 17px;
            color: #fff;
        }

        .submit {
            font-size: 20px;
             font-family: 'Rajdhani', sans-serif;
            font-weight: 700;
            color: #fff;
            height: 55px;
            width: 100%;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            background: red;
        }

        .submit:hover {
            background:#E52020 ;
            box-shadow: none;
        }
</style>

<script>
    function validateLoginForm() {
        // Get the form values
        var email = document.forms["loginForm"]["U_Email"].value;
        var password = document.forms["loginForm"]["U_Password"].value;

        // Check if email is empty
        if (email == "") {
            alert("Email must be filled out");
            return false;
        }

        // Check if email format is correct
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
        if (!emailPattern.test(email)) {
            alert("Please enter a valid email address");
            return false;
        }

        // Check if password is empty
        if (password == "") {
            alert("Password must be filled out");
            return false;
        }

        // If all checks pass, return true to submit the form
        return true;
    }
</script>

</head>
<body>

<form name="loginForm" action="user_login_servlet" method="post" onsubmit="return validateLoginForm()">
    <div class="Box">
        <div class="container" >

            <div class="txt1">
                <span>Don't have an account?<a href="user_insert.jsp" onclick="signup()">Sign Up</a></span>
                <header class="header">Log In</header>
            </div>

            <div class="inputbox2">
                <input type="text" name="U_Email" class="inputfield" placeholder="Email">
                <i class="bx bx-envelope"></i>
            </div>
            <div class="inputbox2">
                <input type="password" name="U_Password" class="inputfield" placeholder="Password">
                <i class="bx bx-lock-alt"></i>
            </div>

            <div class="inputbox2">
                <input type="submit" class="submit" value="Login">
            </div>  
        </div>
    </div>
</form>

</body>
</html>
