package com.iimte_karnataka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OpenCourseProgrgrams {
	
	@GetMapping("/under_graduate_course")
    public String showUnderGraduateCoursesPage() {
        return "under_graduates_courses"; 
    }
	
	@GetMapping("/post_graduate_course")
    public String showPostGraduateCoursesPage() {
        return "post_graduates_courses"; 
    }
	
	@GetMapping("/diploma_engineering_course")
    public String showDiplomaEngineeringCoursesPage() {
        return "diploma_engineering_courses"; 
    }
	
	@GetMapping("/advance_diploma_course")
    public String showAdvanceDiplomaCoursesPage() {
        return "advance_diploma_courses"; 
    }
	
	@GetMapping("/post_graduate_diploma_course")
    public String showPostGraduateDiplomaCoursesPage() {
        return "post_graduates_diploma_courses"; 
    }
	
	@GetMapping("/one_year_diploma_course")
    public String showOneYearDiplomaCoursesPage() {
        return "one_year_diploma_courses"; 
    }
	
	@GetMapping("/certificate_program_course")
    public String showCertificateProgramCoursesPage() {
        return "certificate_program_courses"; 
    }
	
	@GetMapping("/humanity_course")
    public String showHumanityCoursesPage() {
        return "humanity_courses"; 
    }
}
