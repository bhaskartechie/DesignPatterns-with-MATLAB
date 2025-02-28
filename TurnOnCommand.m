classdef TurnOnCommand < Command
    properties
        light
    end
    methods
        function obj = TurnOnCommand(light)
            obj.light = light;
        end
        function execute(obj)
            obj.light.turnOn();
        end
        function undo(obj)
            obj.light.turnOff();
        end
    end
end