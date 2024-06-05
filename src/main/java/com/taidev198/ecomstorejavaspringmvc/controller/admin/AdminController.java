package com.taidev198.ecomstorejavaspringmvc.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {


    @RequestMapping(value = "/admin")
    public String index() {
        return "admin/index_body";
    }

    @RequestMapping(value = "admin-profile-details")
    public String profileDetailsAdmin(){
        return "admin/profile_details_admin";
    }
}
