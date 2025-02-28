% 🏠 Director (Controls Construction Steps)
classdef CarDirector
    methods (Static)
        function car = constructSportsCar(builder)
            builder.setEngine("V8");
            builder.setColor("Red");
            builder.setGPS("Yes");
            builder.setSunroof("Yes");
            car = builder.build();
        end
        function car = constructEconomyCar(builder)
            builder.setEngine("V4");
            builder.setColor("Blue");
            builder.setGPS("No");
            builder.setSunroof("No");
            car = builder.build();
        end
    end
end