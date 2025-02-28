classdef WindowsFactory < UIFactory
    methods
        function button = createButton(obj)
            button = WindowsButton();
        end
        
        function checkbox = createCheckbox(obj)
            checkbox = WindowsCheckbox();
        end
    end
end
