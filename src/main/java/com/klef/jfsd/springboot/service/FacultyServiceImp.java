package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.FacultyRepository;

import java.util.List;

@Service
public class FacultyServiceImp implements FacultyService {

    @Autowired
    private FacultyRepository facultyRepository;

    @Override
    public String facultyRegistration(Faculty faculty) {
        facultyRepository.save(faculty);
        return "Faculty registered successfully";
    }

	@Override
	public Faculty checkFacultyLogin(String username, String pwd) {
		// TODO Auto-generated method stub
        return facultyRepository.checkFacultyLogin(username, pwd);

	}

	
  
		
	

  
}
