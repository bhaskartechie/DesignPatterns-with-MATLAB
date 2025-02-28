classdef FullTimeEmployee < handle
    properties
        name, salary
    end
    methods
        function obj = FullTimeEmployee(name, salary)
            obj.name = name;
            obj.salary = salary;
        end
        function accept(obj, visitor)
            visitor.visitFullTime(obj);
        end
    end
end