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

% %% Stupid Sort
profile resume
stupidSorted = matlabSorting.stupidSortSmallToLarge(randomNumbers) ;
profile off

%% Insertion Sort
profile resume
insertionSorted = matlabSorting.insertionSortSmallToLarge(randomNumbers) ;
profile off

%% Merge Sort
profile resume
mergeSorted = matlabSorting.mergeSort(randomNumbers) ;
profile off

%% Bubble Sort
profile resume
bubbleSorted = matlabSorting.bubbleSort(randomNumbers) ;
profile off

%% Quick Sort
profile resume
quickSorted = matlabSorting.quickSort(randomNumbers) ;
profile off

%% Display Profile
profile viewer
profile off