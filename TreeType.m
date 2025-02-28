% Flyweight Class (Shared TreeType)
classdef TreeType
    properties
        type
        color
        texture
    end
    methods
        function obj = TreeType(type, color, texture)
            obj.type = type;
            obj.color = color;
            obj.texture = texture;
        end
        function displayType(obj)
            fprintf("Tree Type: %s, Color: %s, Texture: %s\n", obj.type, obj.color, obj.texture);
        end
    end
end