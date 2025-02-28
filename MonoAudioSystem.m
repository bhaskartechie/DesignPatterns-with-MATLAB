classdef MonoAudioSystem
    % This legacy system outputs Mono sound.
    
    methods
        function audio = getMonoAudio(obj)
            audio = [0.5, 0.6, 0.4, 0.7]; % Example Mono signal
        end
    end
end