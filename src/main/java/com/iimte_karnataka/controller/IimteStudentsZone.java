package com.iimte_karnataka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IimteStudentsZone {
	// Default route to display the login page
    @GetMapping("/students_zone")
    public String showAboutAsPage() {
        return "iimte_students_zone"; 
    }
}
