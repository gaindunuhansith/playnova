<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Something went wrong!</title>
<link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;500;600&display=swap" rel="stylesheet">
<style>
body {
            margin: 0;
            padding: 0;
            font-family: 'Rajdhani', sans-serif;
            background: #f4f6f9;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .error-container {
            text-align: center;
            background: white;
            padding: 50px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 90%;
        }

        .error-container h1 {
            font-size: 48px;
            margin-bottom: 10px;
            color: #ff4c60;
            font-weight: 600;
        }

        .error-container p {
            font-size: 20px;
            color: #555;
            margin-bottom: 30px;
            font-weight: 400;
        }

        .home-button {
            display: inline-block;
            padding: 12px 25px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            font-weight: 500;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        .home-button:hover {
            background-color: #0056b3;
        }
        
</style>
</head>
<body>
	<div class="error-container">
        <h1>Oops!</h1>
        <p>Something went wrong.</p>
        <a href="home.jsp" class="home-button">Go to Home</a>
    </div>
</body>
</html>