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
<title>Announcement Register</title>
 <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@700&display=swap" rel="stylesheet">
<style>
	   @import url('https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;500&display=swap');
	
	* {
	    margin: 0;
	    padding: 0;
	    box-sizing: border-box;
	    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}
	
	body {
	    background: linear-gradient(to bottom right, #000000, #1a1a1a);
	    color: white;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    min-height: 100vh;
	    padding: 20px;
	    overflow-y: auto;
	}
	
	.logospace {
	    width: 800px;
	    height: 100px;
	}
	
	.logo {
	    color: white;
	    font-size: 60px;
	    text-align: center;
	    padding: 10px 0 30px 0;
	    font-family: "Big Shoulders Stencil", sans-serif;
	    font-weight: 1000;
	    margin-left: 50px;
	    margin-top: 50px;
	    font-family: 'Rajdhani', sans-serif;
	}
	
	.Box {
	    position: relative;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    height: 90vh;
	    overflow: hidden;
	    z-index: 2;
	    margin-top: -60px;
	}
	
	.container {
	    position: absolute;
	    width: 100%;
	    max-width: 600px;
	    background: linear-gradient(to bottom, #1a1a1a, #111);
	    padding: 40px;
	    border-radius: 12px;
	    box-shadow: 0 0 15px rgba(0,0,0,0.6);
	    display: flex;
	    flex-direction: column;
	}
	
	.txt1 {
	    text-align: center;
	}
	
	.header {
	    color: white;
	    font-size: 34px;
	    text-align: center;
	    padding: 10px 0 30px 0;
	    font-family: 'Rajdhani', sans-serif;
	    font-weight: 1000;
	}
	
	.input-feild {
	    display: flex;
	    flex-direction: column;
	    gap: 15px;
	}
	
	.inputbox2 {
	    width: 100%;
	}
	
	.inputfield {
	    font-size: 16px;
	    background-color: #333;
	    color: white;
	    height: 55px;
	    width: 100%;
	    padding: 0 15px;
	    border: none;
	    border-radius: 6px;
	    outline: none;
	    transition: background-color 0.3s ease;
	    resize: none;
	}
	
	.inputfield:hover, 
	.inputfield:focus {
	    background-color: #444;
	}
	
	textarea.inputfield {
	    height: 120px;
	    padding: 15px 15px;
	}
	
	::placeholder {
	    color: #aaa;
	}
	
	.submit {
	    font-size: 16px;
	    font-weight: bold;
	    color: white;
	    height: 50px;
	    width: 100%;
	    border: none;
	    border-radius: 6px;
	    cursor: pointer;
	    background-color: #e60000;
	    transition: background-color 0.3s ease;
	}
	
	.submit:hover {
	    background-color: #cc0000;
	    box-shadow: none;
	}

</style>

<script>
    function validateForm() {
        var title = document.forms["announcementForm"]["A_Title"].value;
        var description = document.forms["announcementForm"]["A_Description"].value;
        var gameName = document.forms["announcementForm"]["A_GameName"].value;
        var releaseDate = document.forms["announcementForm"]["A_RelDate"].value;
        var category = document.forms["announcementForm"]["A_GCategory"].value;
        var owner = document.forms["announcementForm"]["A_GOwner"].value;

        // Check if all fields are filled
        if (title == "" || description == "" || gameName == "" || releaseDate == "" || category == "" || owner == "") {
            alert("All fields must be filled out");
            return false;
        }
        
       // Description must be at least 15 characters
        if (description.length < 15) {
            alert("Description must be at least 15 characters long");
            return false;
        }

        // Validate release date format (DD/MM/YYYY)
        var datePattern = /^\d{2}\/\d{2}\/\d{4}$/;
        if (!datePattern.test(releaseDate)) {
            alert("Release Date must be in the format DD/MM/YYYY");
            return false;
        }

        return true;
    }
</script>

</head>
<body>
    <form name="announcementForm" action="ann_insert_servlet" method="post" onsubmit="return validateForm()">
        <div class="logospace">
            <label class="logo"></label>
        </div>

        <div class="Box">
            <div class="container">

                <div class="txt1">
                    <header class="header">Announcements Register</header>
                </div>

                <div class="input-feild">
                    <div class="inputbox2">
                        <input type="text" class="inputfield" name="A_Title" placeholder="Anonouncement Title" required>         
                    </div>
                    <div class="inputbox2">
                        <textarea class="inputfield" name="A_Description" placeholder="Game Description" required></textarea>        
                    </div>
                    <div class="inputbox2">
                        <input type="text" class="inputfield" name="A_GameName" placeholder="Game Name" required>         
                    </div>
                    <div class="inputbox2">
                        <input type="text" class="inputfield" name="A_RelDate" placeholder="Release Date (DD/MM/YYYY)" required>         
                    </div>
                    <div class="inputbox2">
                        <input type="text" class="inputfield" name="A_GCategory" placeholder="Game Category" required>         
                    </div>
                    <div class="inputbox2">
                        <input type="text" class="inputfield" name="A_GOwner" placeholder="Company Name" required>         
                    </div>

                    <div class="inputbox2">
                        <input type="submit" class="submit" value="Upload">
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
