classdef RemoteControlCommand
    properties
        command
    end
    methods
        function obj = setCommand(obj, command)
            obj.command = command;
        end
        function pressButton(obj)
            obj.command.execute();
        end
        function pressUndo(obj)
            obj.command.undo();
        end
    end
end