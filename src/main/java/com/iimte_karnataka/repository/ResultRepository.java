package com.iimte_karnataka.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.iimte_karnataka.entity.Result;

public interface ResultRepository extends JpaRepository<Result, Integer>{
	
	List<Result> findByRegistrationNoAndSemester(String registrationNo, Integer semester);

}
