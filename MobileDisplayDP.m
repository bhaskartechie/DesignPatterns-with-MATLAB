classdef MobileDisplayDP < handle
    methods
        function update(~, temperature)
            disp(['📱 Mobile Display: Temperature updated to ', num2str(temperature), '°C']);
        end
    end
end

