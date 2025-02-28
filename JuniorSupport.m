classdef JuniorSupport < SupportHandler
    methods
        function handleRequest(obj, requestType)
            if strcmp(requestType, "Low")
                fprintf("Junior Support handled the request.\n");
            else
                handleRequest@SupportHandler(obj, requestType); % Pass to next handler
            end
        end
    end
end