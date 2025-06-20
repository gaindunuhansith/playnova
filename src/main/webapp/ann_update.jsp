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
<title>Update Profile | PLAYNOVA</title>
<style>
		 @import url('https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;500&display=swap');
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
		  min-height: 100vh;
		  padding: 20px;
		}
		
		form {
		  display: flex;
		  width: 100%;
		  max-width: 900px;
		  margin: auto;
		  border-radius: 12px;
		  box-shadow: 0 0 15px rgba(0,0,0,0.6);
		  overflow: hidden;
		  background: linear-gradient(to bottom right, #000000, #1a1a1a);
		}
		
		.main {
		  flex-grow: 1;
		  padding: 40px;
		  color: white;
		}
		
		
		.container {
		  background: linear-gradient(to bottom, #111, #222);
		  padding: 30px 40px;
		  border-radius: 12px;
		  box-shadow: 0 0 15px rgba(0,0,0,0.5);
		  max-width: 500px;
		  margin: 0 auto;
		}
		
		.section {
		  margin-bottom: 30px;
		}
		
		label {
		  display: block;
		  margin-bottom: 10px;
		  font-weight: bold;
		  font-size: 15px;
		}
		
		.input {
		  width: 100%;
		  padding: 12px 10px;
		  margin-bottom: 20px;
		  border: none;
		  border-radius: 6px;
		  background-color: #333;
		  color: white;
		  font-size: 14px;
		}
		
		.input::placeholder {
		  color: #aaa;
		}
		
		.btn {
		  width: 100%;
		  padding: 12px;
		  background-color: #e60000;
		  border: none;
		  border-radius: 6px;
		  color: white;
		  font-weight: bold;
		  font-size: 16px;
		  cursor: pointer;
		  transition: background-color 0.3s ease;
		}
		
		.btn:hover {
		  background-color: #cc0000;
		}

</style>

<script>
    function validateUpdateForm() {
        var form = document.forms["updateForm"];
        var title = form["A_Title"].value;
        var description = form["A_Description"].value;
        var gameName = form["A_GameName"].value;
        var relDate = form["A_RelDate"].value;
        var category = form["A_GCategory"].value;
        var owner = form["A_GOwner"].value;

        if (title === "" || description === "" || gameName === "" || relDate === "" || category === "" || owner === "") {
            alert("All fields must be filled out");
            return false;
        }

        if (description.length < 15) {
            alert("Description must be at least 15 characters long");
            return false;
        }

        var datePattern = /^\d{2}\/\d{2}\/\d{4}$/;
        if (!datePattern.test(relDate)) {
            alert("Release Date must be in DD/MM/YYYY format");
            return false;
        }

        return true;
    }
</script>


</head>
<body>

<%
    String A_ID = request.getParameter("A_ID");
    String A_Title = request.getParameter("A_Title");
    String A_Description =  request.getParameter("A_Description");
    String A_GameName = request.getParameter("A_GameName");
    String A_RelDate = request.getParameter("A_RelDate");
    String A_GCategory = request.getParameter("A_GCategory");
    String A_GOwner = request.getParameter("A_GOwner");
%>

<form name="updateForm" action="ann_update_servlet" method="post" onsubmit="return validateUpdateForm()">
    

    <div class="main">
 
        <div class="container">
            <div class="section">
          
                <!-- Profile Changing -->
                <h2><center>Announcement Update</center> </h2>
                <label>ID</label>
                <input type="text" class="input" name="A_ID" value="<%=A_ID%>" readonly><br>
                 
                <label>Title</label>
                <input type="text" class="input" name="A_Title" value="<%=A_Title%>" ><br>

                <label>Description</label>
                <input type="text" class="input" name="A_Description" value="<%=A_Description%>" ><br>

                <label>Game Name</label>
                <input type="text" class="input" name="A_GameName" value="<%=A_GameName%>" ><br>

                <label>Release Date</label>
                <input type="text" class="input" name="A_RelDate" value="<%=A_RelDate%>" ><br>

                <label>Game Category</label>
                <input type="text" class="input" name="A_GCategory" value="<%=A_GCategory%>" ><br>

                <label>Game Owner</label>
                <input type="text" class="input" name="A_GOwner" value="<%=A_GOwner%>" ><br>

                <button class="btn" type="submit">Update Announcement</button>
            </div>
        </div>
    </div>
</form>

</body>
</html>
