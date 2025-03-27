package com.iimte_karnataka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IimteContactUs {
	// Default route to display the login page
    @GetMapping("/contact_us")
    public String showContactAsPage() {
        return "iimte_contact_us"; 
    }
}
