<%@ page language="java" contentType="text/html; charset=UTF-8 "
    pageEncoding="UTF-8" %>
<%@ page import = "com.iimte_karnataka.entity.Student"%>
<%@ page import="java.sql.Date, java.time.LocalDate, java.time.format.DateTimeFormatter, java.util.Base64"%>

   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <title>IIMTE - Student Dashboard</title>
	  <link rel="stylesheet" href="./css/student_dashboard_styles.css">
	  <!-- Include FontAwesome for icons -->
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	  <link rel="icon" type="image/png" href="./img/college_logo.jpg">
	</head>
	<body>
	
		<%
		    Student student = (Student) session.getAttribute("studentDetails");
		
		    byte[] imageBytes = student.getImage();
		    String base64Image = "";
		
		    if (imageBytes != null) {
		        base64Image = Base64.getEncoder().encodeToString(imageBytes);
		    }
		%>
		<div class="container">
	    <aside class="sidebar">
	      <!-- Image container -->
	      <div class="image-container">
	        <!-- <img src="./img/student-with-graduation-cap.png" alt="Image"> -->
	        <img src="data:image/jpeg;base64,<%= base64Image %>" alt="Image">
	        <!-- <img src="https://drive.google.com/uc?export=view&id=1ru4vf5swBezM6AH4NI9l8SAaAbweS_dD" alt="Image"> -->
	      </div>
	      <!-- Sidebar content goes here -->
	      <ul class="sidebar-menu">
	        <li id="dashboard-option">
	          <i class="fas fa-id-card"></i>
	          <span>Dashboard</span>
	        </li>
	        <li id="subjects-option">
	          <i class="fas fa-book"></i>
	          <span>Subjects</span>
	        </li>
	        <li id="admit-card-option">
	          <i class="fas fa-clipboard-list"></i>
	          <span>Admit Card</span>
	        </li>
	        <li id="result-option">
	          <i class="fas fa-chart-line"></i>
	          <span>Result</span>
	        </li>
	      </ul>
	      <!-- Logout button -->
	     
		<button class="logout-btn" onclick="logoutAndCloseTab()">
		    <i class="fas fa-sign-out-alt"></i>
		    <span>Logout</span>
		</button>
	    </aside>
	    <main class="main-content">
	      <!-- User profile container -->
	      <div class="user-profile">
	        <div class="user-info">
	          <img src="data:image/jpeg;base64,<%= base64Image %>" alt="User Image" class="user-image">
	          <span class="user-name"><%= ((Student) session.getAttribute("studentDetails")).getUsername() %></span>
	        </div>
	      </div>
	      <!-- Main content container -->
	      <div class="content-container" id="content-container">
	        <!-- Default content (Dashboard) -->
	        <div id="dashboard-content" class="content">
	          <!-- Welcome Container -->
	            <div class="welcome-container">
	                <!-- Left Side -->
	                <div class="welcome-text">
	                <div class="date" id="date"></div>
	                <div class="welcome-message">
	                    Welcome Back, <span class="animated-name" id="animated-name"><%= ((Student) session.getAttribute("studentDetails")).getUsername() %> ..!</span>
	                </div>
	                </div>
	                <!-- Right Side -->
	                <div class="welcome-image">
	                <img src="./img/college_logo.jpg" alt="Student Image">
	                </div>
	            </div>
	
	            <!-- Academic Details Container -->
	            <div class="academic-details-container">
	                <!-- Header -->
	                <div class="academic-header">
	                  <h2>Academic Details</h2>
	                  <!-- <div class="underline"></div>  -->
	                </div>
	                <!-- Content -->
	                <div class="academic-content">
	                  <!-- Left Side: Labels -->
	                  <div class="labels">
	                    <p>University / Council</p>
	                    <p>Center</p>
	                    <p>Course</p>
	                    <p>Specialization</p>
	                    <p>Registration No.</p>
	                    <p>Session</p>
	                  </div>
	                  <!-- Right Side: Details -->
	                 
	                  <div class="details">
	                    <p>IIMTE, Karnataka</p>
	                    <p>IIMTE COLLEGE CAMPUS</p>
	                    <p><%= ((Student) session.getAttribute("studentDetails")).getCourse() %></p>
	                    <p><%= ((Student) session.getAttribute("studentDetails")).getSpecialization() %></p>
	                    <p><%= ((Student) session.getAttribute("studentDetails")).getRegistrationno() %></p>
	                    <p><%= ((Student) session.getAttribute("studentDetails")).getJoiningdate().toLocalDate().getYear()%> - <%= ((Student) session.getAttribute("studentDetails")).getPassoutdate().toLocalDate().getYear()%></p>
	                    
	                  </div>
	                </div>
	            </div>
	
	            <!-- Personal Details Container -->
	            <div class="personal-details-container">
	              <!-- Header -->
	              <div class="academic-header">
	                <h2>Personal Details</h2>
	                <!-- <div class="underline"></div>  -->
	              </div>
	              <!-- Content -->
	              <div class="academic-content">
	                <!-- Left Side: Labels -->
	                <div class="labels">
	                  <p>Gender</p>
	                  <p>DOB</p>
	                  <p>Father Name</p>
	                  <p>Mother Name</p>
	                </div>
	                <!-- Right Side: Details -->
	                <div class="details">
	                  <p><%= ((Student) session.getAttribute("studentDetails")).getGender() %></p>
	                  <p><%= ((Student) session.getAttribute("studentDetails")).getDob().toLocalDate().format(DateTimeFormatter.ofPattern("dd-MM-yyyy")) %></p>
	                  <p><%= ((Student) session.getAttribute("studentDetails")).getFathername() %></p>
	                  <p><%= ((Student) session.getAttribute("studentDetails")).getMothername() %></p>
	                </div>
	              </div>
	            </div>
	        </div>
	        <!-- Enrolled Courses content -->
	        <div id="enrolled-subject-content" class="content" style="display: none;">
	          <h1>Subjects</h1>
	          <p>This is the enrolled courses content area.</p>
	        </div>
	        <!-- Result content -->
	        <div id="admit-card-content" class="content" style="display: none;">
	          <h1>Admit Card</h1>
	          <p>This is the result content area.</p>
	        </div>
	        <!-- Result content -->
	        <div id="result-content" class="content" style="display: none;">
	          <!-- Result container (hidden by default) -->
	          <div class="result-container" id="result-container">
	            <div class="selection-container">
	              <!-- Header wrapper for result-header -->
	              <div class="header-wrapper">
	                <div class="result-header">
	                  View Your Performance
	                </div>
	              </div>
	              <!-- Rest of the selection container content -->
	              <div class="semester-selection">
	                <label for="semester-select" class="selection-label">Select Year</label>
	                <select id="semester-select" class="semester-dropdown">
	                  <option value="" disabled selected>Select</option>
	                  <option value="Sem 1">Year 1</option>
	                  <option value="Sem 2">Year 2</option>
	                  <option value="Sem 3">Year 3</option>
	                  
	                </select>
	              </div>
	              
	              <button class="show-result-button" onclick="fetchResult()">Show Result</button>
	              <!-- Error message div -->
	              <div id="error-message" class="error-message">${requestScope.resultErrorMessage}</div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </main>
	  </div>
	  
	    
		
		<script src="./js/student_dashboard_script.js"></script>
		
	</body>
</html>