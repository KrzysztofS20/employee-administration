package com.example.repository;

import com.example.model.Skills;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface SkillRepository extends JpaRepository<Skills, Long> {

}
