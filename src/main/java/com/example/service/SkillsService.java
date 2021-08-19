package com.example.service;

import com.example.model.Skills;
import com.example.repository.SkillRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SkillsService {

    private SkillRepository skillRepository;

    public SkillsService(SkillRepository skillRepository) {
        this.skillRepository = skillRepository;
    }

    public List<Skills> listAll(){
        return skillRepository.findAll();
    }

    public void save(Skills skill){
        skillRepository.save(skill);
    }
    public Skills getSkillById(Long id){
        return skillRepository.findById(id).get();
    }

    public void delete(Long id) {
        skillRepository.deleteById(id);
    }

    public void editSkill(Skills skill, Long id) {
        Skills editSkill= new Skills(
                id,
                skill.getName(),
                skill.getValue()
        );
        skillRepository.save(editSkill);
    }
}
