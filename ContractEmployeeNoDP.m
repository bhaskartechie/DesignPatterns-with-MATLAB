classdef ContractEmployeeNoDP
    properties
        name, hourlyRate, hoursWorked
    end
    methods
        function obj = ContractEmployeeNoDP(name, hourlyRate, hoursWorked)
            obj.name = name;
            obj.hourlyRate = hourlyRate;
            obj.hoursWorked = hoursWorked;
        end
        function salary = calculateSalary(obj)
            salary = obj.hourlyRate * obj.hoursWorked;
        end
    end
end