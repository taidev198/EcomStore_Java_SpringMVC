package com.taidev198.ecomstorejavaspringmvc.controller.user;


import com.taidev198.ecomstorejavaspringmvc.entity.User;
import com.taidev198.ecomstorejavaspringmvc.service.admin.UserServiceImpl;
import com.taidev198.ecomstorejavaspringmvc.service.user.HomeServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

    @Autowired
    UserServiceImpl userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "user/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String doLogin(HttpServletRequest request, Model model) {

        System.out.println("doLogin");
        String username = request.getParameter("username");//getting from name of element in web page
        String password = request.getParameter("password");
        User user = userService.getUserByUsername(username);
        if (user !=null ) {
            if (user.getUsername().equals("admin") && user.getPassword().equals(password)) {
                return "admin/index_body";
            }
            return "user/home_body";
        }

        return "user/login";
    }
}
