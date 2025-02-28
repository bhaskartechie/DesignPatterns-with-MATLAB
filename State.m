classdef (Abstract) State < handle
    methods(Abstract)
        insertCoin(obj, machine)
        selectItem(obj, machine)
    end
end
