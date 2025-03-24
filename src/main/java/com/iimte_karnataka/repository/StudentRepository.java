package com.iimte_karnataka.repository;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

import com.iimte_karnataka.entity.Student;

public interface StudentRepository extends JpaRepository<Student, String>{
	
	public Optional<Student> findByRegistrationno(String regdNo);
}
