% 🔨 Concrete Car Builder
classdef ConcreteCarBuilder < CarBuilder
    properties
        car
    end
    methods
        function obj = ConcreteCarBuilder()
            obj.car = Car();  % New Car object
        end
        function setEngine(obj, engine)
            obj.car.Engine = engine;
        end
        function setColor(obj, color)
            obj.car.Color = color;
        end
        function setGPS(obj, gps)
            obj.car.GPS = gps;
        end
        function setSunroof(obj, sunroof)
            obj.car.Sunroof = sunroof;
        end
        function car = build(obj)
            car = obj.car;
        end
    end
end