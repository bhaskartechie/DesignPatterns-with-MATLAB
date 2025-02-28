classdef FullTimeEmployeeNoDP
    properties
        name, salary
    end
    methods
        function obj = FullTimeEmployeeNoDP(name, salary)
            obj.name = name;
            obj.salary = salary;
        end
        function salary = calculateSalary(obj)
            salary = obj.salary; % Fixed salary for full-time employees
        end
    end
end
