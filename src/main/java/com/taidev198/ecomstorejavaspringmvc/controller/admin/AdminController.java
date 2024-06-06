package com.taidev198.ecomstorejavaspringmvc.controller.admin;

import com.taidev198.ecomstorejavaspringmvc.entity.ItemCheckBox;
import com.taidev198.ecomstorejavaspringmvc.service.admin.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

    @Autowired
    UserServiceImpl userService;

    @RequestMapping(value = "/admin")
    public String index() {
        return "admin/index_body";
    }

    @RequestMapping(value = "/admin-profile-details")
    public String profileDetailsAdmin(){
        return "admin/profile_details_admin";
    }

    @RequestMapping(value = "/admin-list-users")
    public ModelAndView listUsers(Model model){
        ModelAndView modelAndView = new ModelAndView();
        model.addAttribute("ItemCheckBox", new ItemCheckBox());
        modelAndView.addObject("users", userService.getAllUsers());
        modelAndView.setViewName("admin/show_users_admin");
        return modelAndView;
    }

    @RequestMapping(value = "/admin-delete-all")
    public ModelAndView deleteAllUsers(@ModelAttribute("ItemCheckBox") ItemCheckBox itemCheckBox){
        ModelAndView modelAndView = new ModelAndView();
        for (int i = 0; i < itemCheckBox.getListUserId().length; i++) {
            System.out.println(itemCheckBox.getListUserId()[i] + "value");
        }
        modelAndView.setViewName("admin/show_users_admin");
        return modelAndView;
    }
}
