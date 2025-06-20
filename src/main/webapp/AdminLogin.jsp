<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Admin Login</title>

  <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;600;700&display=swap" rel="stylesheet">

  <style>
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
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }

    .login-container {
      background: linear-gradient(to bottom, #1a1a1a, #111); 
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 0 15px rgba(0,0,0,0.6);
      width: 100%;
      max-width: 400px;
      text-align: center;
    }

    .logo {
      width: 100px;
      height: auto;
      margin: 0 auto 20px;
    }

    label {
      display: block;
      margin-bottom: 8px;
      font-weight: 600;
      text-align: left;
    }

    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 6px;
      margin-bottom: 20px;
      background-color: #333;
      color: white;
      font-size: 15px;
    }

    input[type="text"]::placeholder,
    input[type="password"]::placeholder {
      color: #aaa;
    }

    .login-btn {
      width: 100%;
      padding: 12px;
      background-color: #e60000;
      border: none;
      border-radius: 6px;
      color: white;
      font-size: 16px;
      font-weight: 700;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .login-btn:hover {
      background-color: #cc0000;
    }

    .footer {
      margin-top: 20px;
      font-size: 14px;
      color: #ccc;
    }
  </style>
</head>
<body>

<%
    String error = (String) request.getAttribute("error");
    if ("true".equals(error)) {
%>
    <script>
        alert("Invalid username or password!");
    </script>
<%
    }
%>

  <div class="login-container">
    <a href="home.jsp"><img src="images/logo.png" alt="PlayNova Logo" class="logo" /></a>

    <form action="Login" method="post">
      <label for="username">Admin Username</label>
      <input type="text" id="username" name="username" placeholder="Enter your username" required />

      <label for="password">Admin Password</label>
      <input type="password" id="password" name="password" placeholder="Enter your password" required />

      <button type="submit" class="login-btn">Login</button>
    </form>

    <div class="footer">
      &copy; 2025 PlayNova
    </div>
  </div>

</body>
</html>
