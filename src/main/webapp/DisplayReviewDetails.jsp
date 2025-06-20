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
      margin:5px;
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
      margin:5px;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s, color 0.3s;
    }

    .delete-btn:hover {
      background-color: #cc0000;
      color: white;
    }
    
    .insertnew{
	  background-color: #e60000;
	  color: white;
	  padding:10px 10px;
	  margin-top: 50px;
	  border-radius: 8px;
	  border: none;
	  cursor: pointer;
	
	}
    
    </style>
    
</head>
<body>


    
    
    
    
	<div class="table-container">
	<h2>All Game Reviews</h2>
	<input type = "text" id="searchInput" placeholder="search...">	
	<a href="getReviewHome">
	        <button class="insertnew">Review Section</button>
	 </a>    
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
		                	 <a href="reviewupdate.jsp?id=${r.id}&username=${r.username}&email=${r.email}&game=${r.game}&rating=${r.rating}&review=${r.review}">
		                	 <button class="edit-btn" >Update</button>
		                	 </a>
		                	 
		                	 <form action="ReviewDeleteServlet" method="post">
		                	 <input type="hidden" name="id" value="${r.id}"/>          
		                	 <button class="delete-btn">Delete</button>
		                	 </form>
		                
		                </td>
		            </tr>
		        </c:forEach>
		    </table>
    	</div>
    	
    	
		    <script>
			function filterTable() {
				
		    var input = document.getElementById("searchInput");
		    var filter = input.value.toUpperCase();
		    var table = document.querySelector("table");
		    var tr = table.getElementsByTagName("tr");
		
		    for (var i = 1; i < tr.length; i++) { // Start from 1 to skip the header row
		        var td = tr[i].getElementsByTagName("td");
		        var rowMatch = false;
		
		        for (var j = 0; j < td.length; j++) {
		            if (td[j]) {
		                var txtValue = td[j].textContent || td[j].innerText;
		                if (txtValue.toUpperCase().indexOf(filter) > -1) {
		                    rowMatch = true;
		                    break;
		                }
		            }
		        }
		        tr[i].style.display = rowMatch ? "" : "none";
		    }
		}
		document.getElementById("searchInput").addEventListener("input", filterTable);
		</script>
		    
    
</body>
</html>