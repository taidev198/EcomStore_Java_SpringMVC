package com.taidev198.ecomstorejavaspringmvc.controller;


import com.taidev198.ecomstorejavaspringmvc.dao.SlideDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @Autowired
    SlideDAO slideDAO;

    @RequestMapping(value = {"/","/trang-chu"}, method = RequestMethod.GET)
    public ModelAndView home(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user/index");
        modelAndView.addObject("slides", slideDAO.getSlides());
        return modelAndView;
    }

    @RequestMapping(value = {"/product"}, method = RequestMethod.GET)
    public ModelAndView product(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user/product");
        return modelAndView;
    }


}
