classdef UnderlineText < TextDecorator
    methods
        function obj = UnderlineText(component)
            obj@TextDecorator(component);
        end
        function displayText(obj)
            disp(['__' obj.getText() '__']); % Simulating underlining
        end
    end
end