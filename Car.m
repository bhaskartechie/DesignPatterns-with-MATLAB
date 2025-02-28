% 🚗 Car Class (Product)
classdef Car < handle
    properties
        Engine
        Color
        GPS
        Sunroof
    end
    methods
        function showDetails(obj)
            fprintf("Car Details:\n Engine: %s\n Color: %s\n GPS: %s\n Sunroof: %s\n", ...
                obj.Engine, obj.Color, obj.GPS, obj.Sunroof);
        end
    end
end