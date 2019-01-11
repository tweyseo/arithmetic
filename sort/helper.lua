local helper = {}

function helper.swap(arr, a, b)
    if a == b then return end

    local tmp = arr[a]
    arr[a] = arr[b]
    arr[b] = tmp
end

return helper

