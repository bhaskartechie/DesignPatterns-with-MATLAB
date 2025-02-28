classdef Plane
    properties
        name
    end
    methods
        function obj = Plane(name)
            obj.name = name;
        end
        function sendMessage(obj, receiver, message)
            fprintf("%s sends message to %s: %s\n", obj.name, receiver.name, message);
        end
    end
end

