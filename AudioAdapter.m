classdef AudioAdapter
    % Adapter class that converts Mono audio to Stereo
    
    properties
        monoSystem % Instance of MonoAudioSystem
    end
    
    methods
        function obj = AudioAdapter(monoSystem)
            obj.monoSystem = monoSystem;
        end
        
        function stereoAudio = getStereoAudio(obj)
            monoAudio = obj.monoSystem.getMonoAudio();
            stereoAudio = [monoAudio; monoAudio]; % Convert to Stereo (Duplicate Mono to two channels)
        end
    end
end
