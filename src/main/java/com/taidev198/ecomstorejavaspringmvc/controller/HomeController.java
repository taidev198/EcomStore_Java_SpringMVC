package com.taidev198.ecomstorejavaspringmvc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping(value = {"/","/trang-chu"}, method = RequestMethod.GET)
    public ModelAndView home(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user/index");
        return modelAndView;
    }

    @RequestMapping(value = {"/product"}, method = RequestMethod.GET)
    public ModelAndView product(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user/product");
        return modelAndView;
    }


}
