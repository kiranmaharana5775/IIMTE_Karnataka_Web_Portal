package com.iimte_karnataka.entity;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Data;
import jakarta.persistence.Id;

@Entity
@Table(name = "studentdetails")
@Data
public class Student {
	
	@Id
	private String registrationno;
	private String username;
	private String userpassword;
	private byte[] image;
	private String course;
	private String specialization;
	private String gender;
	private Date dob;
	private String fathername;
	private String mothername;
	private Date joiningdate;
	private Date passoutdate;
}
