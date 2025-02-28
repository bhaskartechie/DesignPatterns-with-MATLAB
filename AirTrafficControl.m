classdef (Abstract) AirTrafficControl < handle
    methods(Abstract)
        sendMessage(obj, sender, message)
    end
end
