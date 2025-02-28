classdef ExcelReportNoDp
    methods
        function generateReport(obj)
            obj.loadData();
            obj.processData();
            obj.formatReport();
            obj.exportToExcel();
        end
        function loadData(~)
            disp("Loading data...");
        end
        function processData(~)
            disp("Processing data...");
        end
        function formatReport(~)
            disp("Formatting as Excel...");
        end
        function exportToExcel(~)
            disp("Exporting as Excel...");
        end
    end
end
