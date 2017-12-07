package com.ajun.consul.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * Created by jufeng on 17-12-7.
 */
@Configuration
@ComponentScan
@EnableAutoConfiguration
public class ConsulWeb {

    public static void main(String [] args){
        SpringApplication.run(ConsulWeb.class, args);
    }

}
