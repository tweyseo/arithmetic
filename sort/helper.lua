local ipairs = ipairs

local helper = {}

function helper.swap(arr, a, b)
    local tmp = arr[a]
    arr[a] = arr[b]
    arr[b] = tmp
end

return helper

