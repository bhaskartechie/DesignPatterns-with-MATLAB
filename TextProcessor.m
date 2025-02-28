classdef TextProcessor
    properties
        text
    end
    methods
        function obj = TextProcessor(text)
            obj.text = text;
        end
        function print(obj)
            disp(obj.text);
        end
    end
end