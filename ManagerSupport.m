classdef ManagerSupport < SupportHandler
    methods
        function handleRequest(obj, requestType)
            if strcmp(requestType, "High")
                fprintf("Manager handled the request.\n");
            else
                handleRequest@SupportHandler(obj, requestType);
            end
        end
    end
end