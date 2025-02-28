classdef (Abstract) Iterator < handle
    methods(Abstract)
        hasNext(obj)
        next(obj)
    end
end
