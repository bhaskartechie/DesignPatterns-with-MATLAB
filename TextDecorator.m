classdef TextDecorator < TextComponent
    properties
        component % Wrapped component (e.g., PlainText)
    end
    methods
        function obj = TextDecorator(component)
            obj.component = component;
        end
        function displayText(obj)
            obj.component.displayText(); % Delegate the call
        end
        function textValue = getText(obj)
            textValue = obj.component.getText(); % Properly get text from wrapped component
        end
    end
end
