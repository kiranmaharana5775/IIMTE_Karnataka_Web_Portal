<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "com.iimte_karnataka.entity.Student"%>
<%@ page import = "com.iimte_karnataka.entity.Result"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List, java.sql.Date, java.time.LocalDate, java.time.format.DateTimeFormatter"%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>IIMTE - Student Result</title>
	    <link rel="stylesheet" href="./css/student_result_marksheet_styles.css">
	    <link rel="icon" type="image/png" href="./img/college_logo.jpg">
	</head>
	<body>
	
		<div class="container">

        <div class="header">
            <!--  <div class="watermark">
            </div>-->
            <img src="img/iimt-logo.png" alt="Institute Logo" class="logo">
            <div class="title-container">
                <img src="img/college_name.jpg" alt="Institute Name" class="college-name">
                <div class="statement-container">
                    <div class="statement">STATEMENT OF MARKS</div>
                    <div class="course"><%= ((Student) session.getAttribute("studentDetails")).getCourse() %> - <%= ((Student) session.getAttribute("studentDetails")).getSpecialization() %></div> 
                </div>
            </div>
        </div>
        <div class="info">
            <div class="left">
                <div><span class="label">Student Name      <span class="colun">:</span></span><span class="value"><%= ((Student) session.getAttribute("studentDetails")).getUsername() %></span></div>
                <div><span class="label">Father's Name     <span class="colun">:</span></span><span class="value"><%= ((Student) session.getAttribute("studentDetails")).getFathername() %></span></div>
                <div><span class="label">Registration No       <span class="colun">:</span></span><span class="value"><%= ((Student) session.getAttribute("studentDetails")).getRegistrationno() %></span></div>
            </div>
            <div class="right">
                <div><span class="label">Session        <span class="colun">:</span></span><span class="value"><%= session.getAttribute("resultSession") %></span></div>
                <div><span class="label">Study Centrer     <span class="colun">:</span></span><span class="value">IIMTE/KAR/0019</span></div>
                <div><span class="label">Year/Semester     <span class="colun">:</span></span><span class="value"><%= session.getAttribute("resultSemester") %></span></div>
            </div>
            
        </div>                               
        <table>
            <tr>
                <th style="width: 10%;">Subject Code</th>
                <th style="width: 25%; text-align: center;">Subjects</th>
                <th style="width: 10%;">Maximum Marks</th>
                <th style="width: 10%;">Minimum Marks</th>
                <th style="width: 10%;">Theory</th>
                <th style="width: 10%;">Internal/<br>Practical</th>
                <th style="width: 10%;">Total</th>
                <th style="width: 10%;">Remarks</th>
            </tr>
            
            
            <%
			    // Retrieve the result list from the session
			    List<Result> resultDetails = (List<Result>) session.getAttribute("resultDetails");
			
			    int totalMaxMarks = 0;
			    int totalMinMarks = 0;
			    int totalTheoryMarks = 0;
			    int totalInternalPracticalMarks = 0;
			    int totalTotalMarks = 0;
			    String finalRemark = "";
			
			    if (resultDetails != null) {
			        for (Result result : resultDetails) {
			            totalMaxMarks += result.getMaxMarks();
			            totalMinMarks += result.getMinMarks();
			            totalTheoryMarks += result.getTheoryMarks();
			            totalInternalPracticalMarks += result.getInternalPracticalMarks();
			            totalTotalMarks += result.getTotalMarks();
			%>
			            <tr>
			                <td><%= result.getSubjectCode() %></td>
			                <td style="text-align: left;"><%= result.getSubjectName() %></td>
			                <td><%= result.getMaxMarks() %></td>
			                <td><%= result.getMinMarks() %></td>
			                <td><%= result.getTheoryMarks()%></td>
			                <td><%= result.getInternalPracticalMarks() %></td>
			                <td><%= result.getTotalMarks() %></td>
			                <td class="pass"><%= result.getRemarks() %></td>
			            </tr>
			<%
			        }
			    }
			    
			    if(totalTotalMarks >= totalMinMarks){
			    	finalRemark = "PASS";
			    }
			    else{
			    	finalRemark = "FAIL";
			    }
			%>
            
            <tr>
                <td colspan="2" style="text-align:right; font-weight:bold;">Grand Total:</td>
                <td><b><%= totalMaxMarks %></b></td>
                <td><b><%= totalMinMarks %></b></td>
                <td><b><%= totalTheoryMarks %></b></td>
                <td><b><%= totalInternalPracticalMarks %></b></td>
                <td><b><%= totalTotalMarks %></b></td>
                <td><b><%= finalRemark %></b></td>
            </tr>
        </table>
        <div style="text-align:left;" class="issueddate">Date of Issue: <%= ((Date)session.getAttribute("resultDate")).toLocalDate().format(DateTimeFormatter.ofPattern("dd-MM-yyyy"))%> by IIMTE, Karnataka</div>
        <button class="print-button" onclick="window.print()">Print</button>
    </div>
    <script>
        // Optional: Add custom print styles
        const style = document.createElement('style');
        style.innerHTML = `
            @media print {
                .print-button {
                    display: none;
                }
                .container {
                    box-shadow: none;
                    padding: 0;
                }
                body {
                    background-color: white;
                    margin: 0;
                    padding: 0;
                }
            }
        `;
        document.head.appendChild(style);
    </script>
	
	</body>
</html>