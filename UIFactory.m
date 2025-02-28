classdef (Abstract) UIFactory
    methods (Abstract)
        createButton(obj);
        createCheckbox(obj);
    end
end