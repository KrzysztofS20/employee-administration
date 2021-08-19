package com.example.service;

import com.example.model.Servives;
import com.example.model.Skills;
import com.example.repository.ServicesRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServivesService {

    private final ServicesRepository servicesRepository;

    public ServivesService(ServicesRepository servicesRepository) {
        this.servicesRepository = servicesRepository;
    }

    public List<Servives> listAll() {
        return servicesRepository.findAll();
    }

    public void save(Servives servives) {
        servicesRepository.save(servives);
    }

    public Servives getServivesById(Long id) {
        return servicesRepository.findById(id).get();
    }

    public void delete(Long id) {
        servicesRepository.deleteById(id);
    }

    public void editServives(Servives servives, Long id) {
        Servives editServives = new Servives(
                id,
                servives.getTitle(),
                servives.getDescription(),
                servives.getSymbol()
        );
        servicesRepository.save(editServives);
    }
}
