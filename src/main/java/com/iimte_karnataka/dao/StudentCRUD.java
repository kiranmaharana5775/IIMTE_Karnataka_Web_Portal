package com.iimte_karnataka.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.Optional;
import com.iimte_karnataka.repository.StudentRepository;
import com.iimte_karnataka.entity.Student;

@Repository
public class StudentCRUD {
	@Autowired
	private StudentRepository studentRepo;
	
	public Optional<Student> getRegistrationNumber(String regdno) {
		return studentRepo.findByRegistrationno(regdno);
	}
}
