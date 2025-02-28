classdef TV < Device
    methods
        function turnOn(obj)
            disp('TV is ON');
        end
        function turnOff(obj)
            disp('TV is OFF');
        end
    end
end