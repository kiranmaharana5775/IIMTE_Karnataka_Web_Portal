<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Indian Institute of Management and Technical Education</title>
        <link rel="stylesheet" href="./css/iimte_contact_us_styles.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
	</head>
	<body>
	<!-- Sticky Outer Container -->
        <div class="sticky-container">
            <!-- Logo and Name -->
            <div class="name_and_logo_container">
                <img class="for_default" src="./img/logo_and_name.jpg" alt="Indian Institute of Management and Technical Education">
            </div>
        
            <!-- Navigation Bar -->
            <nav class="navbar">
                <div class="nav-container">
                    <!-- Hamburger Menu Button (for mobile) -->
                    <div class="menu-toggle">&#9776;</div>
        
                    <!-- Navigation Menu -->
                    <ul class="nav-menu">
                        <li><a href="home">Home</a></li>
                        <li><a href="about_us">About Us</a></li>
                        <li><a href="academic">Academic</a></li>
                        <li><a href="students_zone">Students Zone</a></li>
                        <li><a href="programmes">Programmes</a></li>
                        <li><a href="apply">Apply</a></li>
                        <li><a href="contact_us" style="background-color: rgb(51, 51, 122); color: white; border-radius: 5px;">Contact Us</a></li>
                    </ul>
                </div>
            </nav>
        </div>
        
        <div class="container">
        <!-- Left Side: Contact Form -->
	        <div class="contact-form">
	            <h2>Contact Us</h2>
	            <div id="successPopup" class="success-popup">
	                Successfully Submitted!
	            </div>            
	            <form id="contactForm">
	                <div class="form-group">
	                    <label for="name">Name</label>
	                    <div class="input-container">
	                        <i class="fa fa-user"></i>
	                        <input type="text" id="name" oninput="removeError('name')" placeholder="Enter your Name*">
	                    </div>
	                    <p class="error" id="nameError">Please enter your Name</p>
	                </div>
	
	                <div class="form-group">
	                    <label for="email">Email (Gmail Only)</label>
	                    <div class="input-container">
	                        <i class="fa fa-envelope"></i>
	                        <input type="email" id="email" oninput="removeError('email')"
	                            placeholder="Enter your Gmail address*">
	                    </div>
	                    <p class="error" id="emailError">Please enter your Email</p>
	                </div>
	
	                <div class="form-group">
	                    <label for="phone">Phone Number</label>
	                    <div class="input-container">
	                        <i class="fa fa-phone"></i>
	                        <input type="tel" id="phone" oninput="removeError('phone')"
	                            placeholder="Enter your phone number*" maxlength="10">
	                    </div>
	                    <p class="error" id="phoneError">Please enter your Phone Number</p>
	                </div>
	
	                <div class="form-group">
	                    <label for="message">Message</label>
	                    <div class="input-container">
	                        <i class="fa fa-pen"></i>
	                        <textarea id="message" oninput="removeError('message')" placeholder="Message*"></textarea>
	                    </div>
	                    <p class="error" id="messageError">Please enter a Message</p>
	                </div>
	
	                <button type="button" class="btn" onclick="validateError()">Send Message</button>
	            </form>
	        </div>
	
	        <!-- Right Side: Contact Details -->
	        <div class="contact-details">
	            <h2>Indian Institute of Management and Technical Education Society</h2>
	            <p><strong>Registered Office:</strong> J P Nagar, Bengaluru - 560078</p>
	            <p><strong>Email:</strong> iimteinida@gmail.com</p>
	        </div>
	    </div>
        
        <!-- Footer -->
        <footer class="footer">
            <!-- Footer Content -->
            <div class="footer-content">
                <!-- Copyright -->
                <div class="copyright">
                    <p>Copyright © 2025, Indian Institute of Management and Technical Education</p>
                </div>

                <!-- Navigation Links -->
                <div class="footer-links">
                    <a href="home">Home</a>
                    <a href="about_us">About Us</a>
                    <a href="programmes">Programs</a>
                    <a href="students_zone">Student Zone</a>
                    <a href="">Accreditations</a>
                    <a href="apply">Apply</a>
                    <a href="contact_us">Contact Us</a>
                    <a href="student_login" target="_blank">Center Login</a>
                </div>

                <!-- Back-to-Top Link -->
                <a href="contact_us" class="back-to-top">↑</a>
            </div>
        </footer>
        
	<script src="./js/iimte_contact_us_script.js"></script>
	</body>
</html>