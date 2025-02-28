% Implementation Hierarchy (Devices)
classdef (Abstract) Device
    methods (Abstract)
        turnOn(obj);
        turnOff(obj);
    end
end