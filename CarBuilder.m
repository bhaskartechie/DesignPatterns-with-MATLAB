% 🏗️ Car Builder Interface (Abstract)
classdef (Abstract) CarBuilder < handle
    methods (Abstract)
        setEngine(obj, engine)
        setColor(obj, color)
        setGPS(obj, gps)
        setSunroof(obj, sunroof)
        build(obj)
    end
end