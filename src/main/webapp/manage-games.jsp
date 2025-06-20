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
  <title>Manage Games</title>
  <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;700&display=swap" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <link rel="stylesheet" href="style/manage-games.css" />
  <style>
	  	@charset "UTF-8";
	
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
	    
		.create-btn {
		  background: transparent;
		  border: 2px solid #28a745;
		  color: white;
		  padding: 6px 12px;
		  border-radius: 20px;
		  cursor: pointer;
		  font-weight: bold;
		  transition: background-color 0.3s, color 0.3s;
		  display: inline-block;
		  width: auto;
		  white-space: nowrap;
		}
		
		
		.search-bar {
		  padding: 8px 16px;
		  font-size: 14px;
		  font-weight: 400;
		  border: 1px solid rgba(255, 255, 255, 0.2);
		  border-radius: 20px;
		  background: rgba(255, 255, 255, 0.05);
		  backdrop-filter: blur(6px);
		  color: #fff;
		  width: 200px;
		}
		
		.search-bar::placeholder {
		  color: #aaa;
		  font-size: 13px;
		}
		
		.search-bar:focus {
		  outline: none;
		  background: rgba(255, 255, 255, 0.1);
		  border-color: rgba(255, 255, 255, 0.4);
		}
		
		
		.create-btn:hover {
		  background-color: #28a745;
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
		  min-width: 1000px; 
		  border-collapse: collapse;
		  table-layout: fixed; 
		}
		
		th,
		td {
		  padding: 12px 15px;
		  text-align: left;
		  word-wrap: break-word;
		  word-break: break-word;
		  white-space: normal;
		  vertical-align: top;
		}
		
		th {
		  background-color: #444;
		}
		
		td:nth-child(5),
		th:nth-child(5) {
		  width: 30%;
		}
		
		td:nth-child(7),
		th:nth-child(7) {
		  max-width: 100px;
		  overflow-wrap: break-word;
		}
		
		td:nth-child(8),
		th:nth-child(8) {
		  min-width: 150px;
		}
		

		tr:nth-child(even) {
		  background-color: rgba(255, 255, 255, 0.05);
		}
		
		button {
		  background: transparent;
		  border: 2px solid #00bfff;
		  padding: 6px 12px;
		  color: white;
		  border-radius: 5px;
		  cursor: pointer;
		  transition: background-color 0.3s, color 0.3s;
		}
		
		button:hover {
		  background-color: #00bfff;
		  color: white;
		}
		
		a .delete-btn,
		.delete-btn {
		  margin-top: 5px;
		  border: 2px solid #cc0000;
		}
		
		a .delete-btn:hover,
		.delete-btn:hover {
		  background-color: #cc0000;
		  color: white;
		}
	    
	
	    .logo-img {
	      width: 120px;
	      height: auto;
	    }
	
	    @media screen and (max-width: 768px) {
	      .sidebar {
	        width: 100px;
	        align-items: center;
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
  </style>
</head>
<body>

  <div class="sidebar">
  <a href="home.jsp">
  	<img src="images/logo.png" alt="Logo" class="logo-img" />
  </a>
    <a href="adminDataHome.jsp">Dashboard</a>
    <a href="ManageGames"><span style="color:red;">Manage Games</span></a>
    <a href="get_all_users_servlet">View Users</a>
    <a href="get_all_anns_servlet">View News</a>
    <a href="getDeleteDataServlet">View Reviews</a>
  </div>

  <div class="main">
    <div class="header">
      <h1>Manage Games</h1>
      <div class="profile">
        <a href="Logout">
          <button class="logout-btn">Logout</button>
        </a>
      </div>
    </div>
    
  	<div class="search-container">
	  <input type="text" class="search-bar" id="searchInput" placeholder="Search games..." onkeyup="searchGames()">
	</div><br><br>
  	
	
	<a href="add-game.jsp"><button class="create-btn">Add New Game</button></a>
	
    <div class="table-container">
      <table>
        <thead>
          <tr>
            <th>Game ID</th>
            <th>Name</th>
            <th>Developer</th>
            <th>Category</th>
            <th>Description</th>
            <th>Price</th>
            <th>Image</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="game" items="${allGames}">
            <tr>
              <td>${game.gameID}</td>
              <td>${game.name}</td>
              <td>${game.developer}</td>
              <td>${game.category}</td>
              <td>${game.description}</td>
              <td>${game.price}</td>
              <td>${game.image}</td>
              <td>
                <form action="update-game.jsp" method="post" style="display:inline;">
                  <input type="hidden" name="gameID" value="${game.gameID}">
                  <input type="hidden" name="name" value="${game.name}">
                  <input type="hidden" name="developer" value="${game.developer}">
                  <input type="hidden" name="category" value="${game.category}">
                  <input type="hidden" name="description" value="${game.description}">
                  <input type="hidden" name="price" value="${game.price}">
                  <input type="hidden" name="image" value="${game.image}">
                  <button type="submit">Update</button>
                </form>
                <a href="DeleteGame?gameID=${game.gameID}" onclick="return confirm('Are you sure you want to delete this game?');">
                  <button class="delete-btn">Delete</button>
                </a>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </div>
  
  
  <script>
	function searchGames() {
	  const input = document.getElementById("searchInput").value.toLowerCase();
	  const rows = document.querySelectorAll("table tbody tr");
	
	  rows.forEach(row => {
	    const nameCell = row.cells[1]; 
	    const name = nameCell.textContent.toLowerCase();
	    row.style.display = name.includes(input) ? "" : "none";
	  });
	}
	</script>
  

</body>
</html>
