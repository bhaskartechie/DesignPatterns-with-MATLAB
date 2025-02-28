classdef MacFactory < UIFactory
    methods
        function button = createButton(obj)
            button = MacButton();
        end
        
        function checkbox = createCheckbox(obj)
            checkbox = MacCheckbox();
        end
    end
end
