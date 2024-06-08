package com.taidev198.ecomstorejavaspringmvc.controller.user;


import com.taidev198.ecomstorejavaspringmvc.entity.Role;
import com.taidev198.ecomstorejavaspringmvc.entity.Status;
import com.taidev198.ecomstorejavaspringmvc.entity.User;
import com.taidev198.ecomstorejavaspringmvc.service.admin.UserServiceImpl;
import com.taidev198.ecomstorejavaspringmvc.service.user.CategoryServiceImpl;
import com.taidev198.ecomstorejavaspringmvc.service.user.HomeServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private HomeServiceImpl homeService;

    @Autowired
    private UserServiceImpl userService;

    @Autowired
    private CategoryServiceImpl categoryService;

    @RequestMapping(value = {"/","/trang-chu"}, method = RequestMethod.GET)
    public ModelAndView home(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user/home_body");
        modelAndView.addObject("slides", homeService.getSlides());
        modelAndView.addObject("categories", categoryService.getAllCategories());
        return modelAndView;
    }

    @RequestMapping(value = {"/category/{category}"}, method = RequestMethod.GET)
    public ModelAndView goOnCategory(@ModelAttribute String category){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user/category_details_user");

        return modelAndView;
    }

    @RequestMapping(value = {"/product"}, method = RequestMethod.GET)
    public ModelAndView product(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user/product_body");
        return modelAndView;
    }

    //show profile information
    @RequestMapping(value = {"/user-profile-details"})
    public ModelAndView doProfile(HttpServletRequest request, Model model){
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession();
        User userSession = (User) session.getAttribute("user");
        modelAndView.addObject("username", userSession.getUsername());
        User user = userService.getUserByUsername(userSession.getUsername());
        System.out.println(user.getUsername()+user.getNumber());
        modelAndView.addObject("user", user);
        //for init state
        if (model.getAttribute("message") == null && model.getAttribute("alert") == null){
            model.addAttribute("alert", "hidden");
            System.out.println("null");
        }
        modelAndView.setViewName("user/profile_details_user");
        return modelAndView;
    }

    //update profile
    @RequestMapping(value = {"/user-update-profile"}, method = RequestMethod.POST)
    public ModelAndView updateProfile(HttpServletRequest request,
                                      @ModelAttribute("user") User user, Model model){
        ModelAndView modelAndView = new ModelAndView();
//        User oldUser = (User) request.getSession().getAttribute("user");
//        String oldUsername = (String) request.getSession().getAttribute("username");
//        String oldPassword = (String) request.getSession().getAttribute("password");
//        String oldEmail = (String) request.getSession().getAttribute("email");
        User user1 = userService.getUserByUsername(user.getUsername());
        if( user1 != null ){
            System.out.println(user.getUsername() + " has exist");
            modelAndView.addObject("alert", "true");
            modelAndView.setViewName("user/profile_details_user");
            modelAndView.addObject("alert", "");
            modelAndView.addObject("message", user.getUsername() + " has exist");
            return modelAndView;
        }
        user1 = userService.getUserByEmail(user.getEmail());
        if(user1 != null){
            modelAndView.addObject("alert", "");
            modelAndView.addObject("message", user.getEmail() + " has exist");
            System.out.println(user.getUsername() + " has exist");
            modelAndView.setViewName("user/profile_details_user");
            return modelAndView;
        } else {
            userService.updateUser(user);
            modelAndView.setViewName("redirect:/user-profile-details");
        }
        modelAndView.addObject("user", user);
        request.getSession().removeAttribute("user");
        request.getSession().setAttribute("user", user);

        return modelAndView;
    }


}
