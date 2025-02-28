classdef Logger < handle
    properties (Access = private)
        logFile
    end
    
    methods (Access = private)
        function obj = Logger()
            obj.logFile = "app.log";  % Log file name
            fid = fopen(obj.logFile, 'a'); % Open file in append mode
            if fid == -1
                error('Could not open log file.');
            end
            fprintf(fid, "Logger initialized at %s\n", datestr(now));
            fclose(fid);
        end
    end
    
    methods (Static)
        function instance = getInstance()
            persistent uniqueInstance;
            if isempty(uniqueInstance)
                uniqueInstance = Logger();
            end
            instance = uniqueInstance;
        end
    end
    
    methods
        function log(obj, message)
            fid = fopen(obj.logFile, 'a'); % Open file in append mode
            if fid == -1
                error('Could not open log file.');
            end
            fprintf(fid, "[%s] %s\n", datestr(now, "yyyy-mm-dd HH:MM:SS"), message);
            fclose(fid);
        end
    end
end
