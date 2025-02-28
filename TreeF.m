% Context Class (Stores Unique Data)
classdef TreeF
    properties
        treeType % Shared Flyweight Object
        x
        y
    end
    methods
        function obj = TreeF(treeType, x, y)
            obj.treeType = treeType;
            obj.x = x;
            obj.y = y;
        end
        function displayTree(obj)
            obj.treeType.displayType();
            fprintf("Tree Location: (%d, %d)\n", obj.x, obj.y);
        end
    end
end