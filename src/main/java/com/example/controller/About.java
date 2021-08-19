package com.example.controller;

import com.example.model.Skills;
import com.example.model.User;
import com.example.service.SkillsService;
import com.example.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;


@Controller
public class About {


private final UserService userService;
private final SkillsService skillsService;

    public About(UserService userService, SkillsService skillsService) {
        this.userService = userService;
        this.skillsService = skillsService;
    }

    @GetMapping("/about")
    public String getViewAbout(Model model) {
        List<User> list = userService.listAll();
        model.addAttribute("user",list);

        List<Skills> listSkills = skillsService.listAll();
        model.addAttribute("skill",listSkills);
        return "about";
    }
}
