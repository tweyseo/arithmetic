local helper = require("helper")

return function(arr)
    local l1, l2, f = #arr, #arr
    for _ = 1, l1 do
        f = true
        for j = 2, l2 do
            if (arr[j - 1] > arr[j]) then
                helper.swap(arr, j - 1, j)
                f = false
            end
        end

        if f then
            return
        end

        l2 = l2 - 1
    end
end