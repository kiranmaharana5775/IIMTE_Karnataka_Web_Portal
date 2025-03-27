package com.iimte_karnataka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IimteApply {
	// Default route to display the login page
    @GetMapping("/apply")
    public String showApplyPage() {
        return "iimte_apply"; 
    }
}
