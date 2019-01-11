local helper = require("helper")

local function partSort(arr, l, r)
    local index = r
    local key = arr[r]
    while l < r do
        while l < r and arr[l] <= key do l = l + 1 end
        while l < r and arr[r] >= key do r = r - 1 end
        helper.swap(arr, l , r)
    end

    helper.swap(arr, r, index)

    return r
end


local function sort(arr, l, r)
    if l >= r then return end

    local pivot = partSort(arr, l, r)
    sort(arr, l, pivot - 1)
    sort(arr, pivot + 1, r)
end

return function(arr)
    sort(arr, 1, #arr)
end