classdef ContractEmployee < handle
    properties
        name, hourlyRate, hoursWorked
    end
    methods
        function obj = ContractEmployee(name, hourlyRate, hoursWorked)
            obj.name = name;
            obj.hourlyRate = hourlyRate;
            obj.hoursWorked = hoursWorked;
        end
        function accept(obj, visitor)
            visitor.visitContract(obj);
        end
    end
end