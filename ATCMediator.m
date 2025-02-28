classdef ATCMediator < AirTrafficControl
    properties
        planes = {} % List of registered planes
    end
    methods
        function registerPlane(obj, plane)
            obj.planes{end+1} = plane;
            plane.setMediator(obj); % Assign mediator to plane
        end
        function sendMessage(obj, sender, message)
            fprintf("%s sends: %s\n", sender.name, message);
            for i = 1:length(obj.planes)
                if obj.planes{i} ~= sender
                    obj.planes{i}.receiveMessage(sender, message);
                end
            end
        end
    end
end
