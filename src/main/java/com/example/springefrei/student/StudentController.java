package com.example.springefrei.student;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class StudentController {

    @Autowired
    StudentService service;

    @GetMapping("")
    public String welcomMessage(){
        System.out.println("im in index");
        return "index";
    }


    @GetMapping("/listStudents")public String listStudents(Model model){
        List<Student> students= service.listStudents();
        model.addAttribute("students", students);
        return "list-student";
    }

    @GetMapping("showAddForm")
    public String showAddForm(Model model){
        model.addAttribute("student", new Student());
        return "add-student";
    }

    @PostMapping("/saveStudent")
    public String saveStudent(@ModelAttribute Student student) {
        service.saveStudent(student);
        return "redirect:listStudents";
    }
}
