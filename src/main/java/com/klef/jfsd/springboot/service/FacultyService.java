package com.klef.jfsd.springboot.service;

import java.util.List;
import com.klef.jfsd.springboot.model.Faculty;

public interface FacultyService {

    String facultyRegistration(Faculty faculty);

	Faculty checkFacultyLogin(String fusername, String fpwd);


	

}
