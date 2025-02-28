classdef HomeTheaterFacade
    properties (Access = private)
        amp
        dvd
        proj
        lights
    end
    methods
        function obj = HomeTheaterFacade()
            obj.amp = Amplifier();
            obj.dvd = DVDPlayer();
            obj.proj = Projector();
            obj.lights = Lights();
        end

        function watchMovie(obj, movie)
            disp("Starting Home Theater...");
            obj.amp.turnOn();
            obj.dvd.turnOn();
            obj.proj.turnOn();
            obj.lights.dimLights();
            obj.dvd.playMovie(movie);
        end

        function endMovie(obj)
            disp("Shutting down Home Theater...");
            obj.dvd.turnOff();
            obj.proj.turnOff();
            obj.amp.turnOff();
            obj.lights.brightenLights();
        end
    end
end
