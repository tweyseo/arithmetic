local helper = require("helper")
local floor = math.floor

local function adjust(arr, len, k)
    local l = 2 * k
    if l > len then return end

    local r = l + 1
    local bigger = (r > len and l or (arr[l] >= arr[r] and l or r))
    if arr[bigger] > arr[k] then
        helper.swap(arr, bigger, k)
        adjust(arr, len, bigger == l and l or r)
    end
end

return function(arr)
    for i = floor((#arr - 2) / 2) + 1, 1, -1 do
        adjust(arr, #arr, i)
    end

    for i = #arr, 1, -1 do
        helper.swap(arr, 1, i)
        adjust(arr, i - 1, 1)
    end
end