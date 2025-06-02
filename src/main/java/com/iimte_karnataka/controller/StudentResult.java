package com.iimte_karnataka.controller;

import org.springframework.ui.Model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iimte_karnataka.dao.ResultCURD;
import com.iimte_karnataka.entity.Result;
import com.iimte_karnataka.entity.Student;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentResult {
	@Autowired
	ResultCURD resultCRUD;
	
	/*@GetMapping("/student_result")
	@ResponseBody
    public ResponseEntity<?> getStudentResult(@RequestParam("resultYear") String resultYear, Model model, HttpSession session) {
		Integer resultYearNumber = Integer.parseInt(resultYear);
		Student studentDetails = (Student) session.getAttribute("studentDetails");

		String loggedUserName = (studentDetails != null) ? studentDetails.getRegistrationno() : null;
		
		List<Result> result = resultCRUD.getMarksByRegistrationNoAndSemester(loggedUserName,resultYearNumber);
		
        if (result.size() > 0) {
        	session.setAttribute("resultDetails", result);
        	session.setAttribute("resultSemester", (resultYear.charAt(resultYear.length()-1)));
        	session.setAttribute("resultSession", result.get(0).getSessionDate());
        	session.setAttribute("resultDate", result.get(0).getIssueDate());
        	return ResponseEntity.ok(Map.of("redirect", "/resultPage?resultYear=" + resultYear));
        } else {
        	return ResponseEntity.status(HttpStatus.NOT_FOUND).body(Map.of("error", "❌ No result found for semester " + resultYear + "."));
        }
    }
	
	@GetMapping("/resultPage")
    public String showResultPage(@RequestParam("resultYear") String resultYear, Model model) {
        return "student_result_marksheet"; // Load result.jsp
    }*/
	
	@ResponseBody
    @GetMapping("/student_result")
    public Map<String, String> getStudentResult(@RequestParam("resultYear") int resultYear,
                                                HttpSession session) {
        Map<String, String> response = new HashMap<>();

        Student student = (Student) session.getAttribute("studentDetails");
        if (student == null) {
            response.put("error", "Student session not found.");
            return response;
        }

        List<Result> results = resultCRUD.getMarksByRegistrationNoAndSemester(
                student.getRegistrationno(), resultYear);

        if (results == null || results.isEmpty()) {
            response.put("error", "No results found.");
            return response;
        }

        int totalMax = 0;
        int totalMin = 0;
        int totalTheory = 0;
        int totalInternal = 0;
        int totalScored = 0;

        boolean hasFail = false;

        StringBuilder html = new StringBuilder();
        html.append("<table border='1' style='width:100%; border-collapse:collapse;min-width: 600px; width: 100%;'>")
        .append("<tr>")
        .append("<th style='width: 10%;'>Subject Code</th>")
        .append("<th style='width: 25%; text-align: center;'>Subjects</th>")
        .append("<th style='width: 10%;'>Maximum Marks</th>")
        .append("<th style='width: 10%;'>Minimum Marks</th>")
        .append("<th style='width: 10%;'>Theory</th>")
        .append("<th style='width: 10%;'>Internal/<br>Practical</th>")
        .append("<th style='width: 10%;'>Total</th>")
        .append("<th style='width: 10%;'>Remarks</th>")
        .append("</tr>");


        for (Result r : results) {
            int subjectTotal = r.getTotalMarks();
            totalMax += r.getMaxMarks();
            totalMin += r.getMinMarks();
            totalTheory += r.getTheoryMarks();
            totalInternal += r.getInternalPracticalMarks();
            totalScored += subjectTotal;

            if ("FAIL".equalsIgnoreCase(r.getRemarks())) {
                hasFail = true;
            }

            html.append("<tr>")
                .append("<td>").append(r.getSubjectCode()).append("</td>")
                .append("<td style='text-align: left;'>").append(r.getSubjectName()).append("</td>")
                .append("<td>").append(r.getMaxMarks()).append("</td>")
                .append("<td>").append(r.getMinMarks()).append("</td>")
                .append("<td>").append(r.getTheoryMarks()).append("</td>")
                .append("<td>").append(r.getInternalPracticalMarks()).append("</td>")
                .append("<td>").append(subjectTotal).append("</td>")
                .append("<td>").append(r.getRemarks()).append("</td>")
                .append("</tr>");
        }

        // Add a total summary row
        html.append("<tr style='font-weight:bold; background:#f0f0f0;'>")
        	.append("<td></td>")
            .append("<td>Total</td>")
            .append("<td>").append(totalMax).append("</td>")
            .append("<td>").append(totalMin).append("</td>")
            .append("<td>").append(totalTheory).append("</td>")
            .append("<td>").append(totalInternal).append("</td>")
            .append("<td>").append(totalScored).append("</td>")
            .append("<td>").append(hasFail ? "FAIL" : "PASS").append("</td>")
            .append("</tr>");

        html.append("</table>");
        response.put("content", html.toString());
        return response;
    }

}
