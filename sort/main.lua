local function printTable(t)
    for _, v in ipairs(t) do
        io.write(v.." ")
    end
    io.write("\n")
end

-------------

local selectionSort = require("selectionSort")
local arr = {2,0,1,8,1,1,0,2}

selectionSort(arr)

printTable(arr)

-------------

local bubbleSort = require("bubbleSort")
local arr1 = {2,0,1,8,1,1,0,2}

bubbleSort(arr1)

printTable(arr1)

-------------

local insertionSort = require("insertionSort")
local arr2 = {2,0,1,8,1,1,0,2}

insertionSort(arr2)

printTable(arr2)

-------------

local shellSort = require("shellSort")
local arr3 = {2,0,1,8,1,1,0,2}

shellSort(arr3)

printTable(arr3)

-------------

local heapSort = require("heapSort")
local arr4 = {2,0,1,8,1,1,0,6}

heapSort(arr4)

printTable(arr4)

-------------

local mergeSort = require("mergeSort")
local arr5 = {2,0,1,8,1,1,0,6}

mergeSort(arr5)

printTable(arr5)

-------------

local quickSort = require("quickSort")
local arr6 = {2,0,1,8,1,1,0,6}

quickSort(arr6)

printTable(arr6)

