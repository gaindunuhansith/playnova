<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
    if (session.getAttribute("loginad") == null) {
        response.sendRedirect("AdminLogin.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Game</title>
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/admin/assets/Favicon.png">
<link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;600;700&display=swap" rel="stylesheet">

<style>
	  * {
	    margin: 0;
	    padding: 0;
	    box-sizing: border-box;
	  }
	
	  body {
	    font-family: 'Rajdhani', sans-serif;
	    background: linear-gradient(to bottom right, #000000, #1a1a1a);
	    color: white;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    min-height: 100vh;
	    padding: 20px;
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
	    color: #ffffff;
	  }
	
	  label {
	    display: block;
	    margin-bottom: 8px;
	    font-weight: bold;
	  }
	
	  input[type="text"] {
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
	
	  button[type="submit"] {
	    width: 100%;
	    padding: 10px;
	    background-color: #e60000;
	    border: none;
	    border-radius: 6px;
	    color: white;
	    font-size: 16px;
	    font-weight: bold;
	    cursor: pointer;
	    transition: background-color 0.3s ease;
	  }
	
	  button[type="submit"]:hover {
	    background-color: #cc0000;
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
  <div class="form-container">
    <h2>Add New Game</h2>

    <form action="AddGame" method="post">
      <label for="name">Name:</label>
      <input type="text" name="name" required><br>
    
      <label for="developer">Developer:</label>
      <input type="text" name="developer" required><br>
    
      <label for="category">Category:</label>
      <input type="text" name="category" required><br>
    
      <label for="description">Description:</label>
      <input type="text" name="description" required><br>
    
      <label for="price">Price ($):</label>
      <input type="text" name="price" required><br>
    
      <label for="image">Image URL:</label>
      <input type="text" name="image" required><br>
    
      <button type="submit">Publish the game</button>
    </form>

    <div class="footer">
      By clicking publish you agree to our terms and conditions and privacy policy
    </div>
  </div>
  
  
  
  
  
   <script>
   
   	  //function to validate the price
	  document.addEventListener("DOMContentLoaded", function () {
	    const form = document.querySelector("form");
	    const priceInput = document.querySelector('input[name="price"]');
	
	    form.addEventListener("submit", function (e) {
	      const priceValue = priceInput.value.trim();
	
	      // Pattern numbers with up to 2 decimal places
	      const pricePattern = /^\d+(\.\d{1,2})?$/;
	
	      if (!pricePattern.test(priceValue)) {
	        alert("Please enter a valid price (numbers only, up to 2 decimal places).");
	        
	     // Prevent form from submitting
	      e.preventDefault(); 
	      }
	    });
	  });
   	  
	</script>
  
  
</body>
</html>
