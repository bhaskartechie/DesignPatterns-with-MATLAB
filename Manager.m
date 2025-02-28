classdef Manager
    properties
        name
        position
        subordinates
    end
    methods
        function obj = Manager(name, position)
            obj.name = name;
            obj.position = position;
            obj.subordinates = {}; % Manages a list of employees
        end
        function addSubordinate(obj, employee)
            obj.subordinates{end+1} = employee;
        end
        function displayInfo(obj)
            fprintf("Manager: %s, Position: %s\n", obj.name, obj.position);
            fprintf("Subordinates:\n");
            for i = 1:length(obj.subordinates)
                obj.subordinates{i}.displayInfo();
            end
        end
    end
end
