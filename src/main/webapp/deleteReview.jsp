<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;600;700&display=swap" rel="stylesheet">
    
    <title>All Reviews</title>
    
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
    
    
    
    #searchInput {
        width: 300px;
        padding: 8px;
        margin: 20px;
        font-size: 16px;
    }
    
     h2 {
     	margin-top:50px;
      text-align: center;
      margin-bottom: 30px;
      color: white;  
       font-size: 36px;
    }
    
    .table-container {
      margin-left: 240px;
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

    .delete-btn {
      background: transparent;
      border: 2px solid #cc0000;
      padding: 5px 10px;
      color: white;
      margin:5px;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s, color 0.3s;
    }

    .delete-btn:hover {
      background-color: #cc0000;
      color: white;
    }
    
    </style>
    
</head>
<body>

  <div class="sidebar">
  <a href="home.jsp">
  	<img src="images/logo.png" alt="Logo" class="logo-img" />
  </a>
    <a href="adminDataHome.jsp">Dashboard</a>
    <a href="ManageGames">Manage Games</a>
    <a href="get_all_users_servlet">View Users</a>
    <a href="get_all_anns_servlet">View News</a>
    <a href="getDeleteDataServlet"><span style="color:red;">View Reviews</span></a>
  </div>
    
    
	<div class="table-container">
	<h2>All Game Reviews</h2>	    
		    <table>
		        <tr>
		            <th>ID</th>
		            <th>User name</th>
		            <th>Email</th>
		            <th>Game</th>
		            <th>Rating</th>
		            <th>Review</th>
		            <th>Date</th>
		            <th>Action</th>
		        </tr>
		        <c:forEach var="r" items="${reviewList}">
		            <tr>
		                <td>${r.id}</td>
		                <td>${r.username}</td>
		                <td>${r.email}</td>
		                <td>${r.game}</td>
		                <td>${r.rating}</td>
		                <td>${r.review}</td>
		                <td>${r.date}</td>
		                
		                <td>
		                	 
		                	 <form action="deleteReviewAdmin" method="post">
		                	 <input type="hidden" name="id" value="${r.id}"/>          
		                	 <button class="delete-btn">Delete</button>
		                	 </form>
		                
		                </td>
		            </tr>
		        </c:forEach>
		    </table>
    	</div>
    	
</body>
</html>