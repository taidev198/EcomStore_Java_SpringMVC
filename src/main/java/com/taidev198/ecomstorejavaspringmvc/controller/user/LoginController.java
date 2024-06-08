package com.taidev198.ecomstorejavaspringmvc.controller.user;


import com.taidev198.ecomstorejavaspringmvc.entity.User;
import com.taidev198.ecomstorejavaspringmvc.service.admin.UserServiceImpl;
import com.taidev198.ecomstorejavaspringmvc.service.user.HomeServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

    @Autowired
    UserServiceImpl userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user/login");
        return modelAndView;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView doLogin(HttpServletRequest request, Model model) {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("doLogin");
        String username = request.getParameter("username");//getting from name of element in web page
        String password = request.getParameter("password");
        User user = userService.getUserByUsername(username);
        if (user !=null ) {
            if (user.getUsername().equals("admin") && user.getPassword().equals(password)) {
                modelAndView.setViewName("redirect:/admin");
            } else {
                modelAndView.setViewName("redirect:/trang-chu");
            }
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            session.setAttribute("user", user);
            modelAndView.addObject("username", username);

        }else
             modelAndView.setViewName("redirect:/login");
        return modelAndView;
    }
}
