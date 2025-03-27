package com.iimte_karnataka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IimteAboutUs {
	
	// Default route to display the login page
    @GetMapping("/about_us")
    public String showAboutAsPage() {
        return "iimte_about_us"; 
    }
}
