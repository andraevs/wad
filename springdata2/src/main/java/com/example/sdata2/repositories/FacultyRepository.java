package com.example.sdata2.repositories;

import com.example.sdata2.domain.Faculty;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface FacultyRepository extends CrudRepository<Faculty,Long> {
  List<Faculty> findAll();
  List<Faculty> findFacultiesByName(String name);
}
