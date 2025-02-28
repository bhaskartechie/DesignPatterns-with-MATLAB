classdef DVDPlayer
    methods
        function turnOn(~)
            disp("DVD Player is turned ON.");
        end
        function turnOff(~)
            disp("DVD Player is turned OFF.");
        end
        function playMovie(~, movie)
            disp(['Playing movie: ', movie]);
        end
    end
end