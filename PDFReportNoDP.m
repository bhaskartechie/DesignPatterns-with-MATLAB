classdef PDFReportNoDP
    methods
        function generateReport(obj)
            obj.loadData();
            obj.processData();
            obj.formatReport();
            obj.exportToPDF();
        end
        function loadData(~)
            disp("Loading data...");
        end
        function processData(~)
            disp("Processing data...");
        end
        function formatReport(~)
            disp("Formatting as PDF...");
        end
        function exportToPDF(~)
            disp("Exporting as PDF...");
        end
    end
end

