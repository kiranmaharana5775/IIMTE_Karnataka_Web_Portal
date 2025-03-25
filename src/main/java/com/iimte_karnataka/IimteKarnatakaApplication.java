package com.iimte_karnataka;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class IimteKarnatakaApplication extends SpringBootServletInitializer { // Extended SpringBootServletInitializer
    
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(IimteKarnatakaApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(IimteKarnatakaApplication.class, args);
    }
}