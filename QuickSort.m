classdef QuickSort < SortStrategy
    methods
        function sortedArray = sort(~, arr)
            if length(arr) <= 1
                sortedArray = arr;
                return;
            end
            pivot = arr(end);
            left = arr(arr < pivot);
            right = arr(arr > pivot);
            sortedArray = [QuickSort().sort(left), pivot, QuickSort().sort(right)];
        end
    end
end