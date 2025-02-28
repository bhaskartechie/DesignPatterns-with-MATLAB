classdef (Abstract) EmployeeVisitor
    methods (Abstract)
        visitFullTime(obj, employee)
        visitContract(obj, employee)
    end
end
