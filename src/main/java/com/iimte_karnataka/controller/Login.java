package com.iimte_karnataka.controller;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.iimte_karnataka.entity.Student;
import com.iimte_karnataka.dao.StudentCRUD;

import jakarta.servlet.http.HttpSession;

@Controller
public class Login {

	@Autowired
	private StudentCRUD studentCRUD;
	
	// Handles the login POST request
	@PostMapping("/student_login")
	public String handleLogin(
	        @RequestParam("username") String username,
	        @RequestParam("password") String password,
	        Model model, 
	        HttpSession session) {  // Removed @ModelAttribute Student student

	    Optional<Student> details = studentCRUD.getRegistrationNumber(username);

	    if (details.isPresent()) {
	        if (details.get().getUserpassword().equals(password)) {
	            
	            session.setAttribute("studentDetails", details.get());
	            return "redirect:/student_dashboard";
	        } else {
	            model.addAttribute("errorMessage", "Invalid password. Please try again.");
	            return "student_login"; 
	        }
	    } else {
	        model.addAttribute("errorMessage", "Invalid username. Please try again.");
	        return "student_login"; 
	    }
	}

    
 // Handles the dashboard page after successful login
    @GetMapping("/student_dashboard")
    public String showDashboard(HttpSession session) {
        // Check if the user is logged in
        if (session.getAttribute("studentDetails") == null) {
            return "redirect:/home"; // Redirect to login page if not logged in
        }
        return "student_dashboard"; // Corresponds to dashboard.jsp
    }
}
