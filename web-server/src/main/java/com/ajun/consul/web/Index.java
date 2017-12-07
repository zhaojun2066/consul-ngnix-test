package com.ajun.consul.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by jufeng on 17-12-7.
 */
@RestController
public class Index {

    @RequestMapping("/")
    public String index(){
        return "Hello word";
    }
}
