<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>IIMTE - Student Login</title>
        <link rel="stylesheet" href="./css/student_login_styles.css">
        <link rel="icon" type="image/png" href="./img/college_logo.jpg">
	</head>
	<body>
		<div class="main-container">
            <!-- Left Side: Login Form -->
            <div class="login-container">
                <!-- Add the image here -->
                <img src="./img/logo_and_name.jpg" alt="Logo" class="top-image">
                <h1>Welcome Back To Your Space..!</h1>
                
                <% 
				String errorMessage = (String) request.getAttribute("errorMessage");
				if (errorMessage != null) {
				%>
                <!-- Error Message (initially hidden) -->
                <div id="error-message" class="error-message">
                    <%= errorMessage %>
                </div>
                
                <% 
				} 
				%>


                <form action = "/student_login" method = "post">
                    <div class="input-group">
                        <label for="username">Enter username</label>
                        <input type="text" id="username" name="username" required>
                    </div>
                    <div class="input-group">
                        <label for="password">Your password</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    <a href="#" class="forgot-password">Forgot your password?</a>
                    <button type="submit">SIGN IN</button>
                </form>
            </div>
    
            <!-- Right Side: Image -->
            <div class="image-container">
                <img src="./img/Login Image.png" alt="Tech Image">
            </div>
        </div>
	</body>
</html>