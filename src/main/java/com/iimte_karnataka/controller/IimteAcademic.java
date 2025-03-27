package com.iimte_karnataka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IimteAcademic {
	// Default route to display the login page
    @GetMapping("/academic")
    public String showAboutAsPage() {
        return "iimte_academic"; 
    }
}
