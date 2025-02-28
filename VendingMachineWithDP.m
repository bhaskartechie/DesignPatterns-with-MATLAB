classdef VendingMachineWithDP < handle
    properties
        state
    end
    methods
        function obj = VendingMachineWithDP()
            obj.state = IdleState(); % Initial state
        end
        function setState(obj, newState)
            obj.state = newState;
        end
        function insertCoin(obj)
            obj.state.insertCoin(obj);
        end
        function selectItem(obj)
            obj.state.selectItem(obj);
        end
    end
end
