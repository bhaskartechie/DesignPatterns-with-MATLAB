classdef WeatherStation < handle
    properties(Access = private)
        temperature
        observers % List of registered observers
    end
    methods
        function obj = WeatherStation()
            obj.temperature = 0;
            obj.observers = {};
        end
        
        function addObserver(obj, observer)
            obj.observers{end+1} = observer;
        end
        
        function removeObserver(obj, observer)
            obj.observers(cellfun(@(x) isequal(x, observer), obj.observers)) = [];
        end
        
        function setTemperature(obj, newTemp)
            obj.temperature = newTemp;
            obj.notifyObservers();
        end
        
        function notifyObservers(obj)
            for i = 1:length(obj.observers)
                obj.observers{i}.update(obj.temperature);
            end
        end
    end
end
