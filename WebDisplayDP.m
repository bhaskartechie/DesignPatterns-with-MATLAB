
classdef WebDisplayDP < handle
    methods
        function update(~, temperature)
            disp(['💻 Web Display: Temperature updated to ', num2str(temperature), '°C']);
        end
    end
end