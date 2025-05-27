package com.iimte_karnataka.controller;

import org.springframework.ui.Model;

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
	
	@GetMapping("/student_result")
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
    }

}
