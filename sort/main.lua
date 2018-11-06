local function printTable(t)
    for k, v in ipairs(t) do
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
local arr = {2,0,1,8,1,1,0,2}

bubbleSort(arr)

printTable(arr)

-------------

local insertionSort = require("insertionSort")
local arr = {2,0,1,8,1,1,0,2}

insertionSort(arr)

printTable(arr)

-------------

local shellSort = require("shellSort")
local arr = {2,0,1,8,1,1,0,2}

shellSort(arr)

printTable(arr)

-------------

local heapSort = require("heapSort")
local arr = {2,0,1,8,1,1,0,6}

heapSort(arr)

printTable(arr)

-------------

local mergeSort = require("mergeSort")
local arr = {2,0,1,8,1,1,0,6}

mergeSort(arr)

printTable(arr)

-------------

local quickSort = require("quickSort")
local arr = {2,0,1,8,1,1,0,6}

quickSort(arr)

printTable(arr)

