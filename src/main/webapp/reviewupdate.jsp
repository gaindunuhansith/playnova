<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      
    }

    body {
      background: linear-gradient(to bottom right, #000000, #1a1a1a);
      color: white;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      padding: 20px;
      font-family: 'Rajdhani', sans-serif;
    }

    .form-container {
      background: linear-gradient(to bottom, #1a1a1a, #111);
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 0 15px rgba(0,0,0,0.6);
      width: 100%;
      max-width: 500px;
    }

    .form-container h2 {
      text-align: center;
      margin-bottom: 30px;
      color: white; /* Changed to white */
    }

    label {
      display: block;
      margin-bottom: 8px;
      font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    textarea
     {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 6px;
      margin-bottom: 20px;
      background-color: #333;
      color: white;
    }

    input::placeholder {
      color: #aaa;
    }

    .submit-btn {
      width: 100%;
      padding: 10px;
      background-color: #e60000; /* Changed */
      border: none;
      border-radius: 6px;
      color: white;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .submit-btn:hover {
      background-color: #cc0000; /* Changed */
    }

    .footer {
      margin-top: 20px;
      text-align: center;
      font-size: 14px;
      color: #ccc;
    }
  </style>

</head>
<body>
	
	<%
		String id = request.getParameter("id");
		String Username = request.getParameter("username");
		String Email = request.getParameter("email");
		String Game = request.getParameter("game");
		float Rating = Float.parseFloat(request.getParameter("rating"));
		String Review = request.getParameter("review");
	%>
	
		<div class="form-container">
	 			<form action="ReviewUpdateServlet" method="POST" onsubmit="return validateForm();">
                     <h2>Update your Review </h2> <br>

					<label for="ID "> ID  </label>
                    <input type="text" name="id" value="<%=id%>" readonly> <br>
					
                    <label for="Username "> Username  </label> 
                    <input type="text" name="username" value="<%=Username%>" required> <br>

                    <label for="Email"> Email </label>
                    <input type="email" name="email" value="<%=Email%>" required><br>
                    
                    <label for="Fullname"> Game </label>
                    <input type="text" name="game" value="<%=Game%>" required ><br>

                    <label for="Rating from 1 -10 "> Rating </label>
                    <input type="text" name="rating" value="<%=Rating%>" required><br>
                    
                    <label for="Your Idea "> Review </label>
                    <textarea name="review" required><%=Review%></textarea><br>
                    
                    <input type="submit" class="submit-btn" value="Submit" >
                    
                    </form>
              </div>     
				<script>
					function validateForm() {
					    const username = document.forms[0]["username"].value.trim();
					    const email = document.forms[0]["email"].value.trim();
					    const game = document.forms[0]["game"].value.trim();
					    const rating = document.forms[0]["rating"].value.trim();
					    const review = document.forms[0]["review"].value.trim();
					
					    const usernameRegex = /^[a-zA-Z0-9_]+$/;
					    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
					    const ratingRegex = /^(\d+(\.\d{1,2})?)$/; // Allows float up to 2 decimals, like 8 or 7.5

					    
					    if (!usernameRegex.test(username)) {
					        alert("Username must contain only letters, numbers, or underscores.");
					        return false;
					    }
					
					    if (!emailRegex.test(email)) {
					        alert("Please enter a valid email address.");
					        return false;
					    }
					
					    if (game === "") {
					        alert("Game field cannot be empty.");
					        return false;
					    }
					
					    if (!ratingRegex.test(rating)) {
				            alert("Rating must be a valid number (e.g., 7 or 7.5) with no letters.");
				            return false;
				        }

				        const ratingNum = parseFloat(rating);
				        if (ratingNum < 1.0 || ratingNum > 10.0) {
				            alert("Rating must be between 1.0 and 10.0.");
				            return false;
				        }

				        
					    if (review.length < 10) {
					        alert("Review must be at least 10 characters long.");
					        return false;
					    }
					
					    return true;
					}
				</script>
                    
</body>
</html>