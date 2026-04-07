package ra.edu.ss3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ra.edu.ss3.model.Employee;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EmployeeController {
    @GetMapping("/employees")
    public String getEmployees(Model model) {
        List<Employee> list= new ArrayList<>();
        list.add(new Employee(1, "Tran Van D", "Đào tạo", 19000));
        list.add(new Employee(2, "Nguyen Thi E", "Đào tạo", 9000));
        list.add(new Employee(3, "Le Van G", "Đào tạo", 13000));

        model.addAttribute("employees", list);

        return "employee-list";
    }
}
