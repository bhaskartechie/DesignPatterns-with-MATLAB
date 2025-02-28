classdef TurnOffCommand < Command
    properties
        light
    end
    methods
        function obj = TurnOffCommand(light)
            obj.light = light;
        end
        function execute(obj)
            obj.light.turnOff();
        end
        function undo(obj)
            obj.light.turnOn();
        end
    end
end