classdef BoldText < TextDecorator
    methods
        function obj = BoldText(component)
            obj@TextDecorator(component);
        end
        function displayText(obj)
            disp(['**' obj.getText() '**']); % Simulating bold
        end
    end
end