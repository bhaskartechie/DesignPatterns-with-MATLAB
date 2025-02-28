classdef Radio < Device
    methods
        function turnOn(obj)
            disp('Radio is ON');
        end
        function turnOff(obj)
            disp('Radio is OFF');
        end
    end
end