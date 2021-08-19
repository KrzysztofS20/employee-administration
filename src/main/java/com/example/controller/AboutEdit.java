package com.example.controller;

import com.example.model.Skills;
import com.example.model.User;
import com.example.service.SkillsService;
import com.example.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import java.io.IOException;
import java.util.List;

@Controller
public class AboutEdit {

    private final SkillsService skillsService;
    private final UserService userService;


    public AboutEdit(SkillsService skillsService, UserService userService) {
        this.skillsService = skillsService;
        this.userService = userService;
    }

    @GetMapping("/aboutEdit")
    public String index(Model model) {
        List<Skills> skillsList = skillsService.listAll();
        model.addAttribute("skills", skillsList);

        List<User> userList = userService.listAll();
        model.addAttribute("user", userList);
        return "aboutEdit";
    }

    @PostMapping("/addSkill")
    public RedirectView addSkill(@ModelAttribute Skills newSkill) {
        skillsService.save(newSkill);
        return new RedirectView("/aboutEdit");
    }

    @PostMapping("/deleteSkill/{id}")
    public RedirectView deleteSkill(@PathVariable("id") Long id) {
        skillsService.delete(id);
        return new RedirectView("/aboutEdit");
    }

    @PostMapping("/editSkill/{id}")
    public RedirectView editSkill(@ModelAttribute Skills skill, @PathVariable("id") Long id) {
        skillsService.editSkill(skill, id);
        return new RedirectView("/aboutEdit");
    }

    @PostMapping("/editUser/{id}")
    public RedirectView editSkill(@ModelAttribute User user, @PathVariable("id") Long id) {
        userService.editUser(user, id);
        return new RedirectView("/aboutEdit");
    }



}
