classdef LoggerWithoutSingleton
    methods
        function log(~, message)
            fprintf("Log Entry: %s\n", message);
        end
    end
end