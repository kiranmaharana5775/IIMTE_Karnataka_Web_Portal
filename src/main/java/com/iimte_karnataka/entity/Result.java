package com.iimte_karnataka.entity;

import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "results")
@Data
public class Result {
	
		@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Integer id; 
		
	    @Column(name = "registrationno")
	    private String registrationNo;

	    @Column(name = "semester")
	    private Integer semester; 

	    @Column(name = "subjectcode")
	    private String subjectCode;

	    @Column(name = "subjectname")
	    private String subjectName;

	    @Column(name = "maxmarks")
	    private Integer maxMarks;

	    @Column(name = "minmarks")
	    private Integer minMarks;
	    
	    @Column(name = "theory")
	    private Integer theoryMarks;

	    @Column(name = "internalpracticalmarks")
	    private Integer internalPracticalMarks;

	    @Column(name = "totalmarks")
	    private Integer totalMarks;

	    @Column(name = "remarks")
	    private String remarks;
	    
	    @Column(name = "sessiondate")
	    private String sessionDate;
	    
	    @Column(name = "issuedate")
	    private Date issueDate;

}
