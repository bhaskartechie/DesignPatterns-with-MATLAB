classdef (Abstract) SupportHandler
    properties
        nextHandler
    end
    methods
        function obj = setNext(obj, nextHandler)
            obj.nextHandler = nextHandler;
        end
        function handleRequest(obj, requestType)
            if ~isempty(obj.nextHandler)
                obj.nextHandler.handleRequest(requestType);
            else
                fprintf("No handler found for request: %s\n", requestType);
            end
        end
    end
end
