classdef ItalicText < TextDecorator
    methods
        function obj = ItalicText(component)
            obj@TextDecorator(component);
        end
        function displayText(obj)
            disp(['//' obj.getText() '//']); % Simulating italics
        end
    end
end