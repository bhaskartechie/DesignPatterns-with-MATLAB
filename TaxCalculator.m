classdef TaxCalculator < EmployeeVisitor
    methods
        function visitFullTime(~, employee)
            tax = employee.salary * 0.2; % 20% tax for full-time
            disp("Full-Time Employee " + employee.name + " Tax: " + tax);
        end
        function visitContract(~, employee)
            tax = employee.hourlyRate * employee.hoursWorked * 0.1; % 10% tax for contract
            disp("Contract Employee " + employee.name + " Tax: " + tax);
        end
    end
end
