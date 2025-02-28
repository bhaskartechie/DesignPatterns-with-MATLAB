classdef NameCollection
    properties
        names
    end
    methods
        function obj = NameCollection()
            obj.names = {"Alice", "Bob", "Charlie", "David"};
        end
        function printNames(obj)
            for i = 1:length(obj.names)
                fprintf("Name: %s\n", obj.names{i});
            end
        end
    end
end