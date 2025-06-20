<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
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
  <title>Admin Profile</title>
  <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;500&display=swap" rel="stylesheet"/>
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
      display: flex;
    }

    .sidebar {
      width: 220px;
      background: linear-gradient(to bottom, #1a1a1a, #111);
      padding: 2rem 1.5rem;
      display: flex;
      flex-direction: column;
      position: fixed;
      height: 100%;
      top: 0;
      left: 0;
      border-right: 1px solid #333;
    }

    .sidebar img {
      width: 120px;
      margin-bottom: 30px;
    }

    .sidebar a {
      color: white;
      text-decoration: none;
      margin-bottom: 20px;
      font-size: 1.1rem;
      transition: color 0.3s;
    }

    .sidebar a:hover {
      color: #e60000;
    }

    .main {
      margin-left: 220px;
      padding: 2rem;
      width: calc(100% - 220px);
      display: flex;
      flex-direction: column;
    }

    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 2rem;
    }

    .welcome-message {
      font-size: 2rem;
      font-weight: 500;
      color: white;
    }

    .welcome-message span {
      color: #e60000;
    }

    .profile {
      display: flex;
      align-items: center;
      gap: 1rem;
    }

    .profile img {
      width: 50px;
      height: 50px;
      border-radius: 50%;
      object-fit: cover;
      border: 2px solid white;
    }

    .logout-btn,
    .view-others-btn {
      background: transparent;
      border: 1px solid white;
      color: white;
      padding: 0.5rem 1rem;
      border-radius: 30px;
      cursor: pointer;
      font-weight: 600;
      transition: all 0.3s ease;
    }

    .logout-btn:hover,
    .view-others-btn:hover {
      background-color: #e60000;
      color: white;
      border-color: #e60000;
    }

    .admin-card {
      background-color: #2a2a2a;
      border-radius: 15px;
      padding: 2rem;
      max-width: 600px;
      margin: 3rem auto 0;
      margin-top: 110px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
      text-align: center;
    }

    .admin-card img {
      width: 120px;
      height: 120px;
      object-fit: cover;
      border-radius: 50%;
      border: 2px solid white;
      margin-bottom: 1rem;
    }

    .admin-card h2 {
      margin-bottom: 0.8rem;
      font-size: 1.8rem;
      color: white;
    }

    .admin-card p {
      margin-bottom: 0.5rem;
      font-size: 1rem;
      color: #ccc;
    }

    .view-others-btn {
      margin-top: 1.5rem;
      padding: 0.6rem 1.2rem;
      font-size: 1rem;
    }

    @media screen and (max-width: 768px) {
      .sidebar {
        width: 100px;
        padding: 1rem;
      }

      .sidebar img {
        width: 80px;
        margin-bottom: 20px;
      }

      .sidebar a {
        font-size: 0.8rem;
        margin-bottom: 1.5rem;
      }

      .main {
        margin-left: 100px;
        padding: 1.5rem;
      }

      .admin-card {
        margin-left: 0;
      }
    }

    .logo-img {
      width: 120px;
      height: auto;
    }
  </style>
</head>
<body>

  <div class="sidebar">
  <a href="home.jsp">
  	<img src="images/logo.png" alt="Logo" class="logo-img" />
  </a>
    <a href="adminDataHome.jsp"><span style="color:red;">Dashboard</span></a>
    <a href="ManageGames">Manage Games</a>
    <a href="get_all_users_servlet">View Users</a>
    <a href="get_all_anns_servlet">View News</a>
    <a href="getDeleteDataServlet">View Reviews</a>
  </div>

  <div class="main">
    <div class="header">
      <c:set var="ad" value="${loginad}" />
      <div class="welcome-message">
        Welcome, <span>${ad.name}</span>
      </div>
      <div class="profile">
        <a href="Logout">
          <button class="logout-btn">Logout</button>
        </a>
      </div>
    </div>

    <div class="admin-card">
      <img src="images/profile.jpg" alt="Admin Profile" />
      <h2>${ad.name}</h2>
      <p><strong>Email:</strong> ${ad.email}</p>
      <p><strong>Contact:</strong> ${ad.phone}</p>
      <p><strong>Role:</strong> ${ad.role}</p>
      <p><strong>Username:</strong> ${ad.userName}</p>
      <p><strong>Password:</strong> ${ad.password}</p>

      <form action="AdminList" method="post">
        <button type="submit" class="view-others-btn">View Other Admins</button>
      </form>
    </div>
  </div>

</body>
</html>
