package com.taidev198.ecomstorejavaspringmvc.controller.user;


import com.taidev198.ecomstorejavaspringmvc.entity.User;
import com.taidev198.ecomstorejavaspringmvc.service.admin.UserServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {

    @Autowired
    UserServiceImpl userService;
    ModelAndView modelAndView = new ModelAndView();
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView register() {
        modelAndView.setViewName("user/register");
        return modelAndView;
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView doRegister(HttpServletRequest request, Model model) {//the function has overload function
        System.out.println("doRegister");
        String username = request.getParameter("username");//getting from name of element in web page
        String email = request.getParameter("email");
        User user = userService.getUserByUsername(username);
        User user1 = userService.getUserByEmail(email);
        if (user !=null || user1 != null ) {
            System.out.println("user exists");
        }else {
            user = new User();
            user.setUsername(request.getParameter("username"));
            user.setEmail(request.getParameter("email"));
            user.setPassword(request.getParameter("password"));
            user.setNumber(request.getParameter("number"));
            user.setAddress(request.getParameter("address"));
            user.setFullname(request.getParameter("fullname"));
            userService.createUser(user);
            modelAndView.setViewName("redirect:/login");
        }
        return modelAndView;
    }
}
