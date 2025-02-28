classdef (Abstract) ReportTemplate < handle
    methods
        function generateReport(obj)
            obj.loadData();
            obj.processData();
            obj.formatReport();
            obj.exportReport();
        end
    end
    methods (Abstract)
        formatReport(obj)
        exportReport(obj)
    end
    methods (Access = protected)
        function loadData(~)
            disp("Loading data...");
        end
        function processData(~)
            disp("Processing data...");
        end
    end
end
