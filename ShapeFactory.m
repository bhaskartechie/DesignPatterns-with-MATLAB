classdef ShapeFactory
    methods(Static)
        function shape = createShape(shapeType)
            switch shapeType
                case 'circle'
                    shape = Circle();
                case 'square'
                    shape = Square();
                case 'triangle'
                    shape = Triangle();
                otherwise
                    error('Unknown shape type');
            end
        end
    end
end


