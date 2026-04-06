package ex5.controller;

import ex5.model.Employee;
import ex5.service.EmployeeService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService service;

    @GetMapping("/employees")
    public String list(HttpSession session, Model model) {

        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        model.addAttribute("employees", service.getAll());
        model.addAttribute("totalTechSalary", service.totalTechSalary());

        return "employees";
    }

    @GetMapping("/employees/{code}")
    public String detail(@PathVariable String code,
                         HttpSession session,
                         Model model) {

        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        Employee emp = service.findByCode(code);
        model.addAttribute("emp", emp);

        return "employee-detail";
    }
}
