package com.example.CanteenService.Controller;

import com.example.CanteenService.Service.UserService;
import com.example.CanteenService.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public String signupPost(@ModelAttribute("user") User user, Model model) {

        if(userService.checkUserExists(user.getUsername(), user.getEmail()))  {

//            if (userService.checkEmailExists(user.getEmail())) {
//                model.addAttribute("emailExists", true);
//            }

            if (userService.checkUserExists(user.getUsername(),user.getEmail())) {
                model.addAttribute("userExists", true);
            }

            return "signup";
        } else {

            userService.createUser(user);

            return "redirect:/";
        }
    }
}
