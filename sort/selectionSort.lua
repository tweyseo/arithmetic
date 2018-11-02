local helper = require("helper")

return function(arr)
    local len, min = #arr
    for i = 1, len do
        min = i
        for j = i + 1, len do
            if arr[j] < arr[min] then min = j end
        end
        helper.swap(arr, i, min)
    end
end