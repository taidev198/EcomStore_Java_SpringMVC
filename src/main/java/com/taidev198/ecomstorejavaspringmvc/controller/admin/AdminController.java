package com.taidev198.ecomstorejavaspringmvc.controller.admin;

import com.taidev198.ecomstorejavaspringmvc.entity.ItemCheckBox;
import com.taidev198.ecomstorejavaspringmvc.entity.Role;
import com.taidev198.ecomstorejavaspringmvc.entity.Status;
import com.taidev198.ecomstorejavaspringmvc.entity.User;
import com.taidev198.ecomstorejavaspringmvc.service.admin.RoleServiceImpl;
import com.taidev198.ecomstorejavaspringmvc.service.admin.StatusServiceImpl;
import com.taidev198.ecomstorejavaspringmvc.service.admin.UserServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    UserServiceImpl userService;

    @Autowired
    RoleServiceImpl roleService;

    @Autowired
    StatusServiceImpl statusService;

    @RequestMapping(value = {"/admin"})
    public String index() {
        return "admin/index_body";
    }

    @RequestMapping(value = {"/admin-profile-details", })
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
        modelAndView.addObject("alert", "");
        modelAndView.setViewName("admin/show_users_admin");
        return modelAndView;
    }

    @RequestMapping(value = "/admin-delete/{id}")
    public ModelAndView deleteOneUser(@ModelAttribute("id") int id){
        ModelAndView modelAndView = new ModelAndView();
        userService.deleteUser(id);
        System.out.println("deleteOneUsers: " + id);
        modelAndView.setViewName("redirect:/admin-list-users");
        return modelAndView;
    }

    //view profile details
    @RequestMapping(value = "/admin-edit/{id}")
    public ModelAndView editUser(@ModelAttribute("id") int id, Model model){
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("editUser: " + id);
        User user = userService.getUserById(id);
        List<Role> role = roleService.findAll();
        List<Status> status = statusService.getAllStatus();
        modelAndView.addObject("user", user);
        modelAndView.addObject("roles", role);
        modelAndView.addObject("status", status);
        //for init state
        if (model.getAttribute("message") == null && model.getAttribute("alert") == null){
            model.addAttribute("alert", "hidden");
            System.out.println("null");
        }
        modelAndView.setViewName("admin/profile_details_admin");
        return modelAndView;
    }

    //view profile details
    @RequestMapping(
            value = "/admin-update-user",
            method = RequestMethod.POST)
    public ModelAndView updateUser(HttpServletRequest request,
                                   @ModelAttribute("user") User user, Model model){
        ModelAndView modelAndView = new ModelAndView();
        User user1 = userService.getUserByUsername(user.getUsername());
        if(user1 != null){
            System.out.println(user.getUsername() + " has exist");
            modelAndView.addObject("alert", "true");
            modelAndView.setViewName("admin/profile_details_admin");
            modelAndView.addObject("alert", "");
            modelAndView.addObject("message", user.getUsername() + " has exist");
            return modelAndView;
        }
        user1 = userService.getUserByEmail(user.getEmail());
        if(user1 != null){
            modelAndView.addObject("alert", "");
            modelAndView.addObject("message", user.getEmail() + " has exist");
            System.out.println(user.getUsername() + " has exist");
            modelAndView.setViewName("admin/profile_details_admin");
            return modelAndView;
        } else {
            userService.updateUser(user);
            modelAndView.setViewName("redirect:/admin-list-users");
        }
        return modelAndView;
    }

}
