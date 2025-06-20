<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<title> Admin Dashboard </title>

<style>
 @import url('https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;500&display=swap');
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
      font-size: 1.5rem;
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
      display: inline-block;
      margin-right: 8px;
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
      margin: 5px;
      display: inline-block;
    }

    .delete-btn:hover {
      background-color: #cc0000;
      color: white;
    }

    .view-btn {
      background: transparent;
      border: 2px solid #1e90ff;
      padding: 8px 10px;
      color: white;
      border-radius: 20px;
      cursor: pointer;
      transition: background-color 0.3s, color 0.3s;
      font-weight: bold;
      display: inline-block;
      text-align: center;
      text-decoration: none;
      margin-top: 10px;
      width:160px;
      
    }

    .view-btn:hover {
      background-color: #1e90ff;
      color: white;
    }

    .add-btn {
      margin-top: 10px;
      background: transparent;
      border: 2px solid #28a745;
      color: white;
      padding: 8px 15px;
      border-radius: 20px;
      cursor: pointer;
      font-weight: bold;
      transition: background-color 0.3s, color 0.3s;
      display: inline-block;
      text-align: center;
      text-decoration: none;
    }

    .add-btn:hover {
      background-color: #28a745;
      color: white;
    }

    .btn-container {
      margin-top: 10px;
      display: flex;
      align-items: center;
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
    <a href="get_all_anns_servlet"><span style="color:red;">View News</span></a>
    <a href="getDeleteDataServlet">View Reviews</a>
  </div>
  
  <div class="main">
    <div class="header">
      <h1>Announcement Details</h1>
      <div class="profile">
        
        <a href="Logout"><button class="logout-btn">Logout</button></a>
      </div>
    </div>
    
     <div class="add-btn-space">
	              <a href="ann_insert.jsp"><button class="add-btn">Add announcement</button></a>
	              </div>
	              <form action="display_ann_servlet" method="post">
	              <a href="ann_display.jsp"><button class="view-btn">view</button></a>
	              </form>

    <div class="table-container">
      <table>
        <thead>
          <tr>
            <th>Ann ID</th>
            <th>Title</th>
            <th>Description</th>
            <th>Game Name</th>  
            <th>Release Date</th> 
            <th>Game Category</th> 
            <th>Game Owner</th> 
            <th>Action</th>          
          </tr>
        </thead>
          
         <c:forEach var="Ann" items="${annall}">
          
        <!-- Display details -->
          <tr>
            <td>${Ann.a_ID}</td>
            <td>${Ann.a_Title}</td>
            <td>${Ann.a_Description}</td>
            <td>${Ann.a_GameName}</td>
            <td>${Ann.a_RelDate}</td>
            <td>${Ann.a_GCategory}</td>
            <td>${Ann.a_GOwner}</td>
            
            <td>
           
            			<!-- pass values -->
			              <form action="ann_update.jsp" method="post">
						  <input type="hidden" name="A_ID" value="${Ann.a_ID}">
						  <input type="hidden" name="A_Title" value="${Ann.a_Title}">
						  <input type="hidden" name="A_Description" value="${Ann.a_Description}">
						  <input type="hidden" name="A_GameName" value="${Ann.a_GameName}">
						  <input type="hidden" name="A_RelDate" value="${Ann.a_RelDate}">
						  <input type="hidden" name="A_GCategory" value="${Ann.a_GCategory}">
						  <input type="hidden" name="A_GOwner" value="${Ann.a_GOwner}">
						  <input type="submit" value="Update" class="edit-btn" onclick="return confirm('Are you sure you want to update this user?');">
						</form>

              		    	
              
            
			              <form action="ann_delete_servlet" method="post">
			              <input type="hidden" name="A_ID" value="${Ann.a_ID}">
			              <button class="delete-btn" onclick="return confirm('Are you sure you want to delete this user?')">Delete</button>
			              </form>
              
          </td>
          </tr>
         
          </c:forEach>
          
          </table>

    </div>
	             
	              

              
              
  </div>

</body>
</html>
