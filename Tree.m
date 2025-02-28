classdef Tree
    properties
        type
        color
        texture
        x
        y
    end
    methods
        function obj = Tree(type, color, texture, x, y)
            obj.type = type;
            obj.color = color;
            obj.texture = texture;
            obj.x = x;
            obj.y = y;
        end
        function displayTree(obj)
            fprintf("Tree Type: %s, Color: %s, Texture: %s, Location: (%d, %d)\n", ...
                obj.type, obj.color, obj.texture, obj.x, obj.y);
        end
    end
end