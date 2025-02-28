classdef IdleState < State
    methods
        function insertCoin(~, machine)
            fprintf("Coin inserted, select item.\n");
            machine.setState(HasMoneyState()); % Change to HasMoney state
        end
        function selectItem(~, ~)
            fprintf("Insert coin first!\n");
        end
    end
end