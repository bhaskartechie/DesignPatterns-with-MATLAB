classdef Employee
    properties
        name
        position
    end
    methods
        function obj = Employee(name, position)
            obj.name = name;
            obj.position = position;
        end
        function displayInfo(obj)
            fprintf("Employee: %s, Position: %s\n", obj.name, obj.position);
        end
    end
end