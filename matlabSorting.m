classdef matlabSorting
    % This matlab class provides a few handy functions for sorting lists.
    % Joel R. Goodman - 2017
    
    methods (Static)  
        %% Stupid Sort
        function[ sortedVector ] = stupidSortSmallToLarge(vector)
            initialSize = length(vector) ;
            sortedVector = zeros(1,initialSize) ; 
           for i = 1:initialSize
               sortedVector(i) = min(vector) ;
               vector(vector == min(vector)) = [] ;
           end
        end
        
        function[ sortedVector ] = stupidSortLargeToSmall(vector)
            initialSize = length(vector) ;
            sortedVector = zeros(initialSize,1) ; 
           for i = 1:initialSize
               sortedVector(i) = max(vector) ;
               vector(vector == max(vector)) = [] ;
           end
        end
        
        %% Insertion Sort
        function [ vector ] = insertionSortSmallToLarge(vector)
            for n = 1:length(vector)
                key = vector(n) ;
                i = n - 1 ;
                while i > 0 && vector(i) > key
                   vector(i + 1) = vector(i) ;
                   i = i - 1 ;
                end
                vector(i + 1) = key ;
            end
        end
        
        function [ vector ] = insertionSortLargeToSmall(vector)
            for n = 1:length(vector)
                key = vector(n) ;
                i = n - 1 ;
                while i > 0 && vector(i) < key
                   vector(i + 1) = vector(i) ;
                   i = i - 1 ;
                end
                vector(i + 1) = key ;
            end
        end
        
        %% Merge Sort
        % This one is adapted really closely from the MIT Intro to
        % Algorithms book.
        function [sortedVector] = mergeSort(vector)
            if length(vector) > 1
                if mod(length(vector),2) == 0
                    left =  vector(1:length(vector)/2);
                    right = vector((length(vector)/2 + 1):length(vector)) ;
                else
                    left = vector(1:floor(length(vector)/2)) ;
                    right = vector((floor(length(vector)/2) + 1) : length(vector));                
                end
                leftRecursive = matlabSorting.mergeSort(left) ;
                rightRecursive = matlabSorting.mergeSort(right) ;
                sortedVector = matlabSorting.merge(leftRecursive, rightRecursive) ;
            else
                sortedVector = vector;
            end
        end

        function [ mergedVector ] = merge(left, right)
            mergedVector = zeros(1,length(left) + length(right));
            i = 1; j = 1;
            for k=1:(length(left)+length(right))
                if i > length(left)
                    mergedVector(k) = right(j);
                    j = j+1;
                elseif j>length(right)
                    mergedVector(k) = left(i); i = i + 1;
                elseif left(i) <= right(j)
                    mergedVector(k) = left(i); i = i + 1;
                else
                    mergedVector(k) = right(j); j = j + 1;
                end
            end
        end
 %% Bubble Sort
        function [ vector ] = bubbleSort(vector)
            n = length(vector) ;
            while n > 0
                newN = 0 ;
                    for i = 2:(length(vector))
                       if vector(i - 1) > vector(i)
                           vector = matlabSorting.swap(vector, i, i - 1) ;
                           newN = i ;
                       end
                    end
            n = newN ;
            end
        end

        function [ swappedVector ] = swap(vector, index1, index2)
            lowerIndex = min([index1 index2]) ; higherIndex = max([index1 index2]) ;
            swappedVector = [vector(1:(lowerIndex - 1)) vector(higherIndex) vector(lowerIndex+1:(higherIndex - 1)) vector(lowerIndex) vector((higherIndex + 1):length(vector))] ;
        end        
       
        
% END METHODS
    end
end