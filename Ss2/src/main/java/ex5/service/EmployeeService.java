package ex5.service;

import ex5.model.Employee;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class EmployeeService {

    private List<Employee> employees = new ArrayList<>();

    public EmployeeService() throws Exception {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        employees.add(new Employee("NV001","Nguyễn Thị Lan","Kế toán",15000000,sdf.parse("2020-03-01"),"Đang làm"));
        employees.add(new Employee("NV002","Trần Văn Hùng","Kỹ thuật",25000000,sdf.parse("2019-07-15"),"Đang làm"));
        employees.add(new Employee("NV003","Lê Minh Đức","Kinh doanh",18500000,sdf.parse("2021-11-20"),"Nghỉ phép"));
        employees.add(new Employee("NV004","Phạm Thu Hương","Kỹ thuật",22000000,sdf.parse("2022-01-05"),"Đang làm"));
        employees.add(new Employee("NV005","Hoàng Văn Nam","Kế toán",12000000,sdf.parse("2023-06-10"),"Thử việc"));
    }

    public List<Employee> getAll() {
        return employees;
    }

    public Employee findByCode(String code) {
        return employees.stream()
                .filter(e -> e.getCode().equals(code))
                .findFirst()
                .orElseThrow(() -> new RuntimeException("NV " + code + " không tồn tại"));
    }

    public double totalTechSalary() {
        return employees.stream()
                .filter(e -> e.getDepartment().equals("Kỹ thuật"))
                .mapToDouble(Employee::getSalary)
                .sum();
    }
}
