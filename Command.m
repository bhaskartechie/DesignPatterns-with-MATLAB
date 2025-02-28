classdef (Abstract) Command
    methods(Abstract)
        execute(obj)
        undo(obj)
    end
end