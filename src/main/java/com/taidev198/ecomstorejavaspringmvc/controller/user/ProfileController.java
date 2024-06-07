package com.taidev198.ecomstorejavaspringmvc.controller.user;


import com.taidev198.ecomstorejavaspringmvc.entity.User;
import com.taidev198.ecomstorejavaspringmvc.entity.UserMapper;
import com.taidev198.ecomstorejavaspringmvc.service.admin.UserServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
public class ProfileController {

    ModelAndView modelAndView = new ModelAndView();

    @Autowired
    UserServiceImpl userService;

    public ModelAndView viewProfile(HttpServletRequest request){
       Map<String, Object> userMap =  modelAndView.getModel();
        modelAndView.setViewName("user/profile");
        return modelAndView;
    }

}
