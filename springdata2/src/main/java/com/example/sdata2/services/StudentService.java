package com.example.sdata2.services;

import com.example.sdata2.domain.Student;

import java.util.List;

public interface StudentService {
  Student save(Student student);
  List<Student> findAll();
  List<Student> findStudentByName(String name);
  List<Student> findStudentsWithNoCards();
}
