classdef NameCollectionUsingIter
    properties
        names
    end
    methods
        function obj = NameCollectionUsingIter()
            obj.names = {"Alice", "Bob", "Charlie", "David"};
        end
        function iterator = getIterator(obj)
            iterator = NameIterator(obj.names);
        end
    end
end
