package com.example.rest;

import com.example.model.Skills;
import com.example.repository.SkillRepository;

import com.example.service.SkillsService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RequestMapping("/")
@RestController
public class SkillApi {


    private SkillsService skillsService;

    public SkillApi(SkillsService skillsService) {
        this.skillsService = skillsService;
    }

    @GetMapping("/skills")
    public List<Skills> getSkills() {
        return skillsService.listAll();
    }

    @GetMapping("/skills/{id}")
    public ResponseEntity<Skills> getSkillById(@PathVariable Long id) {
        Optional<Skills> wantedSkill = getSkills().stream().filter(skill -> skill.getId() == id).findFirst();
        if (wantedSkill.isPresent()) {
            return new ResponseEntity<>(wantedSkill.get(), HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    @PostMapping("/skill")
    public void addSkill(@RequestBody Skills skill) {
        skillsService.save(skill);
    }

    @PutMapping("/skill/{id}")
    public ResponseEntity<Skills> updateSkill(@RequestBody Skills skill, @PathVariable Long id) {
        Optional<Skills> oldSkill = getSkills().stream().filter(oldskill -> oldskill.getId() == id).findFirst();
        if (oldSkill.isPresent()) {
            skillsService.save(skill);
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }


    @DeleteMapping("/{id}")
    public ResponseEntity<Skills> removeSkill(@PathVariable Long id) {
        Optional<Skills> first = skillsService.listAll().stream().filter(skill -> skill.getId() == id).findFirst();

        if (first.isPresent()) {
            skillsService.delete(id);
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
}


