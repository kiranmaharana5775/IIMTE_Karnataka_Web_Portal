package com.iimte_karnataka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IimteProgrammes {
	
	// Default route to display the login page
    @GetMapping("/programmes")
    public String showProgrammePage() {
        return "iimte_programmes"; 
    }
}
