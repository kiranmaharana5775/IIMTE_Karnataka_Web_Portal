package com.iimte_karnataka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Home {

	 // Default route to display the login page
    @GetMapping("/")
    public String showLoginPage() {
    	System.out.println("Called / ");
        return "index"; // Corresponds to login.jsp
    }
    
    // Default route to display the login page
    @GetMapping("/home")
    public String showLoginPageThroughHome() {
    	System.out.println("Called /home ");
        return "index"; // Corresponds to login.jsp
    }
    
    @GetMapping("/student_login")
    public String studentLogin() {
        return "student_login"; // This will look for student_login.jsp inside /WEB-INF/views/
    }
}
