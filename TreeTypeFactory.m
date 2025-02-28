% Flyweight Factory (Ensures Only One Instance per Unique Type)
classdef TreeTypeFactory
    properties (Access = private)
        treeTypes = containers.Map % Map to store shared tree types
    end
    methods
        function obj = TreeTypeFactory()
        end
        function treeType = getTreeType(obj, type, color, texture)
            key = sprintf("%s-%s-%s", type, color, texture);
            if ~isKey(obj.treeTypes, key)
                obj.treeTypes(key) = TreeType(type, color, texture);
            end
            treeType = obj.treeTypes(key);
        end
    end
end