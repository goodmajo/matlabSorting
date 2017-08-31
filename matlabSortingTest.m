%% Sorting Test
% Demonstrating sorting algos written in Matlab
% By Joel Goodman, for the fine people of OSU's College of MIME
profile off
clear, clc, close all

%% Generate an array of 1000 random numbers between 0 and 100
% from https://www.mathworks.com/help/matlab/math/floating-point-numbers-within-specific-range.html
lowVal = 0; hiVal = 100; n = 1000 ;
randomNumbers = (hiVal-lowVal).*rand(n,1) + lowVal;

%% Turn on Profiler, prepare displayArray
profile on -history -timer 'cpu'
profile off
displayArray(1,:) = randomNumbers ; 

%% Stupid Sort
% Small to Large
profile resume
stupidSortSmallToLarge = matlabSorting.stupidSortSmallToLarge(randomNumbers) ;
profile off
%displayArray(2,:) = stupidSortSmallToLarge;
%disp(displayArray)

displayArray(2,:) = 0 ;

profile resume
stupidSortLargeToSmall = matlabSorting.stupidSortLargeToSmall(randomNumbers) ;
profile off
%displayArray(2,:) = stupidSortLargeToSmall;
%disp(displayArray)

%% Insertion Sort
profile resume
insertionSortedSmallToLarge = matlabSorting.insertionSortSmallToLarge(randomNumbers) ;
profile off
%displayArray(2,:) = insertionSortedSmallToLarge ;
%disp(displayArray)

profile resume
insertionSorted = matlabSorting.insertionSortLargeToSmall(randomNumbers) ;
profile off
%displayArray(2,:) = insertionSortedLargeToSmall ;
%disp(displayArray)

%% Merge Sort
profile resume
mergeSortedSmallToLarge = matlabSorting.mergeSort(randomNumbers) ;
profile off
%displayArray(2,:) = insertionSortedSmallToLarge ;
%disp(displayArray)


%% Display Profile
profile viewer
profile off