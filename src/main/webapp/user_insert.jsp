<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up | PLAYNOVA</title>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;500;600&display=swap" rel="stylesheet">
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
			    margin-top: 40px;
			}
			
			.container {
			    position: absolute;
			    width: 600px;
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
			
			.inputfield:hover{
				background: rgba(255, 255, 255, 0.25);
			}
			.inputfield:focus {
			    background: rgba(255, 255, 255, 0.25);
			}
			
			::-webkit-input-placeholder {
			    color: #DADADA;
			    
			}
			
			.inputbox2 {
			    padding: 1px;
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
			    background: #E52020;
			    box-shadow: none;
			}
			
			.header2 {
			    color: #fff;
			    font-size: small;
			    padding: 10px 0;
			    display: flex;
			    justify-content: center;
			}
			
			.header2 a {
			    font-size: 13px; 
			    font-weight: 1000;
			    color: #fff;
			    margin-left: 5px;
			}
 
    </style>
    <script>
    // Simple validation for the sign-up form
    function validateForm() {
        var username = document.getElementsByName("U_UserName")[0].value;
        var email = document.getElementsByName("U_Email")[0].value;
        var phoneNumber = document.getElementsByName("U_PhoneNumber")[0].value;
        var password = document.getElementsByName("U_Password")[0].value;

        // Validate Username
        if (username === "") {
            alert("Username is required!");
            return false;
        }

        // Validate Email Format
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
            alert("Please enter a valid email address!");
            return false;
        }

        // Validate Phone Number (Only digits)
        var phonePattern = /^[0-9]{10}$/; // Assuming 10-digit phone numbers
        if (!phonePattern.test(phoneNumber)) {
            alert("Please enter a valid 10-digit phone number!");
            return false;
        }

        // Validate Password (Minimum 6 characters)
        if (password.length < 6) {
            alert("Password must be at least 6 characters long!");
            return false;
        }

        // If all validations pass
        return true;
    }
</script>
    
    
    
</head>
<body>
	<form action="user_insert_servlet" method="post" onsubmit="return validateForm()">

        <div class="Box">
        <div class="container" >

                <div class="txt1">
                         <span>Have an account?<a href="user_login.jsp" onclick="login()">Login</a></span>
                         <header class="header">Sign Up</header>
                </div>

            <div class="input-feild">
                        <div class="inputbox2">
                                        <input type="text" class="inputfield" name="U_UserName" placeholder="User name" required>
                                        <i class="bx bx-user"></i>
                        </div>
                        </div>
                     
                        <div class="inputbox2">
                                        <input type="email" class="inputfield" name="U_Email" placeholder="Email" required>
                                        <i class="bx bx-envelope"></i>
                         </div>
                         
                        <div class="inputbox2">
                                        <input type="tel" class="inputfield" name="U_PhoneNumber" placeholder="Phone number" required>
                                        <i class="bx bx-phone"></i>
                        </div>
                        
                        <div class="inputbox2">
                                        <input type="password" class="inputfield" name="U_Password" placeholder="Enter password" required>
                                        <i class="bx bx-lock-alt"></i>
                        </div>
                        
                        <div class="inputbox2">
                                        <input type="submit" class="submit" value="Register">
                        </div>
                        
                        <div class="header2">
                        				<input type="checkbox" required>
                                        <label><a href="t&c.jsp">Terms & Condition</a></label>
                        </div>
                     </div>
        </div>
    </form>
</body>
</html>