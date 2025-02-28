classdef PlaneUsingMediator < handle
    properties
        name
        mediator
    end
    methods
        function obj = PlaneUsingMediator(name)
            obj.name = name;
        end
        function setMediator(obj, mediator)
            obj.mediator = mediator;
        end
        function sendMessage(obj, message)
            obj.mediator.sendMessage(obj, message);
        end
        function receiveMessage(obj, sender, message)
            fprintf("%s received from %s: %s\n", obj.name, sender.name, message);
        end
    end
end
