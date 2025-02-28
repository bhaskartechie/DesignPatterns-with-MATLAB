classdef HasMoneyState < State
    methods
        function insertCoin(~, ~)
            fprintf("Coin already inserted!\n");
        end
        function selectItem(~, machine)
            fprintf("Dispensing item...\n");
            machine.setState(IdleState()); % Return to Idle state
        end
    end
end