classdef SalaryCalculator < EmployeeVisitor
    methods
        function visitFullTime(~, employee)
            salary = employee.salary;
            disp("Full-Time Employee " + employee.name + " Salary: " + salary);
        end
        function visitContract(~, employee)
            salary = employee.hourlyRate * employee.hoursWorked;
            disp("Contract Employee " + employee.name + " Salary: " + salary);
        end
    end
end
