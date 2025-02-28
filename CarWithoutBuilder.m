classdef CarWithoutBuilder
    properties
        Engine
        Color
        GPS
        Sunroof
    end
    methods
        function obj = CarWithoutBuilder(engine, color, gps, sunroof)
            obj.Engine = engine;
            obj.Color = color;
            obj.GPS = gps;
            obj.Sunroof = sunroof;
        end
        function showDetails(obj)
            fprintf("Car Details:\n Engine: %s\n Color: %s\n GPS: %s\n Sunroof: %s\n", ...
                obj.Engine, obj.Color, obj.GPS, obj.Sunroof);
        end
    end
end