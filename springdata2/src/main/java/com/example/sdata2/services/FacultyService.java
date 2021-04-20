package com.example.sdata2.services;

import com.example.sdata2.domain.Faculty;

import java.util.List;

public interface FacultyService {
  Faculty save(Faculty f);
  List<Faculty> findAll();
  List<Faculty> findFacultiesByName(String name);
}
