classdef ProxyImageWithCache < ImageInterface
    properties
        filename
    end
    methods
        function obj = ProxyImageWithCache(filename)
            obj.filename = filename;
        end
        function displayImage(obj)
            persistent imageCache
            if isempty(imageCache)
                imageCache = containers.Map; % Initialize cache
            end

            % Check if image is already loaded
            if isKey(imageCache, obj.filename)
                fprintf("Using cached image: %s\n", obj.filename);
            else
                fprintf("Loading image: %s from disk...\n", obj.filename);
                imageCache(obj.filename) = RealImage(obj.filename);
            end

            % Display image
            % imageCache(obj.filename).displayImage();
        end
    end
end
