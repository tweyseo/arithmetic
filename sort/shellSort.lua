local helper = require("helper")

local function groupSort(arr, i, gap)
    for j = i + gap, #arr, gap do
        while j > gap and arr[j - gap] > arr[j] do
            helper.swap(arr, j - gap, j)
            j = j - gap
        end
    end
end

return function(arr)
    local gap = #arr / 2
    while gap > 0 do
        for i = 1, gap do
            groupSort(arr, i, gap)
        end
        gap = gap / 2
    end
end