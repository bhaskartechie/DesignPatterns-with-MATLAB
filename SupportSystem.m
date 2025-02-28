classdef SupportSystem
    methods(Static)
        function handleRequest(requestType)
            if strcmp(requestType, "Low")
                fprintf("Handled by Junior Support.\n");
            elseif strcmp(requestType, "Medium")
                fprintf("Handled by Senior Support.\n");
            elseif strcmp(requestType, "High")
                fprintf("Handled by Manager.\n");
            else
                fprintf("No handler available for this request.\n");
            end
        end
    end
end