package com.example.springefrei.student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {

    @Autowired
    StudentRepository repo;
    public List<Student> listStudents() {
        Iterable<Student> students= repo.findAll();
        System.out.println(students);
        return  (List<Student>) students;
    }

    public void saveStudent(Student student) {
        repo.save(student);
    }
}
