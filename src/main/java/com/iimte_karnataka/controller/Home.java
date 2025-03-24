package com.iimte_karnataka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Home {

	 // Default route to display the login page
    @GetMapping("/")
    public String showLoginPage() {
        return "index"; // Corresponds to login.jsp
    }
    
    @GetMapping("/student_login")
    public String studentLogin() {
        return "student_login"; // This will look for student_login.jsp inside /WEB-INF/views/
    }
}
