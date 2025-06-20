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
<title>Update Game</title>
<link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;700&display=swap" rel="stylesheet">
<style>
  * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
  }

  body {
    font-family: 'Rajdhani', sans-serif;
    background: linear-gradient(to bottom right, #000000, #1a1a1a);
    color: white;
    min-height: 100vh;
    padding: 40px 20px;
    display: flex;
    justify-content: center;
    align-items: flex-start;
  }

  .form-wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    padding-top: 60px; 
  }

  .form-container {
    background-color: rgba(255, 255, 255, 0.05);
    padding: 40px;
    border-radius: 15px;
    width: 500px;
    box-shadow: 0 0 15px rgba(255, 255, 255, 0.1);
  }

  h1 {
    text-align: center;
    margin-bottom: 30px;
    font-size: 2rem;
  }

  form {
    display: flex;
    flex-direction: column;
  }

  label {
    margin-bottom: 8px;
    font-weight: bold;
  }

  input[type="text"] {
    padding: 10px;
    margin-bottom: 20px;
    border: 2px solid #444;
    border-radius: 8px;
    background-color: transparent;
    color: white;
    font-size: 1rem;
    transition: border 0.3s;
  }

  input[type="text"]:focus {
    border-color: #00bfff;
    outline: none;
  }

  button {
    background: transparent;
    border: 2px solid #00bfff;
    color: white;
    padding: 10px;
    border-radius: 10px;
    font-size: 1rem;
    cursor: pointer;
    transition: background-color 0.3s, color 0.3s;
    font-weight: bold;
  }

  button:hover {
    background-color: #00bfff;
    color: black;
  }

  input[readonly] {
    background-color: rgba(255, 255, 255, 0.05);
    color: #aaa;
  }

  @media screen and (max-width: 600px) {
    .form-container {
      width: 90%;
      padding: 30px 20px;
    }
  }
</style>
</head>
<body>

<%
    String gameID = request.getParameter("gameID");
    String name = request.getParameter("name");
    String developer = request.getParameter("developer");
    String category = request.getParameter("category");
    String description = request.getParameter("description");
    String price = request.getParameter("price");
    String image = request.getParameter("image");
%>

	<div class="form-wrapper">
	  <div class="form-container">
	    <h1>Update Game</h1>
	    <form action="UpdateGame" method="post">
	      <label for="gameID">Game ID:</label>
	      <input type="text" name="gameID" value="<%=gameID%>" readonly required>
	
	      <label for="name">Name:</label>
	      <input type="text" name="name" value="<%=name%>" required>
	
	      <label for="developer">Developer:</label>
	      <input type="text" name="developer" value="<%=developer%>" required>
	
	      <label for="category">Category:</label>
	      <input type="text" name="category" value="<%=category%>" required>
	
	      <label for="description">Description:</label>
	      <input type="text" name="description" value="<%=description%>" required>
	
	      <label for="price">Price:</label>
	      <input type="text" name="price" value="<%=price%>" required>
	
	      <label for="image">Image URL:</label>
	      <input type="text" name="image" value="<%=image%>" required>
	
	      <button type="submit" onclick="return confirm('Are you sure you want to update this game?')" >Update</button>
	    </form>
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
