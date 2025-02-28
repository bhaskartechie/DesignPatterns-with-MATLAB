classdef Sorting
    methods(Static)
        function sortedArray = sort(arr, method)
            if strcmp(method, 'bubble')
                sortedArray = Sorting.bubbleSort(arr);
            elseif strcmp(method, 'quick')
                sortedArray = Sorting.quickSort(arr);
            else
                error("Unsupported sorting method!");
            end
        end
        function arr = bubbleSort(arr)
            n = length(arr);
            for i = 1:n-1
                for j = 1:n-i
                    if arr(j) > arr(j+1)
                        temp = arr(j);
                        arr(j) = arr(j+1);
                        arr(j+1) = temp;
                    end
                end
            end
        end
        function arr = quickSort(arr)
            if length(arr) <= 1
                return;
            end
            pivot = arr(end);
            left = arr(arr < pivot);
            right = arr(arr > pivot);
            arr = [Sorting.quickSort(left), pivot, Sorting.quickSort(right)];
        end
    end
end