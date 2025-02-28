classdef SeniorSupport < SupportHandler
    methods
        function handleRequest(obj, requestType)
            if strcmp(requestType, "Medium")
                fprintf("Senior Support handled the request.\n");
            else
                handleRequest@SupportHandler(obj, requestType);
            end
        end
    end
end