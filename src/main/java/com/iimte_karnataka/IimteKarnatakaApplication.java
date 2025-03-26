package com.iimte_karnataka;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.SpringServletContainerInitializer;

@SpringBootApplication
public class IimteKarnatakaApplication extends SpringServletContainerInitializer{

	public static void main(String[] args) {
		SpringApplication.run(IimteKarnatakaApplication.class, args);
	}

}
