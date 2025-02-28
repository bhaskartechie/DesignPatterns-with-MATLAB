classdef ProxyImage < ImageInterface
    properties
        filename
        realImage
    end
    methods
        function obj = ProxyImage(filename)
            obj.filename = filename;
            obj.realImage = []; % Not loaded initially
        end
        function displayImage(obj)
            if isempty(obj.realImage)
                obj.realImage = RealImage(obj.filename);
            end
            obj.realImage.displayImage();
        end
    end
end
