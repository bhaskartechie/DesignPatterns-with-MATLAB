classdef PlainText < TextComponent
    properties
        text
    end
    methods
        function obj = PlainText(text)
            obj.text = text;
        end
        function displayText(obj)
            disp(obj.text);
        end
        function textValue = getText(obj)
            textValue = obj.text;
        end
    end
end
