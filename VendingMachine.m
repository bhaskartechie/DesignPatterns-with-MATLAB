classdef VendingMachine
    properties
        state
        hasMoney
    end
    methods
        function obj = VendingMachine()
            obj.state = "Idle"; % Initial state
            obj.hasMoney = false;
        end
        function insertCoin(obj)
            if obj.hasMoney
                fprintf("Coin already inserted!\n");
            else
                obj.hasMoney = true;
                obj.state = "HasMoney";
                fprintf("Coin inserted, select item.\n");
            end
        end
        function selectItem(obj)
            if strcmp(obj.state, "HasMoney")
                obj.state = "Dispensing";
                obj.hasMoney = false;
                fprintf("Dispensing item...\n");
                obj.state = "Idle";
            else
                fprintf("Insert coin first!\n");
            end
        end
    end
end
