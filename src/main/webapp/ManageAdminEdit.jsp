<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
    // Session validation code
    if (session.getAttribute("loginad") == null) {
        response.sendRedirect("AdminLogin.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Edit Admin</title>
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

    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="tel"] {
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
      background-color: #e60000;  
      border: none;
      border-radius: 6px;
      color: white;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .submit-btn:hover {
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
    <h2>Edit Admin</h2>
    
    <%
      String id = request.getParameter("id");
      String name = request.getParameter("name");
      String email = request.getParameter("email");
      String phone = request.getParameter("phone");
      String role = request.getParameter("role");
      String userName = request.getParameter("userName");
      String password = request.getParameter("password");
    %>

    <form action="adminUpdate" method="post">
      <input type="hidden" name="id" value="<%= id %>">
      
      <label for="name">Name</label>
      <input type="text" id="name" name="name" value="<%= name %>" required>

      <label for="email">Email</label>
      <input type="email" id="email" name="email" value="<%= email %>" required>

      <label for="phone">Phone</label>
      <input type="tel" id="phone" name="phone" value="<%= phone %>" required>

      <label for="role">Role</label>
      <input type="text" id="role" name="role" value="<%= role %>" required>

      <label for="userName">Username</label>
      <input type="text" id="userName" name="userName" value="<%= userName %>" required>

      <label for="password">Password</label>
      <input type="password" id="password" name="password" value="<%= password %>" required>

      <input type="submit" class="submit-btn" value="Update">
    </form>
    
    <div class="footer">
       &copy; 2025 PlayNova
    </div>
  </div>

  <script>
    const form = document.querySelector("form");

    form.addEventListener("submit", function(e) {
      const name = document.getElementById("name").value;
      const phone = document.getElementById("phone").value;
      const password = document.getElementById("password").value;

      if (!isNaN(name)) {
        alert("Name cannot be numbers only.");
        e.preventDefault();
        return;
      }

      if (phone.length !== 10 || isNaN(phone)) {
        alert("Phone number must be exactly 10 digits.");
        e.preventDefault();
        return;
      }

      if (password.length < 8) {
        alert("Password must be at least 8 characters long.");
        e.preventDefault();
        return;
      }
    });
  </script>

</body>
</html>
