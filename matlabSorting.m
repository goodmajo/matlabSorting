classdef matlabSorting
    % This matlab class provides a few handy functions for sorting lists.
    % Joel R. Goodman - 2017
    
    methods (Static)  
        %% Stupid Sort
        function[ sortedVector ] = stupidSortSmallToLarge(vector)
            initialSize = length(vector) ;
            sortedVector = zeros(initialSize,1) ; 
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
        
    end
    
end