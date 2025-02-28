classdef (Abstract) SortStrategy < handle
    methods(Abstract)
        sort(obj, arr)
    end
end
