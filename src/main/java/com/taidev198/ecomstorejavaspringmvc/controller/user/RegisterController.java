package com.taidev198.ecomstorejavaspringmvc.controller.user;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {

    @RequestMapping(value = "/register")
    public String register() {
        return "user/register";
    }
}
