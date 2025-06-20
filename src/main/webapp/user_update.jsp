<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile </title>
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
		    color: white;
		    display: flex;
		    min-height: 100vh;
		}
		
		form {
		    display: flex;
		    width: 100%;
		}
	.main {
	    margin-left: 100px;
	    padding: 20px;
	    width: calc(100% - 220px);
	}
	
	.header {
	    display: flex;
	    justify-content: space-between;
	    align-items: center;
	    margin-bottom: 30px;
	    color: white;
	    font-weight: bold;
	}
	
	.header h1 {
	    font-size: 1.8rem;
	    color: white;
	}
	
	.logout-btn {
	      background: transparent;
	      color: white;
	      border: 2px solid white;
	      padding: 8px 15px;
	      border-radius: 20px;
	      cursor: pointer;
	      font-weight: bold;
	      transition: background-color 0.3s, color 0.3s;
    }

    .logout-btn:hover {
	      background-color: #cc0000;
	      color: white;
    }

	.container {
	    background: linear-gradient(to bottom, #1a1a1a, #111);
	    padding: 40px;
	    border-radius: 12px;
	    box-shadow: 0 0 15px rgba(0,0,0,0.6);
	    width: 500px;
	    margin: -50px auto 10px auto;
	}
	
	.section {
	    margin-bottom: 30px;
	}
	
	.section h2 {
	    margin-bottom: 20px;
	    color: #fff; 
	    font-size: 1.3rem;
	}
	
	label {
	    display: block;
	    margin-bottom: 8px;
	    font-weight: bold;
	    font-size: 15px;
	}
	
	.input {
	    width: 100%;
	    padding: 10px;
	    margin-bottom: 20px;
	    border: none;
	    border-radius: 6px;
	    background-color: #333;
	    color: white;
	}
	
	.input::placeholder {
	    color: #aaa;
	    font-size: 14px;
	}
	
	.btn {
	    padding: 10px 20px;
	    background-color: #e60000; 
	    border: none;
	    border-radius: 6px;
	    color: white;
	    font-weight: bold;
	    cursor: pointer;
	    font-size: 14px;
	    float: right;
	    transition: background-color 0.3s ease;
	}
	
	.btn:hover {
	    background-color: #cc0000; 
	}
	
	.footer {
	    margin-top: 20px;
	    text-align: center;
	    font-size: 14px;
	    color: #ccc;
	}

    </style>

	    <script>
	    function validateForm() {
	        var username = document.forms["updateForm"]["U_UserName"].value;
	        var email = document.forms["updateForm"]["U_Email"].value;
	        var phone = document.forms["updateForm"]["U_PhoneNumber"].value;
	        var password = document.forms["updateForm"]["U_Password"].value;
	
	        // Username validation
	        if (username.trim() === "") {
	            alert("Username must be filled out");
	            return false;
	        }
	
	        // Email validation
	        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
	        if (!emailPattern.test(email)) {
	            alert("Please enter a valid email address");
	            return false;
	        }
	
	        // Phone number validation (exactly 10 digits only)
	        var phonePattern = /^\d{10}$/;
	        if (!phonePattern.test(phone)) {
	            alert("Phone number must be exactly 10 digits");
	            return false;
	        }
	
	        // Password validation (minimum 6 characters)
	        if (password.length < 6) {
	            alert("Password must be at least 6 characters long");
	            return false;
	        }
	
	        return true;
	    }
	</script>

	
</head>
<body>

<%
String U_ID = request.getParameter("U_ID");
String U_UserName = request.getParameter("U_UserName");
String U_Email =  request.getParameter("U_Email");
String U_PhoneNumber = request.getParameter("U_PhoneNumber");
String U_Password = request.getParameter("U_Password");
%>


  

  <div class="main">
    <div class="header">
      <h1>Edit Your Stats</h1>

    </div>
<form name="updateForm" action="user_update_servlet" method="POST"  onsubmit="return validateForm()">
    <div class="container">
    
    
        <div class="section">
            
            <!-- Profile Changing -->
                 <h2>Profile Update</h2>
                 <label>ID</label>
                 <input type="text" class="input" name="U_ID" value="<%=U_ID%>" readonly><br>
                 
                 <label>User name</label>
                 <input type="text" class="input" name="U_UserName" value="<%=U_UserName%>" ><br>
     
                 <label>Email</label>
                 <input type="email" class="input" name="U_Email" value="<%=U_Email%>" ><br>
     
                 <label>Phone number</label>
                 <input type="tel" class="input" name="U_PhoneNumber" value="<%=U_PhoneNumber%>" ><br>
     
                 <button class="btn" type="submit">Update Profile</button>
        </div>   
        <div class="section">
            <!-- Password Changing -->
                 <h2>Security Update</h2>
                 <label>Update Password</label>
                 <input type="password" class="input" name="U_Password" value="<%=U_Password%>" ><br>
                 <button class="btn" type="submit">Update Password</button>
             </div>
             

    </div>
   </form>

</div>
</body>
</html>
