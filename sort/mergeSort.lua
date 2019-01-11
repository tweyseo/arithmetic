local floor = math.floor

local tmp = {}

local function merge(arr, l, m, r)
    local i, j, k = l, m + 1, 1
    while i <= m and j <= r do
        if (arr[i] < arr[j]) then
            tmp[k] = arr[i]
            i = i + 1
        else
            tmp[k] = arr[j]
            j = j + 1
        end

        k = k + 1
    end

    while i <= m do
        tmp[k] = arr[i]
        k = k + 1
        i = i + 1
    end

    while j <= r do
        tmp[k] = arr[j]
        k = k + 1
        j = j + 1
    end

    k = 1
    while l <= r do
        arr[l] = tmp[k]
        l = l + 1
        k = k + 1
    end
end

local function sort(arr, l, r)
    if l >= r then return end

    local m = floor((l + r) / 2)
    sort(arr, l, m)
    sort(arr, m + 1, r)
    merge(arr, l, m, r)
end

return function(arr)
    sort(arr, 1, #arr)
end