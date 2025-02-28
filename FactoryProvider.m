classdef FactoryProvider
    methods (Static)
        function factory = getFactory(osType)
            switch osType
                case "Windows"
                    factory = WindowsFactory();
                case "Mac"
                    factory = MacFactory();
                otherwise
                    error("Unsupported OS: %s", osType);
            end
        end
    end
end
