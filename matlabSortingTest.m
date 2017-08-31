%% Sorting Test
% Demonstrating sorting algos written in Matlab
% By Joel Goodman, for the fine people of OSU's College of MIME
profile off
clear, clc, close all

%% Generate an array of 1000 random numbers between 0 and 100
% from https://www.mathworks.com/help/matlab/math/floating-point-numbers-within-specific-range.html
lowVal = 0; hiVal = 100; n = 1000 ;
randomNumbers = (hiVal-lowVal).*rand(1,n) + lowVal;

%% Turn on Profiler, prepare displayArray
profile on -history -timer 'cpu'
profile off
displayArray(1,:) = randomNumbers ; 

%% Stupid Sort
% Small to Large
profile resume
stupidSortSmallToLarge = matlabSorting.stupidSortSmallToLarge(randomNumbers) ;
profile off
%displayArray(2,:) = stupidSortSmallToLarge; disp(displayArray)

%% Insertion Sort
profile resume
insertionSortedSmallToLarge = matlabSorting.insertionSortSmallToLarge(randomNumbers) ;
profile off
%displayArray(2,:) = insertionSortedSmallToLarge ; disp(displayArray)

%% Merge Sort
profile resume
mergeSortedSmallToLarge = matlabSorting.mergeSort(randomNumbers) ;
profile off
%displayArray(2,:) = insertionSortedSmallToLarge ; disp(displayArray)

%% Bubble Sort
profile resume
bubbleSortedSmallToLarge = matlabSorting.bubbleSort(randomNumbers) ;
profile off
%displayArray(2,:) = bubbleSortedSmallToLarge ; disp(displayArray)

%% Display Profile
profile viewer
profile off