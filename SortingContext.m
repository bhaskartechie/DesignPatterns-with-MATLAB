classdef SortingContext < handle
    properties
        strategy
    end
    methods
        function obj = SortingContext(strategy)
            obj.strategy = strategy;
        end
        function setStrategy(obj, newStrategy)
            obj.strategy = newStrategy;
        end
        function result = executeSort(obj, arr)
            result = obj.strategy.sort(arr);
        end
    end
end
