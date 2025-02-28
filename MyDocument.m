classdef MyDocument < handle
    properties
        Content
        Metadata
    end
    methods
        function obj = MyDocument(content, metadata)
            obj.Content = content;
            obj.Metadata = metadata; % Metadata is a reference to an object
        end
    end
end