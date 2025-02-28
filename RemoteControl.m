% Abstraction Hierarchy (Remote Controls)
classdef RemoteControl
    properties
        device  % Bridge to the implementation (Device)
    end
    methods
        function obj = RemoteControl(device)
            obj.device = device;
        end
        function turnOn(obj)
            obj.device.turnOn();
        end
        function turnOff(obj)
            obj.device.turnOff();
        end
    end
end