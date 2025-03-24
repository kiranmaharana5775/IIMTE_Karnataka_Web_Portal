package com.iimte_karnataka.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iimte_karnataka.entity.Result;
import com.iimte_karnataka.repository.ResultRepository;

@Repository
public class ResultCURD {
	@Autowired
	private ResultRepository resultRepo;
	
	public List<Result> getMarksByRegistrationNoAndSemester(String registrationNo, Integer semester) {
	    return resultRepo.findByRegistrationNoAndSemester(registrationNo, semester);
	}
}
