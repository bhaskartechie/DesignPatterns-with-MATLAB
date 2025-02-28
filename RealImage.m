classdef RealImage < ImageInterface
    properties
        filename
    end
    methods
        function obj = RealImage(filename)
            obj.filename = filename;
            obj.loadImageFromDisk();
        end
        function loadImageFromDisk(obj)
            fprintf("Loading image: %s from disk...\n", obj.filename);
        end
        function displayImage(obj)
            fprintf("Displaying image: %s\n", obj.filename);
        end
    end
end
