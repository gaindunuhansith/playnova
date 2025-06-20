<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard </title>

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
    <a href="get_all_users_servlet"><span style="color:red;">View Users</span></a>
    <a href="get_all_anns_servlet">View News</a>
    <a href="getDeleteDataServlet">View Reviews</a>
  </div>
  
  <div class="main">
    <div class="header">
      <h1>User Details</h1>
      <div class="profile">
        <a href="Logout"><button class="logout-btn">Logout</button></a>
      </div>
    </div>

    <div class="table-container">
      <table>
        <thead>
          <tr>
            <th>User ID</th>
            <th>User Name</th>
            <th>Email</th>
            <th>Phone Number</th>  
            <th>Action</th>          
          </tr>
        </thead>
          
         <c:forEach var="User" items="${userall}">
          
       
          <tr>
            <td>${User.u_ID}</td>
            <td>${User.u_UserName}</td>
            <td>${User.u_Email}</td>
            <td>${User.u_PhoneNumber}</td>
            
            <td>
            
  
              <form action="user_delete_servlet" method="post">
              <input type="hidden" name="U_ID" value="${User.u_ID}">
              <button class="delete-btn" onclick="return confirm('Are you sure you want to delete this user?')">Remove</button>
              </form>
              
            </td>
          </tr>
          </c:forEach>
          </table>
    </div>
    
  </div>

</body>
</html>