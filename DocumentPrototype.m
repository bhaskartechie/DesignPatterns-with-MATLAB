classdef DocumentPrototype < handle
    properties
        Content
        Metadata
    end
    methods
        function obj = DocumentPrototype(content, metadata)
            obj.Content = content;
            obj.Metadata = metadata;
        end
        
        function clonedObj = clone(obj)
            % Create a deep copy of the metadata struct
            newMetadata = struct("Author", obj.Metadata.Author, "Version", obj.Metadata.Version);
            clonedObj = DocumentPrototype(obj.Content, newMetadata);
        end
    end
end