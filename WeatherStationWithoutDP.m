classdef WeatherStationWithoutDP
    properties
        temperature
        mobileDisplay
        webDisplay
    end
    methods
        function obj = WeatherStationWithoutDP()
            obj.temperature = 0;
            obj.mobileDisplay = MobileDisplay();
            obj.webDisplay = WebDisplay();
        end
        
        function setTemperature(obj, newTemp)
            obj.temperature = newTemp;
            obj.notifyDisplays();
        end
        
        function notifyDisplays(obj)
            obj.mobileDisplay.update(obj.temperature);
            obj.webDisplay.update(obj.temperature);
        end
    end
end
