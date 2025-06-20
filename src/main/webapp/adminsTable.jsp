<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  <title>View Admins</title>
  <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;700&display=swap" rel="stylesheet"/>
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
      height: 100vh;
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

    .sidebar h2 {
      font-size: 1.8rem;
      margin-bottom: 30px;
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
      margin-bottom: 30px;
      
    }

    .header h1 {
      font-size: 2.5rem;
    }

    .header .profile {
      display: flex;
      align-items: center;
      gap: 15px;
    }

    .profile img {
      width: 50px;
      height: 50px;
      border-radius: 50%;
      object-fit: cover;
      border: 2px solid white;
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

    .table-container {
      background-color: rgba(0, 0, 0, 0.3);
      border-radius: 10px;
      padding: 20px;
      overflow-x: auto;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    th, td {
      padding: 12px 15px;
      text-align: left;
    }

    th {
      background-color: #444;
    }

    tr:nth-child(even) {
      background-color: rgba(255, 255, 255, 0.05);
    }

    .edit-btn {
      background: transparent;
      border: 2px solid #00bfff;
      padding: 5px 10px;
      color: white;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s, color 0.3s;
    }

    .edit-btn:hover {
      background-color: #00bfff;
      color: white;
    }

    .delete-btn {
      background: transparent;
      border: 2px solid #cc0000;
      padding: 5px 10px;
      color: white;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s, color 0.3s;
    }

    .delete-btn:hover {
      background-color: #cc0000;
      color: white;
    }

    .create-btn {
      margin-top: 10px;
      background: transparent;
      border: 2px solid #28a745;
      color: white;
      padding: 8px 15px;
      border-radius: 20px;
      cursor: pointer;
      font-weight: bold;
      transition: background-color 0.3s, color 0.3s;
    }

    .create-btn:hover {
      background-color: #28a745;
      color: white;
    }

    @media screen and (max-width: 768px) {
      .sidebar {
        width: 100px;
        align-items: center;
      }
      
      .sidebar{
      
      }

      .sidebar a {
        font-size: 0.8rem;
        margin-bottom: 1.5rem;
      }

      .main {
        margin-left: 100px;
        padding: 1.5rem;
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
      <h1>Admin List</h1>
      <div class="profile">
      <a href="adminDataHome.jsp">
          <img src="images/log.jpg" alt="Admin Avatar" />
        </a>
        
        <a href="Logout">
          <button class="logout-btn">Logout</button>
        </a>
      </div>
    </div>

    <div class="table-container">
      <table>
        <thead>
          <tr>
            <th>Admin ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Role</th>
            <th>Username</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="ad" items="${admin}">
            <tr>
              <td>${ad.id}</td>
              <td>${ad.name}</td>
              <td>${ad.email}</td>
              <td>${ad.phone}</td>
              <td>${ad.role}</td>
              <td>${ad.userName}</td>
              <td>
                <form action="ManageAdminEdit.jsp" method="post" style="display:inline;">
                  <input type="hidden" name="id" value="${ad.id}">
                  <input type="hidden" name="name" value="${ad.name}">
                  <input type="hidden" name="email" value="${ad.email}">
                  <input type="hidden" name="phone" value="${ad.phone}">
                  <input type="hidden" name="role" value="${ad.role}">
                  <input type="hidden" name="userName" value="${ad.userName}">
                  <input type="hidden" name="password" value="${ad.password}">
                  <input type="submit" value="Edit" class="edit-btn" onclick="return confirm('Are you sure you want to update this admin?');">
                </form>

                <a href="adminDelete?id=${ad.id}" onclick="return confirm('Are you sure you want to delete this admin?');">
                  <button class="delete-btn">Delete</button>
                </a>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>

    <a href="ManageAdminCreate.jsp">
      <button class="create-btn">Create New Record</button>
    </a>
  </div>

</body>
</html>
