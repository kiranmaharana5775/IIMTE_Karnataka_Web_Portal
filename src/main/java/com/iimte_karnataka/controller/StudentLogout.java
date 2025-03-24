package com.iimte_karnataka.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


import jakarta.servlet.http.HttpSession;

@Controller
public class StudentLogout {
	@GetMapping("/logout")
	public String handleLogout(HttpSession session) {
	    session.invalidate(); // Invalidate the session
	    return "redirect:/home"; // Redirect to the home page
	}
}
