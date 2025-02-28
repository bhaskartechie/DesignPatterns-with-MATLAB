classdef NameIterator < Iterator
    properties
        names
        index = 1
    end
    methods
        function obj = NameIterator(names)
            obj.names = names;
        end
        function result = hasNext(obj)
            result = obj.index <= length(obj.names);
        end
        function name = next(obj)
            if obj.hasNext()
                name = obj.names{obj.index};
                obj.index = obj.index + 1;
            else
                error("No more elements to iterate.");
            end
        end
    end
end
