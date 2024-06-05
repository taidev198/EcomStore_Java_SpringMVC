package com.taidev198.ecomstorejavaspringmvc.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ResetPasswordController {

    @RequestMapping(value = "/reset-password")
    public String resetPassword() {
        return "user/reset_password";
    }
}
