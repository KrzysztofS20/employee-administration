package com.example.controller;

import com.example.model.Servives;
import com.example.model.Skills;
import com.example.service.ServivesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class Services {

    private final ServivesService servivesService;

    public Services(ServivesService servivesService) {
        this.servivesService = servivesService;
    }

    @GetMapping("/services")
    public String giveViewServices(Model model) {
        List<Servives> list = servivesService.listAll();
        model.addAttribute("servives", list);
        return "services";
    }

    @PostMapping("/addServives")
    public RedirectView addServives(@ModelAttribute Servives newServives) {
        servivesService.save(newServives);
        return new RedirectView("/services");
    }

    @PostMapping("/deleteServives/{id}")
    public RedirectView deleteServives(@PathVariable("id") Long id) {
        servivesService.delete(id);
        return new RedirectView("/services");
    }

    @PostMapping("/editServives/{id}")
    public RedirectView editServives(@ModelAttribute Servives servives, @PathVariable("id") Long id){
        servivesService.editServives(servives,id);
        return  new RedirectView("/services");
    }
}
